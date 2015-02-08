################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apps/webbrowser/html-strings.c \
../apps/webbrowser/htmlparser.c \
../apps/webbrowser/http-strings.c \
../apps/webbrowser/http-user-agent-string.c \
../apps/webbrowser/webclient.c \
../apps/webbrowser/www-dsc.c \
../apps/webbrowser/www.c 

C_DEPS += \
./apps/webbrowser/html-strings.d \
./apps/webbrowser/htmlparser.d \
./apps/webbrowser/http-strings.d \
./apps/webbrowser/http-user-agent-string.d \
./apps/webbrowser/webclient.d \
./apps/webbrowser/www-dsc.d \
./apps/webbrowser/www.d 

RELS += \
./apps/webbrowser/html-strings.rel \
./apps/webbrowser/htmlparser.rel \
./apps/webbrowser/http-strings.rel \
./apps/webbrowser/http-user-agent-string.rel \
./apps/webbrowser/webclient.rel \
./apps/webbrowser/www-dsc.rel \
./apps/webbrowser/www.rel 


# Each subdirectory must supply rules for building sources it contributes
apps/webbrowser/%.rel: ../apps/webbrowser/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


