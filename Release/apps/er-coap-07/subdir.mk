################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apps/er-coap-07/er-coap-07-engine.c \
../apps/er-coap-07/er-coap-07-observing.c \
../apps/er-coap-07/er-coap-07-separate.c \
../apps/er-coap-07/er-coap-07-transactions.c \
../apps/er-coap-07/er-coap-07.c 

C_DEPS += \
./apps/er-coap-07/er-coap-07-engine.d \
./apps/er-coap-07/er-coap-07-observing.d \
./apps/er-coap-07/er-coap-07-separate.d \
./apps/er-coap-07/er-coap-07-transactions.d \
./apps/er-coap-07/er-coap-07.d 

RELS += \
./apps/er-coap-07/er-coap-07-engine.rel \
./apps/er-coap-07/er-coap-07-observing.rel \
./apps/er-coap-07/er-coap-07-separate.rel \
./apps/er-coap-07/er-coap-07-transactions.rel \
./apps/er-coap-07/er-coap-07.rel 


# Each subdirectory must supply rules for building sources it contributes
apps/er-coap-07/%.rel: ../apps/er-coap-07/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


