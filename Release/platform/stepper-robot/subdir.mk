################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/stepper-robot/cc2420-interrupt.c \
../platform/stepper-robot/cc2420-spi.c \
../platform/stepper-robot/contiki-main.c \
../platform/stepper-robot/core.c \
../platform/stepper-robot/leds-arch.c \
../platform/stepper-robot/robot-main.c \
../platform/stepper-robot/sam7s-spi.c \
../platform/stepper-robot/stepper-process.c \
../platform/stepper-robot/sys-tst.c \
../platform/stepper-robot/usb-main.c 

C_DEPS += \
./platform/stepper-robot/cc2420-interrupt.d \
./platform/stepper-robot/cc2420-spi.d \
./platform/stepper-robot/contiki-main.d \
./platform/stepper-robot/core.d \
./platform/stepper-robot/leds-arch.d \
./platform/stepper-robot/robot-main.d \
./platform/stepper-robot/sam7s-spi.d \
./platform/stepper-robot/stepper-process.d \
./platform/stepper-robot/sys-tst.d \
./platform/stepper-robot/usb-main.d 

RELS += \
./platform/stepper-robot/cc2420-interrupt.rel \
./platform/stepper-robot/cc2420-spi.rel \
./platform/stepper-robot/contiki-main.rel \
./platform/stepper-robot/core.rel \
./platform/stepper-robot/leds-arch.rel \
./platform/stepper-robot/robot-main.rel \
./platform/stepper-robot/sam7s-spi.rel \
./platform/stepper-robot/stepper-process.rel \
./platform/stepper-robot/sys-tst.rel \
./platform/stepper-robot/usb-main.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/stepper-robot/%.rel: ../platform/stepper-robot/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


