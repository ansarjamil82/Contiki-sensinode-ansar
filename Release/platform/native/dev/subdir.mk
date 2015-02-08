################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/native/dev/beep.c \
../platform/native/dev/button-sensor.c \
../platform/native/dev/dummy-sensors.c \
../platform/native/dev/eeprom.c \
../platform/native/dev/irq.c \
../platform/native/dev/leds-arch.c \
../platform/native/dev/pir-sensor.c \
../platform/native/dev/vib-sensor.c \
../platform/native/dev/xmem.c 

C_DEPS += \
./platform/native/dev/beep.d \
./platform/native/dev/button-sensor.d \
./platform/native/dev/dummy-sensors.d \
./platform/native/dev/eeprom.d \
./platform/native/dev/irq.d \
./platform/native/dev/leds-arch.d \
./platform/native/dev/pir-sensor.d \
./platform/native/dev/vib-sensor.d \
./platform/native/dev/xmem.d 

RELS += \
./platform/native/dev/beep.rel \
./platform/native/dev/button-sensor.rel \
./platform/native/dev/dummy-sensors.rel \
./platform/native/dev/eeprom.rel \
./platform/native/dev/irq.rel \
./platform/native/dev/leds-arch.rel \
./platform/native/dev/pir-sensor.rel \
./platform/native/dev/vib-sensor.rel \
./platform/native/dev/xmem.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/native/dev/%.rel: ../platform/native/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


