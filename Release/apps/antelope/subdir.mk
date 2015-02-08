################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apps/antelope/antelope.c \
../apps/antelope/aql-adt.c \
../apps/antelope/aql-exec.c \
../apps/antelope/aql-lexer.c \
../apps/antelope/aql-parser.c \
../apps/antelope/index-inline.c \
../apps/antelope/index-maxheap.c \
../apps/antelope/index-memhash.c \
../apps/antelope/index.c \
../apps/antelope/lvm.c \
../apps/antelope/relation.c \
../apps/antelope/result.c \
../apps/antelope/storage-cfs.c 

C_DEPS += \
./apps/antelope/antelope.d \
./apps/antelope/aql-adt.d \
./apps/antelope/aql-exec.d \
./apps/antelope/aql-lexer.d \
./apps/antelope/aql-parser.d \
./apps/antelope/index-inline.d \
./apps/antelope/index-maxheap.d \
./apps/antelope/index-memhash.d \
./apps/antelope/index.d \
./apps/antelope/lvm.d \
./apps/antelope/relation.d \
./apps/antelope/result.d \
./apps/antelope/storage-cfs.d 

RELS += \
./apps/antelope/antelope.rel \
./apps/antelope/aql-adt.rel \
./apps/antelope/aql-exec.rel \
./apps/antelope/aql-lexer.rel \
./apps/antelope/aql-parser.rel \
./apps/antelope/index-inline.rel \
./apps/antelope/index-maxheap.rel \
./apps/antelope/index-memhash.rel \
./apps/antelope/index.rel \
./apps/antelope/lvm.rel \
./apps/antelope/relation.rel \
./apps/antelope/result.rel \
./apps/antelope/storage-cfs.rel 


# Each subdirectory must supply rules for building sources it contributes
apps/antelope/%.rel: ../apps/antelope/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -DSLIP_ARCH_CONF_ENABLE=1 -DUIP_CONF_IPV6=1 -DMODEL_N740=1 -I"/home/ansar/contiki-sensinode/platform/sensinode" -I"/home/ansar/contiki-sensinode/platform/sensinode/dev" -I"/home/ansar/contiki-sensinode/cpu/cc2430" -I"/home/ansar/contiki-sensinode/cpu/cc2430/dev" -I"/home/ansar/contiki-sensinode/core/dev" -I"/home/ansar/contiki-sensinode/core/lib" -I"/home/ansar/contiki-sensinode/core/net" -I"/home/ansar/contiki-sensinode/core/net/mac" -I"/home/ansar/contiki-sensinode/core/net/rime" -I"/home/ansar/contiki-sensinode/core/net/rpl" -I"/home/ansar/contiki-sensinode/core/sys" -I"/usr/local/share/sdcc/include/mcs51" -I"/usr/local/share/sdcc/include" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


