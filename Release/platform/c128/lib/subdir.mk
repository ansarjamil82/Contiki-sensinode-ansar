################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../platform/c128/lib/pfs.S \
../platform/c128/lib/pfs_write.S 

RELS += \
./platform/c128/lib/pfs.rel \
./platform/c128/lib/pfs_write.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/c128/lib/%.rel: ../platform/c128/lib/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Assembler'
	as51  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


