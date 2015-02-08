################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/cc2430/dev/bus.c \
../cpu/cc2430/dev/cc2430_rf.c \
../cpu/cc2430/dev/cc2430_rf_intr.c \
../cpu/cc2430/dev/clock.c \
../cpu/cc2430/dev/dma.c \
../cpu/cc2430/dev/dma_intr.c \
../cpu/cc2430/dev/random.c \
../cpu/cc2430/dev/uart0.c \
../cpu/cc2430/dev/uart1.c \
../cpu/cc2430/dev/uart_intr.c \
../cpu/cc2430/dev/watchdog-cc2430.c 

C_DEPS += \
./cpu/cc2430/dev/bus.d \
./cpu/cc2430/dev/cc2430_rf.d \
./cpu/cc2430/dev/cc2430_rf_intr.d \
./cpu/cc2430/dev/clock.d \
./cpu/cc2430/dev/dma.d \
./cpu/cc2430/dev/dma_intr.d \
./cpu/cc2430/dev/random.d \
./cpu/cc2430/dev/uart0.d \
./cpu/cc2430/dev/uart1.d \
./cpu/cc2430/dev/uart_intr.d \
./cpu/cc2430/dev/watchdog-cc2430.d 

RELS += \
./cpu/cc2430/dev/bus.rel \
./cpu/cc2430/dev/cc2430_rf.rel \
./cpu/cc2430/dev/cc2430_rf_intr.rel \
./cpu/cc2430/dev/clock.rel \
./cpu/cc2430/dev/dma.rel \
./cpu/cc2430/dev/dma_intr.rel \
./cpu/cc2430/dev/random.rel \
./cpu/cc2430/dev/uart0.rel \
./cpu/cc2430/dev/uart1.rel \
./cpu/cc2430/dev/uart_intr.rel \
./cpu/cc2430/dev/watchdog-cc2430.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/cc2430/dev/%.rel: ../cpu/cc2430/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


