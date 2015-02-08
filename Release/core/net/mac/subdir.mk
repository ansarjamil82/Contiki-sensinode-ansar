################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/net/mac/contikimac.c \
../core/net/mac/csma.c \
../core/net/mac/ctdma_mac.c \
../core/net/mac/cxmac.c \
../core/net/mac/frame802154.c \
../core/net/mac/framer-802154.c \
../core/net/mac/framer-nullmac.c \
../core/net/mac/lpp.c \
../core/net/mac/mac.c \
../core/net/mac/nullmac.c \
../core/net/mac/nullrdc-noframer.c \
../core/net/mac/nullrdc.c \
../core/net/mac/phase.c \
../core/net/mac/sicslowmac.c \
../core/net/mac/tdma_mac.c \
../core/net/mac/xmac.c 

C_DEPS += \
./core/net/mac/contikimac.d \
./core/net/mac/csma.d \
./core/net/mac/ctdma_mac.d \
./core/net/mac/cxmac.d \
./core/net/mac/frame802154.d \
./core/net/mac/framer-802154.d \
./core/net/mac/framer-nullmac.d \
./core/net/mac/lpp.d \
./core/net/mac/mac.d \
./core/net/mac/nullmac.d \
./core/net/mac/nullrdc-noframer.d \
./core/net/mac/nullrdc.d \
./core/net/mac/phase.d \
./core/net/mac/sicslowmac.d \
./core/net/mac/tdma_mac.d \
./core/net/mac/xmac.d 

RELS += \
./core/net/mac/contikimac.rel \
./core/net/mac/csma.rel \
./core/net/mac/ctdma_mac.rel \
./core/net/mac/cxmac.rel \
./core/net/mac/frame802154.rel \
./core/net/mac/framer-802154.rel \
./core/net/mac/framer-nullmac.rel \
./core/net/mac/lpp.rel \
./core/net/mac/mac.rel \
./core/net/mac/nullmac.rel \
./core/net/mac/nullrdc-noframer.rel \
./core/net/mac/nullrdc.rel \
./core/net/mac/phase.rel \
./core/net/mac/sicslowmac.rel \
./core/net/mac/tdma_mac.rel \
./core/net/mac/xmac.rel 


# Each subdirectory must supply rules for building sources it contributes
core/net/mac/%.rel: ../core/net/mac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


