################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/lib/assert.c \
../core/lib/checkpoint.c \
../core/lib/crc16.c \
../core/lib/ctk-filedialog.c \
../core/lib/ctk-textentry-checkbox.c \
../core/lib/ctk-textentry-cmdline.c \
../core/lib/ctk-textentry-multiline.c \
../core/lib/gcr.c \
../core/lib/ifft.c \
../core/lib/libconio.c \
../core/lib/list.c \
../core/lib/me.c \
../core/lib/me_tabs.c \
../core/lib/memb.c \
../core/lib/mmem.c \
../core/lib/petsciiconv.c \
../core/lib/print-stats.c \
../core/lib/random.c \
../core/lib/ringbuf.c \
../core/lib/sensors.c \
../core/lib/strncasecmp.c 

C_DEPS += \
./core/lib/assert.d \
./core/lib/checkpoint.d \
./core/lib/crc16.d \
./core/lib/ctk-filedialog.d \
./core/lib/ctk-textentry-checkbox.d \
./core/lib/ctk-textentry-cmdline.d \
./core/lib/ctk-textentry-multiline.d \
./core/lib/gcr.d \
./core/lib/ifft.d \
./core/lib/libconio.d \
./core/lib/list.d \
./core/lib/me.d \
./core/lib/me_tabs.d \
./core/lib/memb.d \
./core/lib/mmem.d \
./core/lib/petsciiconv.d \
./core/lib/print-stats.d \
./core/lib/random.d \
./core/lib/ringbuf.d \
./core/lib/sensors.d \
./core/lib/strncasecmp.d 

RELS += \
./core/lib/assert.rel \
./core/lib/checkpoint.rel \
./core/lib/crc16.rel \
./core/lib/ctk-filedialog.rel \
./core/lib/ctk-textentry-checkbox.rel \
./core/lib/ctk-textentry-cmdline.rel \
./core/lib/ctk-textentry-multiline.rel \
./core/lib/gcr.rel \
./core/lib/ifft.rel \
./core/lib/libconio.rel \
./core/lib/list.rel \
./core/lib/me.rel \
./core/lib/me_tabs.rel \
./core/lib/memb.rel \
./core/lib/mmem.rel \
./core/lib/petsciiconv.rel \
./core/lib/print-stats.rel \
./core/lib/random.rel \
./core/lib/ringbuf.rel \
./core/lib/sensors.rel \
./core/lib/strncasecmp.rel 


# Each subdirectory must supply rules for building sources it contributes
core/lib/%.rel: ../core/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


