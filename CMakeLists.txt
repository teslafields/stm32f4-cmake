cmake_minimum_required(VERSION 3.27)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project (stm32f4_app C ASM)

set(CROSS_COMPILE $ENV{CROSS_COMPILE})
if(CROSS_COMPILE)
    string(REGEX MATCH "^[a-z0-9]+-[a-z0-9]+-[a-z0-9]+" TARGET_TRIPLE ${CROSS_COMPILE})
    message(STATUS "CROSS_COMPILE for: " ${TARGET_TRIPLE})
endif()

if(NOT STM_DEVICE)
    set(STM_DEVICE STM32F446xx)
endif()

message(STATUS "Building for: " ${STM_DEVICE})

add_definitions(-D${STM_DEVICE})

set(STM32F4_GPIO ON)
set(STM32F4_SPI ON)

set(CMAKE_MODULE_PATH
    ${CMAKE_CURRENT_LIST_DIR}/cmake_files
)

include(toolchain_config)
include(CMSIS)
include(STM32F4xx_Hal)
include(STM32F4xx_Nucleo)
include_directories(${CMAKE_CURRENT_LIST_DIR})

string(TOLOWER ${STM_DEVICE} device_name)
find_file(startup_assembly "startup_${device_name}.s")
message(STATUS "Found startup file in: " ${startup_assembly})

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} \
    -T ${PROJECT_SOURCE_DIR}/app/STM32F446RETX_FLASH.ld \
" )

add_executable(stm32f4_app
    ${PROJECT_SOURCE_DIR}/app/Src/main.c
    ${PROJECT_SOURCE_DIR}/app/Src/stm32f4xx_hal_msp.c
    ${PROJECT_SOURCE_DIR}/app/Src/stm32f4xx_it.c
    ${PROJECT_SOURCE_DIR}/app/Src/system_stm32f4xx.c
    ${startup_assembly}
)

include_directories(${PROJECT_SOURCE_DIR}/app/Inc)

target_include_directories(stm32f4_app PUBLIC
	${PROJECT_SOURCE_DIR}/STM32CubeF4/Drivers/BSP/STM32F4xx-Nucleo
	${PROJECT_SOURCE_DIR}/STM32CubeF4/Drivers/BSP/STM32F446E_EVAL
	${PROJECT_SOURCE_DIR}/STM32CubeF4/Drivers/BSP/STM32F4-Discovery
)

target_link_libraries(stm32f4_app STM32F4xx_HAL_Driver STM32F4xx_Nucleo)
