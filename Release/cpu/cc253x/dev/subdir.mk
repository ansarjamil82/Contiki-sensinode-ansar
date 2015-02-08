################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/cc253x/dev/cc2530-rf.c \
../cpu/cc253x/dev/clock.c \
../cpu/cc253x/dev/dma.c \
../cpu/cc253x/dev/dma_intr.c \
../cpu/cc253x/dev/random.c \
../cpu/cc253x/dev/uart-intr.c \
../cpu/cc253x/dev/uart0.c \
../cpu/cc253x/dev/uart1.c \
../cpu/cc253x/dev/watchdog.c 

C_DEPS += \
./cpu/cc253x/dev/cc2530-rf.d \
./cpu/cc253x/dev/clock.d \
./cpu/cc253x/dev/dma.d \
./cpu/cc253x/dev/dma_intr.d \
./cpu/cc253x/dev/random.d \
./cpu/cc253x/dev/uart-intr.d \
./cpu/cc253x/dev/uart0.d \
./cpu/cc253x/dev/uart1.d \
./cpu/cc253x/dev/watchdog.d 

RELS += \
./cpu/cc253x/dev/cc2530-rf.rel \
./cpu/cc253x/dev/clock.rel \
./cpu/cc253x/dev/dma.rel \
./cpu/cc253x/dev/dma_intr.rel \
./cpu/cc253x/dev/random.rel \
./cpu/cc253x/dev/uart-intr.rel \
./cpu/cc253x/dev/uart0.rel \
./cpu/cc253x/dev/uart1.rel \
./cpu/cc253x/dev/watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/cc253x/dev/%.rel: ../cpu/cc253x/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


