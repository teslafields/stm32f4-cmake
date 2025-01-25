add_library(BSP) 

target_include_directories(BSP PUBLIC
	${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/BSP/STM32F4xx-Nucleo
	${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/BSP/STM32F446E_EVAL
	${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/BSP/STM32F4-Discovery
)
