################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/net/dhcpc.c \
../core/net/hc.c \
../core/net/neighbor-attr.c \
../core/net/neighbor-info.c \
../core/net/netstack.c \
../core/net/packetbuf.c \
../core/net/packetqueue.c \
../core/net/psock.c \
../core/net/queuebuf.c \
../core/net/rawpacket-udp.c \
../core/net/resolv.c \
../core/net/sicslowpan.c \
../core/net/simple-udp.c \
../core/net/slipdev.c \
../core/net/tcpdump.c \
../core/net/tcpip.c \
../core/net/uaodv-rt.c \
../core/net/uaodv.c \
../core/net/uip-debug.c \
../core/net/uip-ds6.c \
../core/net/uip-fw-drv.c \
../core/net/uip-fw.c \
../core/net/uip-icmp6.c \
../core/net/uip-nd6.c \
../core/net/uip-neighbor.c \
../core/net/uip-over-mesh.c \
../core/net/uip-packetqueue.c \
../core/net/uip-split.c \
../core/net/uip-udp-packet.c \
../core/net/uip.c \
../core/net/uip6.c \
../core/net/uip_arp.c \
../core/net/uiplib.c 

C_DEPS += \
./core/net/dhcpc.d \
./core/net/hc.d \
./core/net/neighbor-attr.d \
./core/net/neighbor-info.d \
./core/net/netstack.d \
./core/net/packetbuf.d \
./core/net/packetqueue.d \
./core/net/psock.d \
./core/net/queuebuf.d \
./core/net/rawpacket-udp.d \
./core/net/resolv.d \
./core/net/sicslowpan.d \
./core/net/simple-udp.d \
./core/net/slipdev.d \
./core/net/tcpdump.d \
./core/net/tcpip.d \
./core/net/uaodv-rt.d \
./core/net/uaodv.d \
./core/net/uip-debug.d \
./core/net/uip-ds6.d \
./core/net/uip-fw-drv.d \
./core/net/uip-fw.d \
./core/net/uip-icmp6.d \
./core/net/uip-nd6.d \
./core/net/uip-neighbor.d \
./core/net/uip-over-mesh.d \
./core/net/uip-packetqueue.d \
./core/net/uip-split.d \
./core/net/uip-udp-packet.d \
./core/net/uip.d \
./core/net/uip6.d \
./core/net/uip_arp.d \
./core/net/uiplib.d 

RELS += \
./core/net/dhcpc.rel \
./core/net/hc.rel \
./core/net/neighbor-attr.rel \
./core/net/neighbor-info.rel \
./core/net/netstack.rel \
./core/net/packetbuf.rel \
./core/net/packetqueue.rel \
./core/net/psock.rel \
./core/net/queuebuf.rel \
./core/net/rawpacket-udp.rel \
./core/net/resolv.rel \
./core/net/sicslowpan.rel \
./core/net/simple-udp.rel \
./core/net/slipdev.rel \
./core/net/tcpdump.rel \
./core/net/tcpip.rel \
./core/net/uaodv-rt.rel \
./core/net/uaodv.rel \
./core/net/uip-debug.rel \
./core/net/uip-ds6.rel \
./core/net/uip-fw-drv.rel \
./core/net/uip-fw.rel \
./core/net/uip-icmp6.rel \
./core/net/uip-nd6.rel \
./core/net/uip-neighbor.rel \
./core/net/uip-over-mesh.rel \
./core/net/uip-packetqueue.rel \
./core/net/uip-split.rel \
./core/net/uip-udp-packet.rel \
./core/net/uip.rel \
./core/net/uip6.rel \
./core/net/uip_arp.rel \
./core/net/uiplib.rel 


# Each subdirectory must supply rules for building sources it contributes
core/net/%.rel: ../core/net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


