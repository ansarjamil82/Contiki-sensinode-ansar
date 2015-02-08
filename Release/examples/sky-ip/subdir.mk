################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../examples/sky-ip/ajax-cgi.c \
../examples/sky-ip/httpd-fs.c \
../examples/sky-ip/httpd-fsdata.c \
../examples/sky-ip/sky-telnet-server.c \
../examples/sky-ip/sky-webserver.c \
../examples/sky-ip/telnet-tweet.c \
../examples/sky-ip/telnet-webserver.c 

C_DEPS += \
./examples/sky-ip/ajax-cgi.d \
./examples/sky-ip/httpd-fs.d \
./examples/sky-ip/httpd-fsdata.d \
./examples/sky-ip/sky-telnet-server.d \
./examples/sky-ip/sky-webserver.d \
./examples/sky-ip/telnet-tweet.d \
./examples/sky-ip/telnet-webserver.d 

RELS += \
./examples/sky-ip/ajax-cgi.rel \
./examples/sky-ip/httpd-fs.rel \
./examples/sky-ip/httpd-fsdata.rel \
./examples/sky-ip/sky-telnet-server.rel \
./examples/sky-ip/sky-webserver.rel \
./examples/sky-ip/telnet-tweet.rel \
./examples/sky-ip/telnet-webserver.rel 


# Each subdirectory must supply rules for building sources it contributes
examples/sky-ip/%.rel: ../examples/sky-ip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


