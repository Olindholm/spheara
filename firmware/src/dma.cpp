#include "dma.h"
#include "stm32f1xx.h"

DMA_HandleTypeDef hdma_spi2_rx;
DMA_HandleTypeDef hdma_spi2_tx;

void DMA_Init(void) {
    // DMA controller clock enable
    __HAL_RCC_DMA1_CLK_ENABLE();

    // DMA interrupt init

    // DMA1_Channel4_IRQn interrupt configuration
    HAL_NVIC_SetPriority(DMA1_Channel4_IRQn, 3, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel4_IRQn);

    // DMA1_Channel5_IRQn interrupt configuration
    HAL_NVIC_SetPriority(DMA1_Channel5_IRQn, 2, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel5_IRQn);
}

void DMA1_Channel4_IRQHandler(void) {
    HAL_DMA_IRQHandler(&hdma_spi2_rx);
}

void DMA1_Channel5_IRQHandler(void) {
    HAL_DMA_IRQHandler(&hdma_spi2_tx);
}
