################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/net/rime/abc.c \
../core/net/rime/announcement.c \
../core/net/rime/broadcast-announcement.c \
../core/net/rime/broadcast.c \
../core/net/rime/chameleon-bitopt.c \
../core/net/rime/chameleon-raw.c \
../core/net/rime/chameleon.c \
../core/net/rime/channel.c \
../core/net/rime/collect-link-estimate.c \
../core/net/rime/collect-neighbor.c \
../core/net/rime/collect.c \
../core/net/rime/ipolite.c \
../core/net/rime/mesh.c \
../core/net/rime/multihop.c \
../core/net/rime/neighbor-discovery.c \
../core/net/rime/netflood.c \
../core/net/rime/polite-announcement.c \
../core/net/rime/polite.c \
../core/net/rime/rime-udp.c \
../core/net/rime/rime.c \
../core/net/rime/rimeaddr.c \
../core/net/rime/rimestats.c \
../core/net/rime/rmh.c \
../core/net/rime/route-discovery.c \
../core/net/rime/route.c \
../core/net/rime/rucb.c \
../core/net/rime/rudolph0.c \
../core/net/rime/rudolph1.c \
../core/net/rime/rudolph2.c \
../core/net/rime/runicast.c \
../core/net/rime/stbroadcast.c \
../core/net/rime/stunicast.c \
../core/net/rime/timesynch.c \
../core/net/rime/trickle.c \
../core/net/rime/unicast.c 

C_DEPS += \
./core/net/rime/abc.d \
./core/net/rime/announcement.d \
./core/net/rime/broadcast-announcement.d \
./core/net/rime/broadcast.d \
./core/net/rime/chameleon-bitopt.d \
./core/net/rime/chameleon-raw.d \
./core/net/rime/chameleon.d \
./core/net/rime/channel.d \
./core/net/rime/collect-link-estimate.d \
./core/net/rime/collect-neighbor.d \
./core/net/rime/collect.d \
./core/net/rime/ipolite.d \
./core/net/rime/mesh.d \
./core/net/rime/multihop.d \
./core/net/rime/neighbor-discovery.d \
./core/net/rime/netflood.d \
./core/net/rime/polite-announcement.d \
./core/net/rime/polite.d \
./core/net/rime/rime-udp.d \
./core/net/rime/rime.d \
./core/net/rime/rimeaddr.d \
./core/net/rime/rimestats.d \
./core/net/rime/rmh.d \
./core/net/rime/route-discovery.d \
./core/net/rime/route.d \
./core/net/rime/rucb.d \
./core/net/rime/rudolph0.d \
./core/net/rime/rudolph1.d \
./core/net/rime/rudolph2.d \
./core/net/rime/runicast.d \
./core/net/rime/stbroadcast.d \
./core/net/rime/stunicast.d \
./core/net/rime/timesynch.d \
./core/net/rime/trickle.d \
./core/net/rime/unicast.d 

RELS += \
./core/net/rime/abc.rel \
./core/net/rime/announcement.rel \
./core/net/rime/broadcast-announcement.rel \
./core/net/rime/broadcast.rel \
./core/net/rime/chameleon-bitopt.rel \
./core/net/rime/chameleon-raw.rel \
./core/net/rime/chameleon.rel \
./core/net/rime/channel.rel \
./core/net/rime/collect-link-estimate.rel \
./core/net/rime/collect-neighbor.rel \
./core/net/rime/collect.rel \
./core/net/rime/ipolite.rel \
./core/net/rime/mesh.rel \
./core/net/rime/multihop.rel \
./core/net/rime/neighbor-discovery.rel \
./core/net/rime/netflood.rel \
./core/net/rime/polite-announcement.rel \
./core/net/rime/polite.rel \
./core/net/rime/rime-udp.rel \
./core/net/rime/rime.rel \
./core/net/rime/rimeaddr.rel \
./core/net/rime/rimestats.rel \
./core/net/rime/rmh.rel \
./core/net/rime/route-discovery.rel \
./core/net/rime/route.rel \
./core/net/rime/rucb.rel \
./core/net/rime/rudolph0.rel \
./core/net/rime/rudolph1.rel \
./core/net/rime/rudolph2.rel \
./core/net/rime/runicast.rel \
./core/net/rime/stbroadcast.rel \
./core/net/rime/stunicast.rel \
./core/net/rime/timesynch.rel \
./core/net/rime/trickle.rel \
./core/net/rime/unicast.rel 


# Each subdirectory must supply rules for building sources it contributes
core/net/rime/%.rel: ../core/net/rime/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


