################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/avr-raven/apps/raven-webserver/http-strings.c \
../platform/avr-raven/apps/raven-webserver/httpd-cfs.c \
../platform/avr-raven/apps/raven-webserver/httpd-cgi.c \
../platform/avr-raven/apps/raven-webserver/httpd-fs.c \
../platform/avr-raven/apps/raven-webserver/httpd.c \
../platform/avr-raven/apps/raven-webserver/webserver-dsc.c \
../platform/avr-raven/apps/raven-webserver/webserver-nogui.c \
../platform/avr-raven/apps/raven-webserver/webserver.c 

C_DEPS += \
./platform/avr-raven/apps/raven-webserver/http-strings.d \
./platform/avr-raven/apps/raven-webserver/httpd-cfs.d \
./platform/avr-raven/apps/raven-webserver/httpd-cgi.d \
./platform/avr-raven/apps/raven-webserver/httpd-fs.d \
./platform/avr-raven/apps/raven-webserver/httpd.d \
./platform/avr-raven/apps/raven-webserver/webserver-dsc.d \
./platform/avr-raven/apps/raven-webserver/webserver-nogui.d \
./platform/avr-raven/apps/raven-webserver/webserver.d 

RELS += \
./platform/avr-raven/apps/raven-webserver/http-strings.rel \
./platform/avr-raven/apps/raven-webserver/httpd-cfs.rel \
./platform/avr-raven/apps/raven-webserver/httpd-cgi.rel \
./platform/avr-raven/apps/raven-webserver/httpd-fs.rel \
./platform/avr-raven/apps/raven-webserver/httpd.rel \
./platform/avr-raven/apps/raven-webserver/webserver-dsc.rel \
./platform/avr-raven/apps/raven-webserver/webserver-nogui.rel \
./platform/avr-raven/apps/raven-webserver/webserver.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/avr-raven/apps/raven-webserver/%.rel: ../platform/avr-raven/apps/raven-webserver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


