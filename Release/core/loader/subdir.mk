################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/loader/cle.c \
../core/loader/cle_avr.c \
../core/loader/cle_msp430.c \
../core/loader/cmod.c \
../core/loader/dlloader.c \
../core/loader/elfloader-avr.c \
../core/loader/elfloader-msp430.c \
../core/loader/elfloader-stub.c \
../core/loader/elfloader-x86.c \
../core/loader/elfloader.c \
../core/loader/elfloader_compat.c \
../core/loader/sym.c \
../core/loader/symtab-avr.c \
../core/loader/symtab.c 

C_DEPS += \
./core/loader/cle.d \
./core/loader/cle_avr.d \
./core/loader/cle_msp430.d \
./core/loader/cmod.d \
./core/loader/dlloader.d \
./core/loader/elfloader-avr.d \
./core/loader/elfloader-msp430.d \
./core/loader/elfloader-stub.d \
./core/loader/elfloader-x86.d \
./core/loader/elfloader.d \
./core/loader/elfloader_compat.d \
./core/loader/sym.d \
./core/loader/symtab-avr.d \
./core/loader/symtab.d 

RELS += \
./core/loader/cle.rel \
./core/loader/cle_avr.rel \
./core/loader/cle_msp430.rel \
./core/loader/cmod.rel \
./core/loader/dlloader.rel \
./core/loader/elfloader-avr.rel \
./core/loader/elfloader-msp430.rel \
./core/loader/elfloader-stub.rel \
./core/loader/elfloader-x86.rel \
./core/loader/elfloader.rel \
./core/loader/elfloader_compat.rel \
./core/loader/sym.rel \
./core/loader/symtab-avr.rel \
./core/loader/symtab.rel 


# Each subdirectory must supply rules for building sources it contributes
core/loader/%.rel: ../core/loader/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


