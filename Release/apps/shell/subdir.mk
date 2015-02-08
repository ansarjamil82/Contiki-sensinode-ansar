################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apps/shell/gui-shell.c \
../apps/shell/shell-base64.c \
../apps/shell/shell-blink.c \
../apps/shell/shell-checkpoint.c \
../apps/shell/shell-coffee.c \
../apps/shell/shell-collect-view.c \
../apps/shell/shell-crc.c \
../apps/shell/shell-download.c \
../apps/shell/shell-dsc.c \
../apps/shell/shell-exec.c \
../apps/shell/shell-file.c \
../apps/shell/shell-httpd.c \
../apps/shell/shell-irc.c \
../apps/shell/shell-memdebug.c \
../apps/shell/shell-netfile.c \
../apps/shell/shell-netperf.c \
../apps/shell/shell-netstat.c \
../apps/shell/shell-ping.c \
../apps/shell/shell-power.c \
../apps/shell/shell-powertrace.c \
../apps/shell/shell-profile.c \
../apps/shell/shell-ps.c \
../apps/shell/shell-reboot.c \
../apps/shell/shell-rime-debug-runicast.c \
../apps/shell/shell-rime-debug.c \
../apps/shell/shell-rime-neighbors.c \
../apps/shell/shell-rime-netcmd.c \
../apps/shell/shell-rime-ping.c \
../apps/shell/shell-rime-sendcmd.c \
../apps/shell/shell-rime-sniff.c \
../apps/shell/shell-rime-unicast.c \
../apps/shell/shell-rime.c \
../apps/shell/shell-rsh.c \
../apps/shell/shell-run.c \
../apps/shell/shell-sendtest.c \
../apps/shell/shell-sensortweet.c \
../apps/shell/shell-sky.c \
../apps/shell/shell-tcpsend.c \
../apps/shell/shell-text.c \
../apps/shell/shell-time.c \
../apps/shell/shell-tweet.c \
../apps/shell/shell-udpsend.c \
../apps/shell/shell-vars.c \
../apps/shell/shell-wget.c \
../apps/shell/shell.c 

C_DEPS += \
./apps/shell/gui-shell.d \
./apps/shell/shell-base64.d \
./apps/shell/shell-blink.d \
./apps/shell/shell-checkpoint.d \
./apps/shell/shell-coffee.d \
./apps/shell/shell-collect-view.d \
./apps/shell/shell-crc.d \
./apps/shell/shell-download.d \
./apps/shell/shell-dsc.d \
./apps/shell/shell-exec.d \
./apps/shell/shell-file.d \
./apps/shell/shell-httpd.d \
./apps/shell/shell-irc.d \
./apps/shell/shell-memdebug.d \
./apps/shell/shell-netfile.d \
./apps/shell/shell-netperf.d \
./apps/shell/shell-netstat.d \
./apps/shell/shell-ping.d \
./apps/shell/shell-power.d \
./apps/shell/shell-powertrace.d \
./apps/shell/shell-profile.d \
./apps/shell/shell-ps.d \
./apps/shell/shell-reboot.d \
./apps/shell/shell-rime-debug-runicast.d \
./apps/shell/shell-rime-debug.d \
./apps/shell/shell-rime-neighbors.d \
./apps/shell/shell-rime-netcmd.d \
./apps/shell/shell-rime-ping.d \
./apps/shell/shell-rime-sendcmd.d \
./apps/shell/shell-rime-sniff.d \
./apps/shell/shell-rime-unicast.d \
./apps/shell/shell-rime.d \
./apps/shell/shell-rsh.d \
./apps/shell/shell-run.d \
./apps/shell/shell-sendtest.d \
./apps/shell/shell-sensortweet.d \
./apps/shell/shell-sky.d \
./apps/shell/shell-tcpsend.d \
./apps/shell/shell-text.d \
./apps/shell/shell-time.d \
./apps/shell/shell-tweet.d \
./apps/shell/shell-udpsend.d \
./apps/shell/shell-vars.d \
./apps/shell/shell-wget.d \
./apps/shell/shell.d 

RELS += \
./apps/shell/gui-shell.rel \
./apps/shell/shell-base64.rel \
./apps/shell/shell-blink.rel \
./apps/shell/shell-checkpoint.rel \
./apps/shell/shell-coffee.rel \
./apps/shell/shell-collect-view.rel \
./apps/shell/shell-crc.rel \
./apps/shell/shell-download.rel \
./apps/shell/shell-dsc.rel \
./apps/shell/shell-exec.rel \
./apps/shell/shell-file.rel \
./apps/shell/shell-httpd.rel \
./apps/shell/shell-irc.rel \
./apps/shell/shell-memdebug.rel \
./apps/shell/shell-netfile.rel \
./apps/shell/shell-netperf.rel \
./apps/shell/shell-netstat.rel \
./apps/shell/shell-ping.rel \
./apps/shell/shell-power.rel \
./apps/shell/shell-powertrace.rel \
./apps/shell/shell-profile.rel \
./apps/shell/shell-ps.rel \
./apps/shell/shell-reboot.rel \
./apps/shell/shell-rime-debug-runicast.rel \
./apps/shell/shell-rime-debug.rel \
./apps/shell/shell-rime-neighbors.rel \
./apps/shell/shell-rime-netcmd.rel \
./apps/shell/shell-rime-ping.rel \
./apps/shell/shell-rime-sendcmd.rel \
./apps/shell/shell-rime-sniff.rel \
./apps/shell/shell-rime-unicast.rel \
./apps/shell/shell-rime.rel \
./apps/shell/shell-rsh.rel \
./apps/shell/shell-run.rel \
./apps/shell/shell-sendtest.rel \
./apps/shell/shell-sensortweet.rel \
./apps/shell/shell-sky.rel \
./apps/shell/shell-tcpsend.rel \
./apps/shell/shell-text.rel \
./apps/shell/shell-time.rel \
./apps/shell/shell-tweet.rel \
./apps/shell/shell-udpsend.rel \
./apps/shell/shell-vars.rel \
./apps/shell/shell-wget.rel \
./apps/shell/shell.rel 


# Each subdirectory must supply rules for building sources it contributes
apps/shell/%.rel: ../apps/shell/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


