################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/wismote/dev/acc-sensor.c \
../platform/wismote/dev/battery-sensor.c \
../platform/wismote/dev/button-sensor.c \
../platform/wismote/dev/ext-sensor.c \
../platform/wismote/dev/i2c.c \
../platform/wismote/dev/light-sensor.c \
../platform/wismote/dev/light.c \
../platform/wismote/dev/radio-sensor.c \
../platform/wismote/dev/sht15.c \
../platform/wismote/dev/sky-sensors.c \
../platform/wismote/dev/xmem.c 

C_DEPS += \
./platform/wismote/dev/acc-sensor.d \
./platform/wismote/dev/battery-sensor.d \
./platform/wismote/dev/button-sensor.d \
./platform/wismote/dev/ext-sensor.d \
./platform/wismote/dev/i2c.d \
./platform/wismote/dev/light-sensor.d \
./platform/wismote/dev/light.d \
./platform/wismote/dev/radio-sensor.d \
./platform/wismote/dev/sht15.d \
./platform/wismote/dev/sky-sensors.d \
./platform/wismote/dev/xmem.d 

RELS += \
./platform/wismote/dev/acc-sensor.rel \
./platform/wismote/dev/battery-sensor.rel \
./platform/wismote/dev/button-sensor.rel \
./platform/wismote/dev/ext-sensor.rel \
./platform/wismote/dev/i2c.rel \
./platform/wismote/dev/light-sensor.rel \
./platform/wismote/dev/light.rel \
./platform/wismote/dev/radio-sensor.rel \
./platform/wismote/dev/sht15.rel \
./platform/wismote/dev/sky-sensors.rel \
./platform/wismote/dev/xmem.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/wismote/dev/%.rel: ../platform/wismote/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


