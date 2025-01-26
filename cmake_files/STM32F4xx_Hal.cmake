option(STM32F4_GPIO "Build STM32F4_GPIO" OFF)
option(STM32F4_ADC "Build STM32F4_ADC" OFF)
option(STM32F4_CAN "Build STM32F4_CAN" OFF)
option(STM32F4_CEC "Build STM32F4_CEC" OFF)
option(STM32F4_CRC "Build STM32F4_CRC" OFF)
option(STM32F4_CRYPT "Build STM32F4_CRYPT" OFF)
option(STM32F4_DAC "Build STM32F4_DAC" OFF)
option(STM32F4_DMA "Build STM32F4_DMA" OFF)
option(STM32F4_ETH "Build STM32F4_ETH" OFF)
option(STM32F4_I2C "Build STM32F4_I2C" OFF)
option(STM32F4_SPI "Build STM32F4_SPI" OFF)
option(STM32F4_MISC "Build STM32F4_MISC" OFF)

add_library(STM32F4xx_HAL 
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_pwr.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c
    )

if(STM32F4_GPIO)
    target_sources(STM32F4xx_HAL PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_gpio.c
        )
endif()

if(STM32F4_I2C)
    target_sources(STM32F4xx_HAL PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_i2c.c
        )
endif()

if(STM32F4_SPI)
    set(STM32F4_DMA ON)
    target_sources(STM32F4xx_HAL PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_spi.c
        )
endif()

if(STM32F4_DMA)
    target_sources(STM32F4xx_HAL PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma2d.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_dma.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_dma2d.c
        )
endif()

if(STM32F4_MISC)
    target_sources(STM32F4xx_HAL PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_can.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cec.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_crc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dac.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dac_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dcmi.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dcmi_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dfsdm.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dsi.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_eth.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_exti.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpi2c.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpi2c_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpsmbus.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpsmbus_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hash.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hash_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hcd.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2s.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2s_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_irda.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_iwdg.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_lptim.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_ltdc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_ltdc_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_mmc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_nand.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_nor.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pccard.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_qspi.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rng.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sai.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sai_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sd.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sdram.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_smartcard.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_smbus.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spdifrx.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sram.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_wwdg.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_adc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_crc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_dac.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_exti.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fmc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fmpi2c.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fsmc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_lptim.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rcc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rng.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rtc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_sdmmc.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_tim.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usart.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usb.c
        ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_utils.c
        )
endif()


target_include_directories(STM32F4xx_HAL PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/../STM32CubeF4/Drivers/STM32F4xx_HAL_Driver/Inc
    )

target_link_libraries(STM32F4xx_HAL CMSIS)
