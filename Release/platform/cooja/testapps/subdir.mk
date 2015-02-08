################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/cooja/testapps/hello-world.c \
../platform/cooja/testapps/testbutton.c \
../platform/cooja/testapps/testcfs.c \
../platform/cooja/testapps/testctimer.c \
../platform/cooja/testapps/testetimer.c \
../platform/cooja/testapps/testsensors.c \
../platform/cooja/testapps/testserial.c \
../platform/cooja/testapps/testuaodv.c \
../platform/cooja/testapps/testuip.c 

C_DEPS += \
./platform/cooja/testapps/hello-world.d \
./platform/cooja/testapps/testbutton.d \
./platform/cooja/testapps/testcfs.d \
./platform/cooja/testapps/testctimer.d \
./platform/cooja/testapps/testetimer.d \
./platform/cooja/testapps/testsensors.d \
./platform/cooja/testapps/testserial.d \
./platform/cooja/testapps/testuaodv.d \
./platform/cooja/testapps/testuip.d 

RELS += \
./platform/cooja/testapps/hello-world.rel \
./platform/cooja/testapps/testbutton.rel \
./platform/cooja/testapps/testcfs.rel \
./platform/cooja/testapps/testctimer.rel \
./platform/cooja/testapps/testetimer.rel \
./platform/cooja/testapps/testsensors.rel \
./platform/cooja/testapps/testserial.rel \
./platform/cooja/testapps/testuaodv.rel \
./platform/cooja/testapps/testuip.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/cooja/testapps/%.rel: ../platform/cooja/testapps/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


