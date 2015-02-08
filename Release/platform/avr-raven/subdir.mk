################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/avr-raven/button-sensor.c \
../platform/avr-raven/cfs-coffee-arch.c \
../platform/avr-raven/contiki-raven-default-init-lowlevel.c \
../platform/avr-raven/contiki-raven-default-init-net.c \
../platform/avr-raven/contiki-raven-main.c \
../platform/avr-raven/loadable_prg.c \
../platform/avr-raven/params.c \
../platform/avr-raven/slip_uart0.c 

C_DEPS += \
./platform/avr-raven/button-sensor.d \
./platform/avr-raven/cfs-coffee-arch.d \
./platform/avr-raven/contiki-raven-default-init-lowlevel.d \
./platform/avr-raven/contiki-raven-default-init-net.d \
./platform/avr-raven/contiki-raven-main.d \
./platform/avr-raven/loadable_prg.d \
./platform/avr-raven/params.d \
./platform/avr-raven/slip_uart0.d 

RELS += \
./platform/avr-raven/button-sensor.rel \
./platform/avr-raven/cfs-coffee-arch.rel \
./platform/avr-raven/contiki-raven-default-init-lowlevel.rel \
./platform/avr-raven/contiki-raven-default-init-net.rel \
./platform/avr-raven/contiki-raven-main.rel \
./platform/avr-raven/loadable_prg.rel \
./platform/avr-raven/params.rel \
./platform/avr-raven/slip_uart0.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/avr-raven/%.rel: ../platform/avr-raven/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


