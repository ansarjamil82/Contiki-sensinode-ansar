################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apps/webserver-nano/httpd-cfs.c \
../apps/webserver-nano/httpd-cgi.c \
../apps/webserver-nano/httpd-fs.c \
../apps/webserver-nano/httpd-fsdata.c \
../apps/webserver-nano/httpd.c \
../apps/webserver-nano/urlconv.c \
../apps/webserver-nano/webserver-dsc.c \
../apps/webserver-nano/webserver-nogui.c \
../apps/webserver-nano/webserver.c 

C_DEPS += \
./apps/webserver-nano/httpd-cfs.d \
./apps/webserver-nano/httpd-cgi.d \
./apps/webserver-nano/httpd-fs.d \
./apps/webserver-nano/httpd-fsdata.d \
./apps/webserver-nano/httpd.d \
./apps/webserver-nano/urlconv.d \
./apps/webserver-nano/webserver-dsc.d \
./apps/webserver-nano/webserver-nogui.d \
./apps/webserver-nano/webserver.d 

RELS += \
./apps/webserver-nano/httpd-cfs.rel \
./apps/webserver-nano/httpd-cgi.rel \
./apps/webserver-nano/httpd-fs.rel \
./apps/webserver-nano/httpd-fsdata.rel \
./apps/webserver-nano/httpd.rel \
./apps/webserver-nano/urlconv.rel \
./apps/webserver-nano/webserver-dsc.rel \
./apps/webserver-nano/webserver-nogui.rel \
./apps/webserver-nano/webserver.rel 


# Each subdirectory must supply rules for building sources it contributes
apps/webserver-nano/%.rel: ../apps/webserver-nano/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


