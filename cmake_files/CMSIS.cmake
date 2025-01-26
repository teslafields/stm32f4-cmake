add_library(CMSIS) 

set(CMAKE_INCLUDE_PATH 
    ${CMAKE_INCLUDE_PATH}
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc
    )

target_sources(CMSIS PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c
    )
target_include_directories(CMSIS PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/CMSIS/Device/ST/STM32F4xx/Include
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/CMSIS/Core/Include
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/CMSIS/Include
    )
