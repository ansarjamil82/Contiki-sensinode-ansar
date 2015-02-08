################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/sys/arg.c \
../core/sys/autostart.c \
../core/sys/compower.c \
../core/sys/ctimer.c \
../core/sys/energest.c \
../core/sys/etimer.c \
../core/sys/mt.c \
../core/sys/process.c \
../core/sys/procinit.c \
../core/sys/profile-aggregates.c \
../core/sys/profile.c \
../core/sys/rtimer.c \
../core/sys/stimer.c \
../core/sys/timer.c \
../core/sys/timetable-aggregate.c \
../core/sys/timetable.c 

C_DEPS += \
./core/sys/arg.d \
./core/sys/autostart.d \
./core/sys/compower.d \
./core/sys/ctimer.d \
./core/sys/energest.d \
./core/sys/etimer.d \
./core/sys/mt.d \
./core/sys/process.d \
./core/sys/procinit.d \
./core/sys/profile-aggregates.d \
./core/sys/profile.d \
./core/sys/rtimer.d \
./core/sys/stimer.d \
./core/sys/timer.d \
./core/sys/timetable-aggregate.d \
./core/sys/timetable.d 

RELS += \
./core/sys/arg.rel \
./core/sys/autostart.rel \
./core/sys/compower.rel \
./core/sys/ctimer.rel \
./core/sys/energest.rel \
./core/sys/etimer.rel \
./core/sys/mt.rel \
./core/sys/process.rel \
./core/sys/procinit.rel \
./core/sys/profile-aggregates.rel \
./core/sys/profile.rel \
./core/sys/rtimer.rel \
./core/sys/stimer.rel \
./core/sys/timer.rel \
./core/sys/timetable-aggregate.rel \
./core/sys/timetable.rel 


# Each subdirectory must supply rules for building sources it contributes
core/sys/%.rel: ../core/sys/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


