################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/arm/at91sam7s/cfs-sdcard-arch.c \
../cpu/arm/at91sam7s/clock.c \
../cpu/arm/at91sam7s/debug-uart.c \
../cpu/arm/at91sam7s/efs-sdcard-arch.c \
../cpu/arm/at91sam7s/elfloader-arm.c \
../cpu/arm/at91sam7s/interrupt-utils.c \
../cpu/arm/at91sam7s/newlib-syscalls.c \
../cpu/arm/at91sam7s/rtimer-arch-interrupt.c \
../cpu/arm/at91sam7s/rtimer-arch.c \
../cpu/arm/at91sam7s/sdcard-arch.c \
../cpu/arm/at91sam7s/startup-SAM7S-arm.c \
../cpu/arm/at91sam7s/startup-SAM7S.c \
../cpu/arm/at91sam7s/sys-interrupt.c \
../cpu/arm/at91sam7s/uip-log.c \
../cpu/arm/at91sam7s/usb-arch.c \
../cpu/arm/at91sam7s/usb-interrupt.c 

C_DEPS += \
./cpu/arm/at91sam7s/cfs-sdcard-arch.d \
./cpu/arm/at91sam7s/clock.d \
./cpu/arm/at91sam7s/debug-uart.d \
./cpu/arm/at91sam7s/efs-sdcard-arch.d \
./cpu/arm/at91sam7s/elfloader-arm.d \
./cpu/arm/at91sam7s/interrupt-utils.d \
./cpu/arm/at91sam7s/newlib-syscalls.d \
./cpu/arm/at91sam7s/rtimer-arch-interrupt.d \
./cpu/arm/at91sam7s/rtimer-arch.d \
./cpu/arm/at91sam7s/sdcard-arch.d \
./cpu/arm/at91sam7s/startup-SAM7S-arm.d \
./cpu/arm/at91sam7s/startup-SAM7S.d \
./cpu/arm/at91sam7s/sys-interrupt.d \
./cpu/arm/at91sam7s/uip-log.d \
./cpu/arm/at91sam7s/usb-arch.d \
./cpu/arm/at91sam7s/usb-interrupt.d 

RELS += \
./cpu/arm/at91sam7s/cfs-sdcard-arch.rel \
./cpu/arm/at91sam7s/clock.rel \
./cpu/arm/at91sam7s/debug-uart.rel \
./cpu/arm/at91sam7s/efs-sdcard-arch.rel \
./cpu/arm/at91sam7s/elfloader-arm.rel \
./cpu/arm/at91sam7s/interrupt-utils.rel \
./cpu/arm/at91sam7s/newlib-syscalls.rel \
./cpu/arm/at91sam7s/rtimer-arch-interrupt.rel \
./cpu/arm/at91sam7s/rtimer-arch.rel \
./cpu/arm/at91sam7s/sdcard-arch.rel \
./cpu/arm/at91sam7s/startup-SAM7S-arm.rel \
./cpu/arm/at91sam7s/startup-SAM7S.rel \
./cpu/arm/at91sam7s/sys-interrupt.rel \
./cpu/arm/at91sam7s/uip-log.rel \
./cpu/arm/at91sam7s/usb-arch.rel \
./cpu/arm/at91sam7s/usb-interrupt.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/arm/at91sam7s/%.rel: ../cpu/arm/at91sam7s/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


