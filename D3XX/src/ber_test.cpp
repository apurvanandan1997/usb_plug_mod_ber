#include <thread>
#include <chrono>
#include "common.hpp"

static bool fifo_600mode;
static thread read_thread;
static thread measure_thread;
static unsigned int buffer_value;
static const int BUFFER_LEN = 32 * 1024;
static unique_ptr<uint8_t[]> buf(new uint8_t[BUFFER_LEN]);
static char hex_val[16] ={'0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

unsigned long long dec2bin(unsigned int c){
    
    int i = 0;
    unsigned long long bin = 0;
    
    for (i = 7; i >= 0; i--){
        if ((c & (1 << i)) != 0){
            bin = bin * 10 + 1;
        }
        else{
            bin = bin * 10;
        }
    }
    return bin;
}

static void read_test(FT_HANDLE handle){

    while (!do_exit){
        for (uint8_t channel = 0; channel < in_ch_cnt; channel++){
            ULONG count = 0;

            if (FT_OK != FT_ReadPipeEx(handle, channel, buf.get(), BUFFER_LEN, &count, 1000)){
                do_exit = true;
                break;
            }
            else{
                for (int k = 0; k < BUFFER_LEN; k = k + 4){
                    buffer_value = (unsigned int)buf[k+3] +
                                   (unsigned int)buf[k+2] * 256 +
                                   (unsigned int)buf[k+1] * 65536 +
                                   (unsigned int)buf[k] * 16777216;
                    // cout << "\r" << "Bit Error Rate: " << buffer_value/ 42949672960.0
                    // << " (" << hex_val[buf[k]/16] << hex_val[buf[k]%16] <<
                    // hex_val[buf[k+1]/16] << hex_val[buf[k+1]%16] <<
                    // hex_val[buf[k+2]/16] << hex_val[buf[k+2]%16] <<
                    // hex_val[buf[k+3]/16] << hex_val[buf[k+3]%16] << "/9FFFFFFFF) ";
                }
            }
            rx_count += count;
        }
    }
    printf("Read stopped\r\n");
}

static void show_throughput(FT_HANDLE handle){

    auto next = chrono::steady_clock::now() + chrono::seconds(1);;
    (void)handle;

    while (!do_exit){
        this_thread::sleep_until(next);
        next += chrono::seconds(1);
        int rx = rx_count.exchange(0);
        cout << "\r" << "Bit Error Rate: " << buffer_value/2684354560.0 << " ("
             << hex_val[buf[0]/16] << hex_val[buf[0]%16] << hex_val[buf[1]/16]
             << hex_val[buf[1]%16] << hex_val[buf[2]/16] << hex_val[buf[2]%16]
             << hex_val[buf[3]/16] << hex_val[buf[3]%16] << "/9FFFFFD8) | Throughput: " 
             << (float)(rx/100000000.0) << " Gbps                        ";
    }
}

static void get_queue_status(HANDLE handle){

    for (uint8_t channel = 0; channel < out_ch_cnt; channel++){
        DWORD dwBufferred;

        if (FT_OK != FT_GetUnsentBuffer(handle, channel, NULL, &dwBufferred)){
            printf("Failed to get unsent buffer size\r\n");
            continue;
        }
        unique_ptr<uint8_t[]> p(new uint8_t[dwBufferred]);

        printf("CH%d OUT unsent buffer size in queue:%u\r\n", channel, dwBufferred);
        if (FT_OK != FT_GetUnsentBuffer(handle, channel, p.get(), &dwBufferred)){
            printf("Failed to read unsent buffer size\r\n");
            continue;
        }
    }

    for (uint8_t channel = 0; channel < in_ch_cnt; channel++){
        DWORD dwBufferred;

        if (FT_OK != FT_GetReadQueueStatus(handle, channel, &dwBufferred)) continue;
        printf("CH%d IN unread buffer size in queue:%u\r\n", channel, dwBufferred);
    }
}

int main(){

    get_version();

    fifo_600mode = (bool)0;
    out_ch_cnt = 0;
    in_ch_cnt = 1;

    if (!get_device_lists(500)) return 1;
    if (!set_channel_config(fifo_600mode, CONFIGURATION_FIFO_CLK_100)) return 1;

    /* Must be called before FT_Create is called */
    turn_off_thread_safe();

    FT_HANDLE handle = NULL;
    FT_Create(0, FT_OPEN_BY_INDEX, &handle);
    if (!handle){
        printf("Failed to create device\r\n");
        return -1;
    }
    
    read_thread = thread(read_test, handle);
    measure_thread = thread(show_throughput, handle);
    register_signals();
    printf("Bit Error Rate and Throughput Testing!\n");

    if (read_thread.joinable()) read_thread.join();
    if (measure_thread.joinable()) measure_thread.join();
    get_queue_status(handle);
    
    return 0;
}
