################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/mbxxx/dev/acc-sensor.c \
../platform/mbxxx/dev/button-sensor.c \
../platform/mbxxx/dev/irq.c \
../platform/mbxxx/dev/leds-arch.c \
../platform/mbxxx/dev/mems.c \
../platform/mbxxx/dev/temperature-sensor.c 

C_DEPS += \
./platform/mbxxx/dev/acc-sensor.d \
./platform/mbxxx/dev/button-sensor.d \
./platform/mbxxx/dev/irq.d \
./platform/mbxxx/dev/leds-arch.d \
./platform/mbxxx/dev/mems.d \
./platform/mbxxx/dev/temperature-sensor.d 

RELS += \
./platform/mbxxx/dev/acc-sensor.rel \
./platform/mbxxx/dev/button-sensor.rel \
./platform/mbxxx/dev/irq.rel \
./platform/mbxxx/dev/leds-arch.rel \
./platform/mbxxx/dev/mems.rel \
./platform/mbxxx/dev/temperature-sensor.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/mbxxx/dev/%.rel: ../platform/mbxxx/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


