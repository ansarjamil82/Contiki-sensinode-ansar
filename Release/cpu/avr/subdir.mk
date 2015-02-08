################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/avr/avr.c \
../cpu/avr/bootloader.c \
../cpu/avr/cc2420_spi.c \
../cpu/avr/leds-arch.c \
../cpu/avr/minileds.c \
../cpu/avr/mtarch.c \
../cpu/avr/rtimer-arch.c \
../cpu/avr/settings.c \
../cpu/avr/slip_uart1.c \
../cpu/avr/spi.c \
../cpu/avr/watchdog.c 

C_DEPS += \
./cpu/avr/avr.d \
./cpu/avr/bootloader.d \
./cpu/avr/cc2420_spi.d \
./cpu/avr/leds-arch.d \
./cpu/avr/minileds.d \
./cpu/avr/mtarch.d \
./cpu/avr/rtimer-arch.d \
./cpu/avr/settings.d \
./cpu/avr/slip_uart1.d \
./cpu/avr/spi.d \
./cpu/avr/watchdog.d 

RELS += \
./cpu/avr/avr.rel \
./cpu/avr/bootloader.rel \
./cpu/avr/cc2420_spi.rel \
./cpu/avr/leds-arch.rel \
./cpu/avr/minileds.rel \
./cpu/avr/mtarch.rel \
./cpu/avr/rtimer-arch.rel \
./cpu/avr/settings.rel \
./cpu/avr/slip_uart1.rel \
./cpu/avr/spi.rel \
./cpu/avr/watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/avr/%.rel: ../cpu/avr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


