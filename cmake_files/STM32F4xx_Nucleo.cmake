add_library(STM32F4xx_Nucleo
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c
)

target_include_directories(STM32F4xx_Nucleo PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/BSP/STM32F4xx-Nucleo
)

target_link_libraries(STM32F4xx_Nucleo STM32F4xx_HAL_Driver)
