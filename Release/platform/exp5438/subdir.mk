################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/exp5438/blink.c \
../platform/exp5438/cc2420-arch.c \
../platform/exp5438/clock.c \
../platform/exp5438/contiki-exp5438-main.c \
../platform/exp5438/duty-cycle-scroller.c \
../platform/exp5438/flash.c \
../platform/exp5438/hal_lcd.c \
../platform/exp5438/hal_lcd_fonts.c \
../platform/exp5438/lcd.c \
../platform/exp5438/leds-arch.c \
../platform/exp5438/msp430.c \
../platform/exp5438/node-id.c \
../platform/exp5438/rtimer-arch.c \
../platform/exp5438/spix.c \
../platform/exp5438/uart1-putchar.c \
../platform/exp5438/uart1x.c \
../platform/exp5438/watchdog.c 

C_DEPS += \
./platform/exp5438/blink.d \
./platform/exp5438/cc2420-arch.d \
./platform/exp5438/clock.d \
./platform/exp5438/contiki-exp5438-main.d \
./platform/exp5438/duty-cycle-scroller.d \
./platform/exp5438/flash.d \
./platform/exp5438/hal_lcd.d \
./platform/exp5438/hal_lcd_fonts.d \
./platform/exp5438/lcd.d \
./platform/exp5438/leds-arch.d \
./platform/exp5438/msp430.d \
./platform/exp5438/node-id.d \
./platform/exp5438/rtimer-arch.d \
./platform/exp5438/spix.d \
./platform/exp5438/uart1-putchar.d \
./platform/exp5438/uart1x.d \
./platform/exp5438/watchdog.d 

RELS += \
./platform/exp5438/blink.rel \
./platform/exp5438/cc2420-arch.rel \
./platform/exp5438/clock.rel \
./platform/exp5438/contiki-exp5438-main.rel \
./platform/exp5438/duty-cycle-scroller.rel \
./platform/exp5438/flash.rel \
./platform/exp5438/hal_lcd.rel \
./platform/exp5438/hal_lcd_fonts.rel \
./platform/exp5438/lcd.rel \
./platform/exp5438/leds-arch.rel \
./platform/exp5438/msp430.rel \
./platform/exp5438/node-id.rel \
./platform/exp5438/rtimer-arch.rel \
./platform/exp5438/spix.rel \
./platform/exp5438/uart1-putchar.rel \
./platform/exp5438/uart1x.rel \
./platform/exp5438/watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/exp5438/%.rel: ../platform/exp5438/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


