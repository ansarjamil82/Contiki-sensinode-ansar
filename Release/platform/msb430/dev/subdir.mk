################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/msb430/dev/adc.c \
../platform/msb430/dev/cc1020-uip.c \
../platform/msb430/dev/cc1020.c \
../platform/msb430/dev/dma.c \
../platform/msb430/dev/infomem.c \
../platform/msb430/dev/msb430-uart1.c \
../platform/msb430/dev/rs232.c \
../platform/msb430/dev/sd-arch.c \
../platform/msb430/dev/sd.c 

C_DEPS += \
./platform/msb430/dev/adc.d \
./platform/msb430/dev/cc1020-uip.d \
./platform/msb430/dev/cc1020.d \
./platform/msb430/dev/dma.d \
./platform/msb430/dev/infomem.d \
./platform/msb430/dev/msb430-uart1.d \
./platform/msb430/dev/rs232.d \
./platform/msb430/dev/sd-arch.d \
./platform/msb430/dev/sd.d 

RELS += \
./platform/msb430/dev/adc.rel \
./platform/msb430/dev/cc1020-uip.rel \
./platform/msb430/dev/cc1020.rel \
./platform/msb430/dev/dma.rel \
./platform/msb430/dev/infomem.rel \
./platform/msb430/dev/msb430-uart1.rel \
./platform/msb430/dev/rs232.rel \
./platform/msb430/dev/sd-arch.rel \
./platform/msb430/dev/sd.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/msb430/dev/%.rel: ../platform/msb430/dev/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


