#include <string.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "ftd3xx.h"

#define FIFO_CHANNEL_1	0
#define FIFO_CHANNEL_2	1
#define FIFO_CHANNEL_3	2
#define FIFO_CHANNEL_4	3

void dec2bin(unsigned int);
//static unsigned int check = 0;

static void show_help(const char *bin)
{
	printf("Usage: %s <write length> <read length>\r\n", bin);
	printf("  Only FT245 mode is supported in this demo\r\n");
}

int main(int argc, char *argv[])
{
	FT_HANDLE handle = NULL;

	if (argc != 3) {
		show_help(argv[0]);
		return false;
	}
	uint32_t to_write = atoi(argv[1]);
	uint32_t to_read = atoi(argv[2]);

	FT_Create(0, FT_OPEN_BY_INDEX, &handle);

	if (!handle) {
		printf("Failed to create device\r\n");
		return -1;
	}
	printf("Device created\r\n");

	uint8_t *out_buf = (uint8_t *)malloc(to_write);
	uint8_t *in_buf = (uint8_t *)malloc(to_read);
	DWORD count;

	if (FT_OK != FT_WritePipeEx(handle, FIFO_CHANNEL_1, out_buf, to_write,
				&count, 0xFFFFFFFF)) {
		printf("Failed to write\r\n");
		goto _Exit;
	}
	printf("Wrote %d bytes\r\n", count);

	if (FT_OK != FT_ReadPipeEx(handle, FIFO_CHANNEL_1, in_buf, to_read,
				&count, 0xFFFFFFFF)) {
		printf("Failed to read\r\n");
		goto _Exit;
	}
	// else 
	// 		 {	unsigned int buffer_value;
	// 		 	for (unsignedint k=0; k< (to_read/32); k=k+4) {
	// 		 	 	buffer_value = (unsigned int)in_buf[k+3]+(unsigned int)in_buf[k+2]*256+(unsigned int)in_buf[k+1]*65536+(unsigned int)in_buf[k]*16777216;
	// 		 	 	if((check+1) != buffer_value)
	// 				 	{printf("Error at %u \n", check);
	// 		 			printf("Buffer Value : %u \n", buffer_value);
	// 		 		}
	// 		 		check = buffer_value;
	// 		 	}
	// 		 }
	printf("Read %d bytes\r\n", count);

_Exit:
	free(in_buf);
	free(out_buf);
	FT_Close(handle);
	return 0;
}

void dec2bin(unsigned int c)
{
   int i = 0;
   for(i = 7; i >= 0; i--){
     if((c & (1 << i)) != 0){
       printf("1");
     }else{
       printf("0");
     } 
   }
}
