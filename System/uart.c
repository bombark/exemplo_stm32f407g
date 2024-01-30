#include <string.h>

#include "rtc.h"
#include "uart.h"
#include "stm32f4xx_hal.h"
#include "usbd_cdc_if.h"

extern UART_HandleTypeDef huart2;
UART_HandleTypeDef* huart_dev = &huart2;

extern char g_uart_buffer[1024];
extern volatile uint16_t g_uart_read;
extern volatile uint16_t g_uart_write;


size_t uart_write(const char* buffer, const size_t size) {
	uint8_t tentativas = 0;
	size_t retval = 0;
	do {
		if ( CDC_Transmit_FS(buffer, size) == USBD_OK ) {
			retval = size;
			break;
		} else {
			sleep_ms(50);
			tentativas += 1;
		}
	} while (tentativas<3);

	return retval;
}

size_t uart_puts(const char* buffer) {
	const size_t size = strlen(buffer);
	return uart_write(buffer, size);
}

size_t uart_read(char* buffer, const size_t maxsize) {

}
