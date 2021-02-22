################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middleware/FreeRTOS/portable/MemMang/subdir.mk
-include Middleware/FreeRTOS/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Middleware/FreeRTOS/portable/Common/subdir.mk
-include Middleware/FreeRTOS/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

BUILD_ARTIFACT_NAME := lwm2m_client
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
lwm2m_client.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
lwm2m_client.list \

OBJCOPY_BIN += \
lwm2m_client.bin \


# All Target
all: main-build

# Main-build Target
main-build: lwm2m_client.elf secondary-outputs

# Tool invocations
lwm2m_client.elf: $(OBJS) $(USER_OBJS) C:\Users\wyj10\STM32CubeIDE\workspace_1.5.1\lwm2m_client_stm32f7\lwm2m_client\STM32F767ZITX_FLASH.ld
	arm-none-eabi-gcc -o "lwm2m_client.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\Users\wyj10\STM32CubeIDE\workspace_1.5.1\lwm2m_client_stm32f7\lwm2m_client\STM32F767ZITX_FLASH.ld" --specs=nosys.specs -Wl,-Map="lwm2m_client.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

lwm2m_client.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "lwm2m_client.list"
	@echo 'Finished building: $@'
	@echo ' '

lwm2m_client.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "lwm2m_client.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified
.SECONDARY:

-include ../makefile.targets
