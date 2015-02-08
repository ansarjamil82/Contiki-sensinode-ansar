################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/cooja/dev/beep.c \
../platform/cooja/dev/button-sensor.c \
../platform/cooja/dev/cooja-radio.c \
../platform/cooja/dev/ip.c \
../platform/cooja/dev/leds-arch.c \
../platform/cooja/dev/moteid.c \
../platform/cooja/dev/pir-sensor.c \
../platform/cooja/dev/rs232.c \
../platform/cooja/dev/vib-sensor.c \
../platform/cooja/dev/watchdog.c 

C_DEPS += \
./platform/cooja/dev/beep.d \
./platform/cooja/dev/button-sensor.d \
./platform/cooja/dev/cooja-radio.d \
./platform/cooja/dev/ip.d \
./platform/cooja/dev/leds-arch.d \
./platform/cooja/dev/moteid.d \
./platform/cooja/dev/pir-sensor.d \
./platform/cooja/dev/rs232.d \
./platform/cooja/dev/vib-sensor.d \
./platform/cooja/dev/watchdog.d 

RELS += \
./platform/cooja/dev/beep.rel \
./platform/cooja/dev/button-sensor.rel \
./platform/cooja/dev/cooja-radio.rel \
./platform/cooja/dev/ip.rel \
./platform/cooja/dev/leds-arch.rel \
./platform/cooja/dev/moteid.rel \
./platform/cooja/dev/pir-sensor.rel \
./platform/cooja/dev/rs232.rel \
./platform/cooja/dev/vib-sensor.rel \
./platform/cooja/dev/watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/cooja/dev/%.rel: ../platform/cooja/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


