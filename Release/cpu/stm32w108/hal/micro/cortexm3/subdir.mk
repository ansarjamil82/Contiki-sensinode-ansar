################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/stm32w108/hal/micro/cortexm3/adc.c \
../cpu/stm32w108/hal/micro/cortexm3/board.c \
../cpu/stm32w108/hal/micro/cortexm3/button.c \
../cpu/stm32w108/hal/micro/cortexm3/clocks.c \
../cpu/stm32w108/hal/micro/cortexm3/flash.c \
../cpu/stm32w108/hal/micro/cortexm3/led.c \
../cpu/stm32w108/hal/micro/cortexm3/mems.c \
../cpu/stm32w108/hal/micro/cortexm3/mfg-token.c \
../cpu/stm32w108/hal/micro/cortexm3/micro-common-internal.c \
../cpu/stm32w108/hal/micro/cortexm3/micro-common.c \
../cpu/stm32w108/hal/micro/cortexm3/micro.c \
../cpu/stm32w108/hal/micro/cortexm3/nvm.c \
../cpu/stm32w108/hal/micro/cortexm3/sleep.c \
../cpu/stm32w108/hal/micro/cortexm3/system-timer.c \
../cpu/stm32w108/hal/micro/cortexm3/temperature_sensor.c \
../cpu/stm32w108/hal/micro/cortexm3/uart.c 

C_DEPS += \
./cpu/stm32w108/hal/micro/cortexm3/adc.d \
./cpu/stm32w108/hal/micro/cortexm3/board.d \
./cpu/stm32w108/hal/micro/cortexm3/button.d \
./cpu/stm32w108/hal/micro/cortexm3/clocks.d \
./cpu/stm32w108/hal/micro/cortexm3/flash.d \
./cpu/stm32w108/hal/micro/cortexm3/led.d \
./cpu/stm32w108/hal/micro/cortexm3/mems.d \
./cpu/stm32w108/hal/micro/cortexm3/mfg-token.d \
./cpu/stm32w108/hal/micro/cortexm3/micro-common-internal.d \
./cpu/stm32w108/hal/micro/cortexm3/micro-common.d \
./cpu/stm32w108/hal/micro/cortexm3/micro.d \
./cpu/stm32w108/hal/micro/cortexm3/nvm.d \
./cpu/stm32w108/hal/micro/cortexm3/sleep.d \
./cpu/stm32w108/hal/micro/cortexm3/system-timer.d \
./cpu/stm32w108/hal/micro/cortexm3/temperature_sensor.d \
./cpu/stm32w108/hal/micro/cortexm3/uart.d 

RELS += \
./cpu/stm32w108/hal/micro/cortexm3/adc.rel \
./cpu/stm32w108/hal/micro/cortexm3/board.rel \
./cpu/stm32w108/hal/micro/cortexm3/button.rel \
./cpu/stm32w108/hal/micro/cortexm3/clocks.rel \
./cpu/stm32w108/hal/micro/cortexm3/flash.rel \
./cpu/stm32w108/hal/micro/cortexm3/led.rel \
./cpu/stm32w108/hal/micro/cortexm3/mems.rel \
./cpu/stm32w108/hal/micro/cortexm3/mfg-token.rel \
./cpu/stm32w108/hal/micro/cortexm3/micro-common-internal.rel \
./cpu/stm32w108/hal/micro/cortexm3/micro-common.rel \
./cpu/stm32w108/hal/micro/cortexm3/micro.rel \
./cpu/stm32w108/hal/micro/cortexm3/nvm.rel \
./cpu/stm32w108/hal/micro/cortexm3/sleep.rel \
./cpu/stm32w108/hal/micro/cortexm3/system-timer.rel \
./cpu/stm32w108/hal/micro/cortexm3/temperature_sensor.rel \
./cpu/stm32w108/hal/micro/cortexm3/uart.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/stm32w108/hal/micro/cortexm3/%.rel: ../cpu/stm32w108/hal/micro/cortexm3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


