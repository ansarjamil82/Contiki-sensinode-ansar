################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/pc-6001/apps/webserver-mini/http-strings.c \
../platform/pc-6001/apps/webserver-mini/httpd-cfs.c \
../platform/pc-6001/apps/webserver-mini/httpd-cgi.c \
../platform/pc-6001/apps/webserver-mini/httpd-fs.c \
../platform/pc-6001/apps/webserver-mini/httpd-fsdata.c \
../platform/pc-6001/apps/webserver-mini/httpd.c \
../platform/pc-6001/apps/webserver-mini/webserver-nogui.c 

C_DEPS += \
./platform/pc-6001/apps/webserver-mini/http-strings.d \
./platform/pc-6001/apps/webserver-mini/httpd-cfs.d \
./platform/pc-6001/apps/webserver-mini/httpd-cgi.d \
./platform/pc-6001/apps/webserver-mini/httpd-fs.d \
./platform/pc-6001/apps/webserver-mini/httpd-fsdata.d \
./platform/pc-6001/apps/webserver-mini/httpd.d \
./platform/pc-6001/apps/webserver-mini/webserver-nogui.d 

RELS += \
./platform/pc-6001/apps/webserver-mini/http-strings.rel \
./platform/pc-6001/apps/webserver-mini/httpd-cfs.rel \
./platform/pc-6001/apps/webserver-mini/httpd-cgi.rel \
./platform/pc-6001/apps/webserver-mini/httpd-fs.rel \
./platform/pc-6001/apps/webserver-mini/httpd-fsdata.rel \
./platform/pc-6001/apps/webserver-mini/httpd.rel \
./platform/pc-6001/apps/webserver-mini/webserver-nogui.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/pc-6001/apps/webserver-mini/%.rel: ../platform/pc-6001/apps/webserver-mini/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


