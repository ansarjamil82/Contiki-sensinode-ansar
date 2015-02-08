################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/msp430/button.c \
../cpu/msp430/cc2420-arch-sfd.c \
../cpu/msp430/cc2420-arch.c \
../cpu/msp430/cc2520-arch-sfd.c \
../cpu/msp430/cc2520-arch.c \
../cpu/msp430/flash.c \
../cpu/msp430/leds-arch.c \
../cpu/msp430/loader-arch.c \
../cpu/msp430/lpm.c \
../cpu/msp430/minileds.c \
../cpu/msp430/mtarch.c \
../cpu/msp430/rom.c \
../cpu/msp430/slip_uart0.c \
../cpu/msp430/slip_uart1.c \
../cpu/msp430/uip-ipchksum.c \
../cpu/msp430/watchdog.c 

C_DEPS += \
./cpu/msp430/button.d \
./cpu/msp430/cc2420-arch-sfd.d \
./cpu/msp430/cc2420-arch.d \
./cpu/msp430/cc2520-arch-sfd.d \
./cpu/msp430/cc2520-arch.d \
./cpu/msp430/flash.d \
./cpu/msp430/leds-arch.d \
./cpu/msp430/loader-arch.d \
./cpu/msp430/lpm.d \
./cpu/msp430/minileds.d \
./cpu/msp430/mtarch.d \
./cpu/msp430/rom.d \
./cpu/msp430/slip_uart0.d \
./cpu/msp430/slip_uart1.d \
./cpu/msp430/uip-ipchksum.d \
./cpu/msp430/watchdog.d 

RELS += \
./cpu/msp430/button.rel \
./cpu/msp430/cc2420-arch-sfd.rel \
./cpu/msp430/cc2420-arch.rel \
./cpu/msp430/cc2520-arch-sfd.rel \
./cpu/msp430/cc2520-arch.rel \
./cpu/msp430/flash.rel \
./cpu/msp430/leds-arch.rel \
./cpu/msp430/loader-arch.rel \
./cpu/msp430/lpm.rel \
./cpu/msp430/minileds.rel \
./cpu/msp430/mtarch.rel \
./cpu/msp430/rom.rel \
./cpu/msp430/slip_uart0.rel \
./cpu/msp430/slip_uart1.rel \
./cpu/msp430/uip-ipchksum.rel \
./cpu/msp430/watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/msp430/%.rel: ../cpu/msp430/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


