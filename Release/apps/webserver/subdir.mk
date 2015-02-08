################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apps/webserver/http-strings.c \
../apps/webserver/httpd-cfs.c \
../apps/webserver/httpd-cgi.c \
../apps/webserver/httpd-fs.c \
../apps/webserver/httpd-fsdata.c \
../apps/webserver/httpd.c \
../apps/webserver/urlconv.c \
../apps/webserver/webserver-dsc.c \
../apps/webserver/webserver-nogui.c \
../apps/webserver/webserver.c 

C_DEPS += \
./apps/webserver/http-strings.d \
./apps/webserver/httpd-cfs.d \
./apps/webserver/httpd-cgi.d \
./apps/webserver/httpd-fs.d \
./apps/webserver/httpd-fsdata.d \
./apps/webserver/httpd.d \
./apps/webserver/urlconv.d \
./apps/webserver/webserver-dsc.d \
./apps/webserver/webserver-nogui.d \
./apps/webserver/webserver.d 

RELS += \
./apps/webserver/http-strings.rel \
./apps/webserver/httpd-cfs.rel \
./apps/webserver/httpd-cgi.rel \
./apps/webserver/httpd-fs.rel \
./apps/webserver/httpd-fsdata.rel \
./apps/webserver/httpd.rel \
./apps/webserver/urlconv.rel \
./apps/webserver/webserver-dsc.rel \
./apps/webserver/webserver-nogui.rel \
./apps/webserver/webserver.rel 


# Each subdirectory must supply rules for building sources it contributes
apps/webserver/%.rel: ../apps/webserver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


