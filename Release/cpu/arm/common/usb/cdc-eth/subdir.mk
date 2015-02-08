################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/arm/common/usb/cdc-eth/cdc-eth-descriptors.c \
../cpu/arm/common/usb/cdc-eth/cdc-eth-string-descriptors.c \
../cpu/arm/common/usb/cdc-eth/cdc-eth.c \
../cpu/arm/common/usb/cdc-eth/dhcps.c 

C_DEPS += \
./cpu/arm/common/usb/cdc-eth/cdc-eth-descriptors.d \
./cpu/arm/common/usb/cdc-eth/cdc-eth-string-descriptors.d \
./cpu/arm/common/usb/cdc-eth/cdc-eth.d \
./cpu/arm/common/usb/cdc-eth/dhcps.d 

RELS += \
./cpu/arm/common/usb/cdc-eth/cdc-eth-descriptors.rel \
./cpu/arm/common/usb/cdc-eth/cdc-eth-string-descriptors.rel \
./cpu/arm/common/usb/cdc-eth/cdc-eth.rel \
./cpu/arm/common/usb/cdc-eth/dhcps.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/arm/common/usb/cdc-eth/%.rel: ../cpu/arm/common/usb/cdc-eth/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


