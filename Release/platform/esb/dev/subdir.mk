################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/esb/dev/battery-sensor.c \
../platform/esb/dev/beep.c \
../platform/esb/dev/button-sensor.c \
../platform/esb/dev/ctsrts-sensor.c \
../platform/esb/dev/ds1629.c \
../platform/esb/dev/eeprom.c \
../platform/esb/dev/esb-sensors.c \
../platform/esb/dev/ir.c \
../platform/esb/dev/irq.c \
../platform/esb/dev/pir-sensor.c \
../platform/esb/dev/radio-sensor.c \
../platform/esb/dev/rs232-putchar.c \
../platform/esb/dev/rs232.c \
../platform/esb/dev/sound-sensor.c \
../platform/esb/dev/temperature-sensor.c \
../platform/esb/dev/tr1001-gcr.c \
../platform/esb/dev/tr1001.c \
../platform/esb/dev/vib-sensor.c 

C_DEPS += \
./platform/esb/dev/battery-sensor.d \
./platform/esb/dev/beep.d \
./platform/esb/dev/button-sensor.d \
./platform/esb/dev/ctsrts-sensor.d \
./platform/esb/dev/ds1629.d \
./platform/esb/dev/eeprom.d \
./platform/esb/dev/esb-sensors.d \
./platform/esb/dev/ir.d \
./platform/esb/dev/irq.d \
./platform/esb/dev/pir-sensor.d \
./platform/esb/dev/radio-sensor.d \
./platform/esb/dev/rs232-putchar.d \
./platform/esb/dev/rs232.d \
./platform/esb/dev/sound-sensor.d \
./platform/esb/dev/temperature-sensor.d \
./platform/esb/dev/tr1001-gcr.d \
./platform/esb/dev/tr1001.d \
./platform/esb/dev/vib-sensor.d 

RELS += \
./platform/esb/dev/battery-sensor.rel \
./platform/esb/dev/beep.rel \
./platform/esb/dev/button-sensor.rel \
./platform/esb/dev/ctsrts-sensor.rel \
./platform/esb/dev/ds1629.rel \
./platform/esb/dev/eeprom.rel \
./platform/esb/dev/esb-sensors.rel \
./platform/esb/dev/ir.rel \
./platform/esb/dev/irq.rel \
./platform/esb/dev/pir-sensor.rel \
./platform/esb/dev/radio-sensor.rel \
./platform/esb/dev/rs232-putchar.rel \
./platform/esb/dev/rs232.rel \
./platform/esb/dev/sound-sensor.rel \
./platform/esb/dev/temperature-sensor.rel \
./platform/esb/dev/tr1001-gcr.rel \
./platform/esb/dev/tr1001.rel \
./platform/esb/dev/vib-sensor.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/esb/dev/%.rel: ../platform/esb/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


