################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../System/btn_blue.c \
../System/led_blue.c \
../System/led_green.c \
../System/led_orange.c \
../System/led_red.c \
../System/main_system.c \
../System/rtc.c \
../System/speaker.c \
../System/uart.c 

OBJS += \
./System/btn_blue.o \
./System/led_blue.o \
./System/led_green.o \
./System/led_orange.o \
./System/led_red.o \
./System/main_system.o \
./System/rtc.o \
./System/speaker.o \
./System/uart.o 

C_DEPS += \
./System/btn_blue.d \
./System/led_blue.d \
./System/led_green.d \
./System/led_orange.d \
./System/led_red.d \
./System/main_system.d \
./System/rtc.d \
./System/speaker.d \
./System/uart.d 


# Each subdirectory must supply rules for building sources it contributes
System/%.o System/%.su System/%.cyclo: ../System/%.c System/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-System

clean-System:
	-$(RM) ./System/btn_blue.cyclo ./System/btn_blue.d ./System/btn_blue.o ./System/btn_blue.su ./System/led_blue.cyclo ./System/led_blue.d ./System/led_blue.o ./System/led_blue.su ./System/led_green.cyclo ./System/led_green.d ./System/led_green.o ./System/led_green.su ./System/led_orange.cyclo ./System/led_orange.d ./System/led_orange.o ./System/led_orange.su ./System/led_red.cyclo ./System/led_red.d ./System/led_red.o ./System/led_red.su ./System/main_system.cyclo ./System/main_system.d ./System/main_system.o ./System/main_system.su ./System/rtc.cyclo ./System/rtc.d ./System/rtc.o ./System/rtc.su ./System/speaker.cyclo ./System/speaker.d ./System/speaker.o ./System/speaker.su ./System/uart.cyclo ./System/uart.d ./System/uart.o ./System/uart.su

.PHONY: clean-System

