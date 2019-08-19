#include <thread>
#include <chrono>
#include "common.hpp"

static bool fifo_600mode;
static thread measure_thread;
static thread write_thread;
static thread read_thread;
static const int BUFFER_LEN = 32*1024;
static unsigned int check=0;

static char hex_val[16] = { '0', '1', '2', '3', '4', '5','6','7','8','9','A','B', 'C', 'D', 'E', 'F'};

unsigned long long dec2bin(unsigned int c)
{
   int i = 0;
   unsigned long long bin=0;
   for(i = 7; i >= 0; i--){
     if((c & (1 << i)) != 0){
       bin=bin*10 + 1;
     }else{
       bin=bin*10;
     } 
   }
   return bin;
}

static void write_test(FT_HANDLE handle)
{
	unique_ptr<uint8_t[]> buf(new uint8_t[BUFFER_LEN]);

	while (!do_exit) {
		for (uint8_t channel = 0; channel < out_ch_cnt; channel++) {
			ULONG count = 0;
			if (FT_OK != FT_WritePipeEx(handle, channel,
						buf.get(), BUFFER_LEN, &count, 1000)) {
				do_exit = true;
				break;
			}
			tx_count += count;
		}
	}
	printf("Write stopped\r\n");
}

static void read_test(FT_HANDLE handle)
{
	unsigned int buffer_value;
	unique_ptr<uint8_t[]> buf(new uint8_t[BUFFER_LEN]);

	while (!do_exit) {
		for (uint8_t channel = 0; channel < in_ch_cnt; channel++) {
			ULONG count = 0;
			if (FT_OK != FT_ReadPipeEx(handle, channel,
						buf.get(), BUFFER_LEN, &count, 1000)) {
				do_exit = true;
				break;
			}
			// Addition, comment for viewing data rates
			else 
			{	
			 	for (int k=0; k< BUFFER_LEN; k=k+4) {
			 		buffer_value = (unsigned int)buf[k+3]+(unsigned int)buf[k+2]*256+(unsigned int)buf[k+1]*65536+(unsigned int)buf[k]*16777216;
			//  	 	if((check+1) != buffer_value)
			// 		{    printf("Error at %u ie %llu %llu %llu %llu \n", check, dec2bin(buf[k]), dec2bin(buf[k+1]), dec2bin(buf[k+2]), dec2bin(buf[k+3]));
			// 			//for( int y =0; y< BUFFER_LEN ; y=y+4)printf("%llu %llu %llu %llu     ", dec2bin(buf[y]), dec2bin(buf[y+1]), dec2bin(buf[y+2]), dec2bin(buf[y+3]));
			// }
			 		if((check + 1)!= buffer_value && buffer_value != 0)printf("Buffer Value : ie %u %u %c%c%c%c%c%c%c%c \n", check, buffer_value, hex_val[buf[k]/16], hex_val[buf[k]%16], hex_val[buf[k+1]/16], hex_val[buf[k+1]%16], hex_val[buf[k+2]/16], hex_val[buf[k+2]%16], hex_val[buf[k+3]/16], hex_val[buf[k+3]%16]);
			 		//
			 		//if(((buf[k+3] - buf[k+2]) != 68) && ((buf[k+2] - buf[k+3]) != 1880))
			 		 check = buffer_value;
			 	}
			 }
			//Addition
			rx_count += count;
		}
	}
	printf("Read stopped\r\n");
}

static void show_help(const char *bin)
{
	printf("Usage: %s <out channel count> <in channel count> [mode]\r\n", bin);
	printf("  channel count: [0, 1] for 245 mode, [0-4] for 600 mode\r\n");
	printf("  mode: 0 = FT245 mode (default), 1 = FT600 mode\r\n");
}

static void get_queue_status(HANDLE handle)
{
	for (uint8_t channel = 0; channel < out_ch_cnt; channel++) {
		DWORD dwBufferred;

		if (FT_OK != FT_GetUnsentBuffer(handle, channel,
					NULL, &dwBufferred)) {
			printf("Failed to get unsent buffer size\r\n");
			continue;
		}
		unique_ptr<uint8_t[]> p(new uint8_t[dwBufferred]);

		printf("CH%d OUT unsent buffer size in queue:%u\r\n",
				channel, dwBufferred);
		if (FT_OK != FT_GetUnsentBuffer(handle, channel,
					p.get(), &dwBufferred)) {
			printf("Failed to read unsent buffer size\r\n");
			continue;
		}
	}

	for (uint8_t channel = 0; channel < in_ch_cnt; channel++) {
		DWORD dwBufferred;

		if (FT_OK != FT_GetReadQueueStatus(handle, channel, &dwBufferred))
			continue;
		printf("CH%d IN unread buffer size in queue:%u\r\n",
				channel, dwBufferred);
	}
}

static bool validate_arguments(int argc, char *argv[])
{
	if (argc != 3 && argc != 4)
		return false;

	if (argc == 4) {
		int val = atoi(argv[3]);
		if (val != 0 && val != 1)
			return false;
		fifo_600mode = (bool)val;
	}

	out_ch_cnt = atoi(argv[1]);
	in_ch_cnt = atoi(argv[2]);

	if ((in_ch_cnt == 0 && out_ch_cnt == 0) ||
			in_ch_cnt > 4 || out_ch_cnt > 4) {
		show_help(argv[0]);
		return false;
	}
	return true;
}

int main(int argc, char *argv[])
{

	get_version();

	if (!validate_arguments(argc, argv)) {
		show_help(argv[0]);
		return 1;
	}

	if (!get_device_lists(500))
		return 1;

	if (!set_channel_config(fifo_600mode, CONFIGURATION_FIFO_CLK_100))
		return 1;

	/* Must be called before FT_Create is called */
	turn_off_thread_safe();

	FT_HANDLE handle = NULL;

	FT_Create(0, FT_OPEN_BY_INDEX, &handle);
	if (!handle) {
		printf("Failed to create device\r\n");
		return -1;
	}
	if (out_ch_cnt)
		write_thread = thread(write_test, handle);
	if (in_ch_cnt)
		read_thread = thread(read_test, handle);
	measure_thread = thread(show_throughput, handle);
	register_signals();

	if (write_thread.joinable())
		write_thread.join();
	if (read_thread.joinable())
		read_thread.join();
	if (measure_thread.joinable())
		measure_thread.join();
	get_queue_status(handle);
	return 0;
}
