################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cpu/mc1322x/tests/adc.c \
../cpu/mc1322x/tests/asm.c \
../cpu/mc1322x/tests/autoack-rx.c \
../cpu/mc1322x/tests/autoack-tx.c \
../cpu/mc1322x/tests/blink-allio.c \
../cpu/mc1322x/tests/blink-blue.c \
../cpu/mc1322x/tests/blink-green.c \
../cpu/mc1322x/tests/blink-red.c \
../cpu/mc1322x/tests/blink-white.c \
../cpu/mc1322x/tests/flasher.c \
../cpu/mc1322x/tests/nvm-read.c \
../cpu/mc1322x/tests/nvm-write.c \
../cpu/mc1322x/tests/per.c \
../cpu/mc1322x/tests/printf.c \
../cpu/mc1322x/tests/put.c \
../cpu/mc1322x/tests/pwm.c \
../cpu/mc1322x/tests/rftest-rx.c \
../cpu/mc1322x/tests/rftest-tx.c \
../cpu/mc1322x/tests/romimg.c \
../cpu/mc1322x/tests/sleep.c \
../cpu/mc1322x/tests/tests.c \
../cpu/mc1322x/tests/tmr-ints.c \
../cpu/mc1322x/tests/tmr.c \
../cpu/mc1322x/tests/u1u2-loopback.c \
../cpu/mc1322x/tests/uart1-loopback.c \
../cpu/mc1322x/tests/wdt.c \
../cpu/mc1322x/tests/xtal-trim.c 

C_DEPS += \
./cpu/mc1322x/tests/adc.d \
./cpu/mc1322x/tests/asm.d \
./cpu/mc1322x/tests/autoack-rx.d \
./cpu/mc1322x/tests/autoack-tx.d \
./cpu/mc1322x/tests/blink-allio.d \
./cpu/mc1322x/tests/blink-blue.d \
./cpu/mc1322x/tests/blink-green.d \
./cpu/mc1322x/tests/blink-red.d \
./cpu/mc1322x/tests/blink-white.d \
./cpu/mc1322x/tests/flasher.d \
./cpu/mc1322x/tests/nvm-read.d \
./cpu/mc1322x/tests/nvm-write.d \
./cpu/mc1322x/tests/per.d \
./cpu/mc1322x/tests/printf.d \
./cpu/mc1322x/tests/put.d \
./cpu/mc1322x/tests/pwm.d \
./cpu/mc1322x/tests/rftest-rx.d \
./cpu/mc1322x/tests/rftest-tx.d \
./cpu/mc1322x/tests/romimg.d \
./cpu/mc1322x/tests/sleep.d \
./cpu/mc1322x/tests/tests.d \
./cpu/mc1322x/tests/tmr-ints.d \
./cpu/mc1322x/tests/tmr.d \
./cpu/mc1322x/tests/u1u2-loopback.d \
./cpu/mc1322x/tests/uart1-loopback.d \
./cpu/mc1322x/tests/wdt.d \
./cpu/mc1322x/tests/xtal-trim.d 

RELS += \
./cpu/mc1322x/tests/adc.rel \
./cpu/mc1322x/tests/asm.rel \
./cpu/mc1322x/tests/autoack-rx.rel \
./cpu/mc1322x/tests/autoack-tx.rel \
./cpu/mc1322x/tests/blink-allio.rel \
./cpu/mc1322x/tests/blink-blue.rel \
./cpu/mc1322x/tests/blink-green.rel \
./cpu/mc1322x/tests/blink-red.rel \
./cpu/mc1322x/tests/blink-white.rel \
./cpu/mc1322x/tests/flasher.rel \
./cpu/mc1322x/tests/nvm-read.rel \
./cpu/mc1322x/tests/nvm-write.rel \
./cpu/mc1322x/tests/per.rel \
./cpu/mc1322x/tests/printf.rel \
./cpu/mc1322x/tests/put.rel \
./cpu/mc1322x/tests/pwm.rel \
./cpu/mc1322x/tests/rftest-rx.rel \
./cpu/mc1322x/tests/rftest-tx.rel \
./cpu/mc1322x/tests/romimg.rel \
./cpu/mc1322x/tests/sleep.rel \
./cpu/mc1322x/tests/tests.rel \
./cpu/mc1322x/tests/tmr-ints.rel \
./cpu/mc1322x/tests/tmr.rel \
./cpu/mc1322x/tests/u1u2-loopback.rel \
./cpu/mc1322x/tests/uart1-loopback.rel \
./cpu/mc1322x/tests/wdt.rel \
./cpu/mc1322x/tests/xtal-trim.rel 


# Each subdirectory must supply rules for building sources it contributes
cpu/mc1322x/tests/%.rel: ../cpu/mc1322x/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


