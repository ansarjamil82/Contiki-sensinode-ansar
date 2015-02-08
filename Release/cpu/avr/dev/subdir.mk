################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/avr/dev/clock.c \
../cpu/avr/dev/debug.c \
../cpu/avr/dev/eeprom.c \
../cpu/avr/dev/flash.c \
../cpu/avr/dev/lanc111.c \
../cpu/avr/dev/rs232.c \
../cpu/avr/dev/rtl8019-drv.c \
../cpu/avr/dev/rtl8019.c \
../cpu/avr/dev/rtl8019dev.c 

C_DEPS += \
./cpu/avr/dev/clock.d \
./cpu/avr/dev/debug.d \
./cpu/avr/dev/eeprom.d \
./cpu/avr/dev/flash.d \
./cpu/avr/dev/lanc111.d \
./cpu/avr/dev/rs232.d \
./cpu/avr/dev/rtl8019-drv.d \
./cpu/avr/dev/rtl8019.d \
./cpu/avr/dev/rtl8019dev.d 

RELS += \
./cpu/avr/dev/clock.rel \
./cpu/avr/dev/debug.rel \
./cpu/avr/dev/eeprom.rel \
./cpu/avr/dev/flash.rel \
./cpu/avr/dev/lanc111.rel \
./cpu/avr/dev/rs232.rel \
./cpu/avr/dev/rtl8019-drv.rel \
./cpu/avr/dev/rtl8019.rel \
./cpu/avr/dev/rtl8019dev.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/avr/dev/%.rel: ../cpu/avr/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


