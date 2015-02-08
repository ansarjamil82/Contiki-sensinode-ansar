################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/mc1322x/lib/adc.c \
../cpu/mc1322x/lib/gpio-util.c \
../cpu/mc1322x/lib/gpio.c \
../cpu/mc1322x/lib/i2c.c \
../cpu/mc1322x/lib/maca.c \
../cpu/mc1322x/lib/nvm.c \
../cpu/mc1322x/lib/printf.c \
../cpu/mc1322x/lib/pwm.c \
../cpu/mc1322x/lib/rtc.c \
../cpu/mc1322x/lib/tmr.c \
../cpu/mc1322x/lib/uart1.c \
../cpu/mc1322x/lib/uart2.c 

C_DEPS += \
./cpu/mc1322x/lib/adc.d \
./cpu/mc1322x/lib/gpio-util.d \
./cpu/mc1322x/lib/gpio.d \
./cpu/mc1322x/lib/i2c.d \
./cpu/mc1322x/lib/maca.d \
./cpu/mc1322x/lib/nvm.d \
./cpu/mc1322x/lib/printf.d \
./cpu/mc1322x/lib/pwm.d \
./cpu/mc1322x/lib/rtc.d \
./cpu/mc1322x/lib/tmr.d \
./cpu/mc1322x/lib/uart1.d \
./cpu/mc1322x/lib/uart2.d 

RELS += \
./cpu/mc1322x/lib/adc.rel \
./cpu/mc1322x/lib/gpio-util.rel \
./cpu/mc1322x/lib/gpio.rel \
./cpu/mc1322x/lib/i2c.rel \
./cpu/mc1322x/lib/maca.rel \
./cpu/mc1322x/lib/nvm.rel \
./cpu/mc1322x/lib/printf.rel \
./cpu/mc1322x/lib/pwm.rel \
./cpu/mc1322x/lib/rtc.rel \
./cpu/mc1322x/lib/tmr.rel \
./cpu/mc1322x/lib/uart1.rel \
./cpu/mc1322x/lib/uart2.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/mc1322x/lib/%.rel: ../cpu/mc1322x/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


