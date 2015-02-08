################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/ipv6/native-border-router/border-router-cmds.c \
../examples/ipv6/native-border-router/border-router-rdc.c \
../examples/ipv6/native-border-router/border-router.c \
../examples/ipv6/native-border-router/httpd-simple.c \
../examples/ipv6/native-border-router/slip-config.c \
../examples/ipv6/native-border-router/slip-dev.c \
../examples/ipv6/native-border-router/tun-bridge.c 

C_DEPS += \
./examples/ipv6/native-border-router/border-router-cmds.d \
./examples/ipv6/native-border-router/border-router-rdc.d \
./examples/ipv6/native-border-router/border-router.d \
./examples/ipv6/native-border-router/httpd-simple.d \
./examples/ipv6/native-border-router/slip-config.d \
./examples/ipv6/native-border-router/slip-dev.d \
./examples/ipv6/native-border-router/tun-bridge.d 

RELS += \
./examples/ipv6/native-border-router/border-router-cmds.rel \
./examples/ipv6/native-border-router/border-router-rdc.rel \
./examples/ipv6/native-border-router/border-router.rel \
./examples/ipv6/native-border-router/httpd-simple.rel \
./examples/ipv6/native-border-router/slip-config.rel \
./examples/ipv6/native-border-router/slip-dev.rel \
./examples/ipv6/native-border-router/tun-bridge.rel 


# Each subdirectory must supply rules for building sources it contributes
examples/ipv6/native-border-router/%.rel: ../examples/ipv6/native-border-router/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


