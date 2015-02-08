################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/msp430/f5xxx/clock.c \
../cpu/msp430/f5xxx/msp430.c \
../cpu/msp430/f5xxx/rtimer-arch.c \
../cpu/msp430/f5xxx/spi.c \
../cpu/msp430/f5xxx/uart0.c \
../cpu/msp430/f5xxx/uart1.c 

C_DEPS += \
./cpu/msp430/f5xxx/clock.d \
./cpu/msp430/f5xxx/msp430.d \
./cpu/msp430/f5xxx/rtimer-arch.d \
./cpu/msp430/f5xxx/spi.d \
./cpu/msp430/f5xxx/uart0.d \
./cpu/msp430/f5xxx/uart1.d 

RELS += \
./cpu/msp430/f5xxx/clock.rel \
./cpu/msp430/f5xxx/msp430.rel \
./cpu/msp430/f5xxx/rtimer-arch.rel \
./cpu/msp430/f5xxx/spi.rel \
./cpu/msp430/f5xxx/uart0.rel \
./cpu/msp430/f5xxx/uart1.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/msp430/f5xxx/%.rel: ../cpu/msp430/f5xxx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


