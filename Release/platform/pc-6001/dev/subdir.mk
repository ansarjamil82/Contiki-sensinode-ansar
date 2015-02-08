################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../platform/pc-6001/dev/clock.S \
../platform/pc-6001/dev/getkey.S \
../platform/pc-6001/dev/isprint_arch.S \
../platform/pc-6001/dev/rs232-asm.S 

RELS += \
./platform/pc-6001/dev/clock.rel \
./platform/pc-6001/dev/getkey.rel \
./platform/pc-6001/dev/isprint_arch.rel \
./platform/pc-6001/dev/rs232-asm.rel 


# Each subdirectory must supply rules for building sources it contributes
platform/pc-6001/dev/%.rel: ../platform/pc-6001/dev/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Assembler'
	as51  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


