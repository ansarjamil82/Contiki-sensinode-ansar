################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/z1/dev/adxl345.c \
../platform/z1/dev/battery-sensor.c \
../platform/z1/dev/button-sensor.c \
../platform/z1/dev/cc2420-arch.c \
../platform/z1/dev/i2cmaster.c \
../platform/z1/dev/light-sensor.c \
../platform/z1/dev/light-ziglet.c \
../platform/z1/dev/light.c \
../platform/z1/dev/potentiometer-sensor.c \
../platform/z1/dev/radio-sensor.c \
../platform/z1/dev/sky-sensors.c \
../platform/z1/dev/temperature-sensor.c \
../platform/z1/dev/tmp102.c \
../platform/z1/dev/xmem.c \
../platform/z1/dev/z1-phidgets.c 

C_DEPS += \
./platform/z1/dev/adxl345.d \
./platform/z1/dev/battery-sensor.d \
./platform/z1/dev/button-sensor.d \
./platform/z1/dev/cc2420-arch.d \
./platform/z1/dev/i2cmaster.d \
./platform/z1/dev/light-sensor.d \
./platform/z1/dev/light-ziglet.d \
./platform/z1/dev/light.d \
./platform/z1/dev/potentiometer-sensor.d \
./platform/z1/dev/radio-sensor.d \
./platform/z1/dev/sky-sensors.d \
./platform/z1/dev/temperature-sensor.d \
./platform/z1/dev/tmp102.d \
./platform/z1/dev/xmem.d \
./platform/z1/dev/z1-phidgets.d 

RELS += \
./platform/z1/dev/adxl345.rel \
./platform/z1/dev/battery-sensor.rel \
./platform/z1/dev/button-sensor.rel \
./platform/z1/dev/cc2420-arch.rel \
./platform/z1/dev/i2cmaster.rel \
./platform/z1/dev/light-sensor.rel \
./platform/z1/dev/light-ziglet.rel \
./platform/z1/dev/light.rel \
./platform/z1/dev/potentiometer-sensor.rel \
./platform/z1/dev/radio-sensor.rel \
./platform/z1/dev/sky-sensors.rel \
./platform/z1/dev/temperature-sensor.rel \
./platform/z1/dev/tmp102.rel \
./platform/z1/dev/xmem.rel \
./platform/z1/dev/z1-phidgets.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/z1/dev/%.rel: ../platform/z1/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


