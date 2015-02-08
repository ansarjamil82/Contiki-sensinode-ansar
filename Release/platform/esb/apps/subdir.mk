################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/esb/apps/beeper.c \
../platform/esb/apps/burn-nodeid.c \
../platform/esb/apps/fader.c \
../platform/esb/apps/helloworld.c \
../platform/esb/apps/pinger.c \
../platform/esb/apps/radio-sniffer.c \
../platform/esb/apps/radio-test.c \
../platform/esb/apps/sensor-output.c \
../platform/esb/apps/test-receiver.c \
../platform/esb/apps/test-sender.c 

C_DEPS += \
./platform/esb/apps/beeper.d \
./platform/esb/apps/burn-nodeid.d \
./platform/esb/apps/fader.d \
./platform/esb/apps/helloworld.d \
./platform/esb/apps/pinger.d \
./platform/esb/apps/radio-sniffer.d \
./platform/esb/apps/radio-test.d \
./platform/esb/apps/sensor-output.d \
./platform/esb/apps/test-receiver.d \
./platform/esb/apps/test-sender.d 

RELS += \
./platform/esb/apps/beeper.rel \
./platform/esb/apps/burn-nodeid.rel \
./platform/esb/apps/fader.rel \
./platform/esb/apps/helloworld.rel \
./platform/esb/apps/pinger.rel \
./platform/esb/apps/radio-sniffer.rel \
./platform/esb/apps/radio-test.rel \
./platform/esb/apps/sensor-output.rel \
./platform/esb/apps/test-receiver.rel \
./platform/esb/apps/test-sender.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/esb/apps/%.rel: ../platform/esb/apps/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


