################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/net/rpl/rpl-dag.c \
../core/net/rpl/rpl-ext-header.c \
../core/net/rpl/rpl-icmp6.c \
../core/net/rpl/rpl-of-etx.c \
../core/net/rpl/rpl-of0.c \
../core/net/rpl/rpl-timers.c \
../core/net/rpl/rpl.c 

C_DEPS += \
./core/net/rpl/rpl-dag.d \
./core/net/rpl/rpl-ext-header.d \
./core/net/rpl/rpl-icmp6.d \
./core/net/rpl/rpl-of-etx.d \
./core/net/rpl/rpl-of0.d \
./core/net/rpl/rpl-timers.d \
./core/net/rpl/rpl.d 

RELS += \
./core/net/rpl/rpl-dag.rel \
./core/net/rpl/rpl-ext-header.rel \
./core/net/rpl/rpl-icmp6.rel \
./core/net/rpl/rpl-of-etx.rel \
./core/net/rpl/rpl-of0.rel \
./core/net/rpl/rpl-timers.rel \
./core/net/rpl/rpl.rel 


# Each subdirectory must supply rules for building sources it contributes
core/net/rpl/%.rel: ../core/net/rpl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


