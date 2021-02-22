################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FreeRTOS/portable/Common/mpu_wrappers.c 

OBJS += \
./Middleware/FreeRTOS/portable/Common/mpu_wrappers.o 

C_DEPS += \
./Middleware/FreeRTOS/portable/Common/mpu_wrappers.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FreeRTOS/portable/Common/mpu_wrappers.o: ../Middleware/FreeRTOS/portable/Common/mpu_wrappers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middleware/FreeRTOS/include -I../Middleware/FreeRTOS/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middleware/FreeRTOS/portable/Common/mpu_wrappers.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

