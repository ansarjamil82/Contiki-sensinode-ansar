################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/mc1322x/clock.c \
../cpu/mc1322x/contiki-crm.c \
../cpu/mc1322x/contiki-maca.c \
../cpu/mc1322x/contiki-misc.c \
../cpu/mc1322x/contiki-uart.c \
../cpu/mc1322x/dbg-io.c \
../cpu/mc1322x/debug-uart.c \
../cpu/mc1322x/leds-arch.c \
../cpu/mc1322x/rtimer-arch.c \
../cpu/mc1322x/slip-uart1.c \
../cpu/mc1322x/watchdog.c 

C_DEPS += \
./cpu/mc1322x/clock.d \
./cpu/mc1322x/contiki-crm.d \
./cpu/mc1322x/contiki-maca.d \
./cpu/mc1322x/contiki-misc.d \
./cpu/mc1322x/contiki-uart.d \
./cpu/mc1322x/dbg-io.d \
./cpu/mc1322x/debug-uart.d \
./cpu/mc1322x/leds-arch.d \
./cpu/mc1322x/rtimer-arch.d \
./cpu/mc1322x/slip-uart1.d \
./cpu/mc1322x/watchdog.d 

RELS += \
./cpu/mc1322x/clock.rel \
./cpu/mc1322x/contiki-crm.rel \
./cpu/mc1322x/contiki-maca.rel \
./cpu/mc1322x/contiki-misc.rel \
./cpu/mc1322x/contiki-uart.rel \
./cpu/mc1322x/dbg-io.rel \
./cpu/mc1322x/debug-uart.rel \
./cpu/mc1322x/leds-arch.rel \
./cpu/mc1322x/rtimer-arch.rel \
./cpu/mc1322x/slip-uart1.rel \
./cpu/mc1322x/watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/mc1322x/%.rel: ../cpu/mc1322x/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


