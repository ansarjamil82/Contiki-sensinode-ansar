################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/sky/example-coffee.c \
../examples/sky/radio-test.c \
../examples/sky/rssi-scanner.c \
../examples/sky/rt-leds.c \
../examples/sky/sky-collect.c \
../examples/sky/tcprudolph0.c \
../examples/sky/test-button.c \
../examples/sky/test-cfs.c \
../examples/sky/test-coffee.c \
../examples/sky/test-deluge.c 

C_DEPS += \
./examples/sky/example-coffee.d \
./examples/sky/radio-test.d \
./examples/sky/rssi-scanner.d \
./examples/sky/rt-leds.d \
./examples/sky/sky-collect.d \
./examples/sky/tcprudolph0.d \
./examples/sky/test-button.d \
./examples/sky/test-cfs.d \
./examples/sky/test-coffee.d \
./examples/sky/test-deluge.d 

RELS += \
./examples/sky/example-coffee.rel \
./examples/sky/radio-test.rel \
./examples/sky/rssi-scanner.rel \
./examples/sky/rt-leds.rel \
./examples/sky/sky-collect.rel \
./examples/sky/tcprudolph0.rel \
./examples/sky/test-button.rel \
./examples/sky/test-cfs.rel \
./examples/sky/test-coffee.rel \
./examples/sky/test-deluge.rel 


# Each subdirectory must supply rules for building sources it contributes
examples/sky/%.rel: ../examples/sky/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


