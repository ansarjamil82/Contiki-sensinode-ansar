################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/dev/cc2420-aes.c \
../core/dev/cc2420.c \
../core/dev/cc2520.c \
../core/dev/ds2411.c \
../core/dev/leds.c \
../core/dev/nullradio.c \
../core/dev/serial-line.c \
../core/dev/sht11-sensor.c \
../core/dev/sht11.c \
../core/dev/slip.c 

C_DEPS += \
./core/dev/cc2420-aes.d \
./core/dev/cc2420.d \
./core/dev/cc2520.d \
./core/dev/ds2411.d \
./core/dev/leds.d \
./core/dev/nullradio.d \
./core/dev/serial-line.d \
./core/dev/sht11-sensor.d \
./core/dev/sht11.d \
./core/dev/slip.d 

RELS += \
./core/dev/cc2420-aes.rel \
./core/dev/cc2420.rel \
./core/dev/cc2520.rel \
./core/dev/ds2411.rel \
./core/dev/leds.rel \
./core/dev/nullradio.rel \
./core/dev/serial-line.rel \
./core/dev/sht11-sensor.rel \
./core/dev/sht11.rel \
./core/dev/slip.rel 


# Each subdirectory must supply rules for building sources it contributes
core/dev/%.rel: ../core/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


