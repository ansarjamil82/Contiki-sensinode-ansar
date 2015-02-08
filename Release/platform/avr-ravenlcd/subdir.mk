################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/avr-ravenlcd/adc.c \
../platform/avr-ravenlcd/beep.c \
../platform/avr-ravenlcd/key.c \
../platform/avr-ravenlcd/lcd.c \
../platform/avr-ravenlcd/menu.c \
../platform/avr-ravenlcd/raven3290.c \
../platform/avr-ravenlcd/sleep.c \
../platform/avr-ravenlcd/temp.c \
../platform/avr-ravenlcd/timer.c \
../platform/avr-ravenlcd/uart.c 

C_DEPS += \
./platform/avr-ravenlcd/adc.d \
./platform/avr-ravenlcd/beep.d \
./platform/avr-ravenlcd/key.d \
./platform/avr-ravenlcd/lcd.d \
./platform/avr-ravenlcd/menu.d \
./platform/avr-ravenlcd/raven3290.d \
./platform/avr-ravenlcd/sleep.d \
./platform/avr-ravenlcd/temp.d \
./platform/avr-ravenlcd/timer.d \
./platform/avr-ravenlcd/uart.d 

RELS += \
./platform/avr-ravenlcd/adc.rel \
./platform/avr-ravenlcd/beep.rel \
./platform/avr-ravenlcd/key.rel \
./platform/avr-ravenlcd/lcd.rel \
./platform/avr-ravenlcd/menu.rel \
./platform/avr-ravenlcd/raven3290.rel \
./platform/avr-ravenlcd/sleep.rel \
./platform/avr-ravenlcd/temp.rel \
./platform/avr-ravenlcd/timer.rel \
./platform/avr-ravenlcd/uart.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/avr-ravenlcd/%.rel: ../platform/avr-ravenlcd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


