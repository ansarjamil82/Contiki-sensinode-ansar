################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/pc-6001/contiki-client-main.c \
../platform/pc-6001/contiki-desktop-main.c \
../platform/pc-6001/contiki-loader-main.c \
../platform/pc-6001/contiki-main.c \
../platform/pc-6001/contiki-minimal-main.c \
../platform/pc-6001/contiki-serial-main.c \
../platform/pc-6001/contiki-server-main.c 

C_DEPS += \
./platform/pc-6001/contiki-client-main.d \
./platform/pc-6001/contiki-desktop-main.d \
./platform/pc-6001/contiki-loader-main.d \
./platform/pc-6001/contiki-main.d \
./platform/pc-6001/contiki-minimal-main.d \
./platform/pc-6001/contiki-serial-main.d \
./platform/pc-6001/contiki-server-main.d 

RELS += \
./platform/pc-6001/contiki-client-main.rel \
./platform/pc-6001/contiki-desktop-main.rel \
./platform/pc-6001/contiki-loader-main.rel \
./platform/pc-6001/contiki-main.rel \
./platform/pc-6001/contiki-minimal-main.rel \
./platform/pc-6001/contiki-serial-main.rel \
./platform/pc-6001/contiki-server-main.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/pc-6001/%.rel: ../platform/pc-6001/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


