################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/stm32w108/e_stdio/src/_SP_printf.c \
../cpu/stm32w108/e_stdio/src/_SP_puts.c \
../cpu/stm32w108/e_stdio/src/_SP_snprintf.c \
../cpu/stm32w108/e_stdio/src/_SP_sprintf.c \
../cpu/stm32w108/e_stdio/src/_SP_vfprintf.c \
../cpu/stm32w108/e_stdio/src/scanf.c \
../cpu/stm32w108/e_stdio/src/small_dtoa.c \
../cpu/stm32w108/e_stdio/src/small_mprec.c \
../cpu/stm32w108/e_stdio/src/small_strtod.c \
../cpu/stm32w108/e_stdio/src/small_vfsscanf.c \
../cpu/stm32w108/e_stdio/src/small_wcrtomb.c \
../cpu/stm32w108/e_stdio/src/small_wcsrtombs.c \
../cpu/stm32w108/e_stdio/src/small_wctomb_r.c \
../cpu/stm32w108/e_stdio/src/sscanf.c \
../cpu/stm32w108/e_stdio/src/syscalls.c \
../cpu/stm32w108/e_stdio/src/test.c \
../cpu/stm32w108/e_stdio/src/test_mes.c \
../cpu/stm32w108/e_stdio/src/test_printf.c \
../cpu/stm32w108/e_stdio/src/test_scanf.c 

C_DEPS += \
./cpu/stm32w108/e_stdio/src/_SP_printf.d \
./cpu/stm32w108/e_stdio/src/_SP_puts.d \
./cpu/stm32w108/e_stdio/src/_SP_snprintf.d \
./cpu/stm32w108/e_stdio/src/_SP_sprintf.d \
./cpu/stm32w108/e_stdio/src/_SP_vfprintf.d \
./cpu/stm32w108/e_stdio/src/scanf.d \
./cpu/stm32w108/e_stdio/src/small_dtoa.d \
./cpu/stm32w108/e_stdio/src/small_mprec.d \
./cpu/stm32w108/e_stdio/src/small_strtod.d \
./cpu/stm32w108/e_stdio/src/small_vfsscanf.d \
./cpu/stm32w108/e_stdio/src/small_wcrtomb.d \
./cpu/stm32w108/e_stdio/src/small_wcsrtombs.d \
./cpu/stm32w108/e_stdio/src/small_wctomb_r.d \
./cpu/stm32w108/e_stdio/src/sscanf.d \
./cpu/stm32w108/e_stdio/src/syscalls.d \
./cpu/stm32w108/e_stdio/src/test.d \
./cpu/stm32w108/e_stdio/src/test_mes.d \
./cpu/stm32w108/e_stdio/src/test_printf.d \
./cpu/stm32w108/e_stdio/src/test_scanf.d 

RELS += \
./cpu/stm32w108/e_stdio/src/_SP_printf.rel \
./cpu/stm32w108/e_stdio/src/_SP_puts.rel \
./cpu/stm32w108/e_stdio/src/_SP_snprintf.rel \
./cpu/stm32w108/e_stdio/src/_SP_sprintf.rel \
./cpu/stm32w108/e_stdio/src/_SP_vfprintf.rel \
./cpu/stm32w108/e_stdio/src/scanf.rel \
./cpu/stm32w108/e_stdio/src/small_dtoa.rel \
./cpu/stm32w108/e_stdio/src/small_mprec.rel \
./cpu/stm32w108/e_stdio/src/small_strtod.rel \
./cpu/stm32w108/e_stdio/src/small_vfsscanf.rel \
./cpu/stm32w108/e_stdio/src/small_wcrtomb.rel \
./cpu/stm32w108/e_stdio/src/small_wcsrtombs.rel \
./cpu/stm32w108/e_stdio/src/small_wctomb_r.rel \
./cpu/stm32w108/e_stdio/src/sscanf.rel \
./cpu/stm32w108/e_stdio/src/syscalls.rel \
./cpu/stm32w108/e_stdio/src/test.rel \
./cpu/stm32w108/e_stdio/src/test_mes.rel \
./cpu/stm32w108/e_stdio/src/test_printf.rel \
./cpu/stm32w108/e_stdio/src/test_scanf.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/stm32w108/e_stdio/src/%.rel: ../cpu/stm32w108/e_stdio/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


