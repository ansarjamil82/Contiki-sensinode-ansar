################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/avr-ravenusb/cdc_task.c \
../platform/avr-ravenusb/contiki-raven-default-init-lowlevel.c \
../platform/avr-ravenusb/contiki-raven-default-init-net.c \
../platform/avr-ravenusb/contiki-raven-main.c \
../platform/avr-ravenusb/httpd-simple-avr.c \
../platform/avr-ravenusb/loadable_prg.c \
../platform/avr-ravenusb/rng.c \
../platform/avr-ravenusb/sicslow_ethernet.c 

C_DEPS += \
./platform/avr-ravenusb/cdc_task.d \
./platform/avr-ravenusb/contiki-raven-default-init-lowlevel.d \
./platform/avr-ravenusb/contiki-raven-default-init-net.d \
./platform/avr-ravenusb/contiki-raven-main.d \
./platform/avr-ravenusb/httpd-simple-avr.d \
./platform/avr-ravenusb/loadable_prg.d \
./platform/avr-ravenusb/rng.d \
./platform/avr-ravenusb/sicslow_ethernet.d 

RELS += \
./platform/avr-ravenusb/cdc_task.rel \
./platform/avr-ravenusb/contiki-raven-default-init-lowlevel.rel \
./platform/avr-ravenusb/contiki-raven-default-init-net.rel \
./platform/avr-ravenusb/contiki-raven-main.rel \
./platform/avr-ravenusb/httpd-simple-avr.rel \
./platform/avr-ravenusb/loadable_prg.rel \
./platform/avr-ravenusb/rng.rel \
./platform/avr-ravenusb/sicslow_ethernet.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/avr-ravenusb/%.rel: ../platform/avr-ravenusb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


