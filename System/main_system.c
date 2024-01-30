// Leds
#include "led_green.h"
#include "led_red.h"
#include "led_orange.h"
#include "led_blue.h"

// Buttons
#include "btn_blue.h"

// Uart
#include "uart.h"

// RTC
#include "rtc.h"


int main_system() {
	uart_puts("Opa!\n");
	while(1) {
		sleep_ms(500);
		led_blue_toggle();
		led_orange_toggle();
		led_red_toggle();
		led_green_toggle();

		if ( btn_blue_is_pressed() ) {
			led_green_toggle();
		}
	}

	return 0;
}
