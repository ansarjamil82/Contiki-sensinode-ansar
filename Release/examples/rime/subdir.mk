################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/rime/example-abc.c \
../examples/rime/example-announcement.c \
../examples/rime/example-broadcast.c \
../examples/rime/example-collect.c \
../examples/rime/example-mesh.c \
../examples/rime/example-multihop.c \
../examples/rime/example-neighbors.c \
../examples/rime/example-polite.c \
../examples/rime/example-rucb.c \
../examples/rime/example-rudolph0.c \
../examples/rime/example-rudolph1.c \
../examples/rime/example-rudolph2.c \
../examples/rime/example-runicast.c \
../examples/rime/example-trickle.c \
../examples/rime/example-unicast.c \
../examples/rime/symbols.c 

C_DEPS += \
./examples/rime/example-abc.d \
./examples/rime/example-announcement.d \
./examples/rime/example-broadcast.d \
./examples/rime/example-collect.d \
./examples/rime/example-mesh.d \
./examples/rime/example-multihop.d \
./examples/rime/example-neighbors.d \
./examples/rime/example-polite.d \
./examples/rime/example-rucb.d \
./examples/rime/example-rudolph0.d \
./examples/rime/example-rudolph1.d \
./examples/rime/example-rudolph2.d \
./examples/rime/example-runicast.d \
./examples/rime/example-trickle.d \
./examples/rime/example-unicast.d \
./examples/rime/symbols.d 

RELS += \
./examples/rime/example-abc.rel \
./examples/rime/example-announcement.rel \
./examples/rime/example-broadcast.rel \
./examples/rime/example-collect.rel \
./examples/rime/example-mesh.rel \
./examples/rime/example-multihop.rel \
./examples/rime/example-neighbors.rel \
./examples/rime/example-polite.rel \
./examples/rime/example-rucb.rel \
./examples/rime/example-rudolph0.rel \
./examples/rime/example-rudolph1.rel \
./examples/rime/example-rudolph2.rel \
./examples/rime/example-runicast.rel \
./examples/rime/example-trickle.rel \
./examples/rime/example-unicast.rel \
./examples/rime/symbols.rel 


# Each subdirectory must supply rules for building sources it contributes
examples/rime/%.rel: ../examples/rime/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


