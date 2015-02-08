################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/stm32w108/small_printf/_SP_printf.c \
../cpu/stm32w108/small_printf/_SP_puts.c \
../cpu/stm32w108/small_printf/_SP_snprintf.c \
../cpu/stm32w108/small_printf/_SP_sprintf.c \
../cpu/stm32w108/small_printf/_SP_vfprintf.c 

C_DEPS += \
./cpu/stm32w108/small_printf/_SP_printf.d \
./cpu/stm32w108/small_printf/_SP_puts.d \
./cpu/stm32w108/small_printf/_SP_snprintf.d \
./cpu/stm32w108/small_printf/_SP_sprintf.d \
./cpu/stm32w108/small_printf/_SP_vfprintf.d 

RELS += \
./cpu/stm32w108/small_printf/_SP_printf.rel \
./cpu/stm32w108/small_printf/_SP_puts.rel \
./cpu/stm32w108/small_printf/_SP_snprintf.rel \
./cpu/stm32w108/small_printf/_SP_sprintf.rel \
./cpu/stm32w108/small_printf/_SP_vfprintf.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/stm32w108/small_printf/%.rel: ../cpu/stm32w108/small_printf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


