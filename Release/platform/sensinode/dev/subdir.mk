################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/sensinode/dev/adc-sensor.c \
../platform/sensinode/dev/button-sensor.c \
../platform/sensinode/dev/leds-arch.c \
../platform/sensinode/dev/m25p16.c \
../platform/sensinode/dev/models.c \
../platform/sensinode/dev/n740.c \
../platform/sensinode/dev/sensinode-sensors.c \
../platform/sensinode/dev/slip-arch.c 

C_DEPS += \
./platform/sensinode/dev/adc-sensor.d \
./platform/sensinode/dev/button-sensor.d \
./platform/sensinode/dev/leds-arch.d \
./platform/sensinode/dev/m25p16.d \
./platform/sensinode/dev/models.d \
./platform/sensinode/dev/n740.d \
./platform/sensinode/dev/sensinode-sensors.d \
./platform/sensinode/dev/slip-arch.d 

RELS += \
./platform/sensinode/dev/adc-sensor.rel \
./platform/sensinode/dev/button-sensor.rel \
./platform/sensinode/dev/leds-arch.rel \
./platform/sensinode/dev/m25p16.rel \
./platform/sensinode/dev/models.rel \
./platform/sensinode/dev/n740.rel \
./platform/sensinode/dev/sensinode-sensors.rel \
./platform/sensinode/dev/slip-arch.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/sensinode/dev/%.rel: ../platform/sensinode/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


