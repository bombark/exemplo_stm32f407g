#include <string.h>

#include "uart.h"
#include "stm32f4xx_hal.h"

extern UART_HandleTypeDef huart2;
UART_HandleTypeDef* huart_dev = &huart2;


size_t uart_write(const char* buffer, const size_t size) {
	size_t retval = 0;
	HAL_StatusTypeDef state;
	state = HAL_UART_Transmit(huart_dev, (const uint8_t*) buffer, size, 100);
	if ( state == HAL_OK ) {
		retval = size;
	}
	return retval;
}

size_t uart_puts(const char* buffer) {
	const size_t size = strlen(buffer);
	return uart_write(buffer, size);
}

size_t uart_read(char* buffer, const size_t maxsize) {
	size_t retval = 0;
	HAL_StatusTypeDef state;
	state = HAL_UART_Receive(huart_dev, (uint8_t*) buffer, maxsize, 250);
	if ( state == HAL_OK ) {
		retval = maxsize;
	}
	return retval;
}
