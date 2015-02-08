################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/sky/dev/battery-sensor.c \
../platform/sky/dev/button-sensor.c \
../platform/sky/dev/i2c.c \
../platform/sky/dev/light-sensor.c \
../platform/sky/dev/light.c \
../platform/sky/dev/radio-sensor.c \
../platform/sky/dev/sky-sensors.c \
../platform/sky/dev/temperature-sensor.c \
../platform/sky/dev/xmem.c 

C_DEPS += \
./platform/sky/dev/battery-sensor.d \
./platform/sky/dev/button-sensor.d \
./platform/sky/dev/i2c.d \
./platform/sky/dev/light-sensor.d \
./platform/sky/dev/light.d \
./platform/sky/dev/radio-sensor.d \
./platform/sky/dev/sky-sensors.d \
./platform/sky/dev/temperature-sensor.d \
./platform/sky/dev/xmem.d 

RELS += \
./platform/sky/dev/battery-sensor.rel \
./platform/sky/dev/button-sensor.rel \
./platform/sky/dev/i2c.rel \
./platform/sky/dev/light-sensor.rel \
./platform/sky/dev/light.rel \
./platform/sky/dev/radio-sensor.rel \
./platform/sky/dev/sky-sensors.rel \
./platform/sky/dev/temperature-sensor.rel \
./platform/sky/dev/xmem.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/sky/dev/%.rel: ../platform/sky/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


