#include "spi.h"
#include "error.h"

SPI_HandleTypeDef hspi2;
extern DMA_HandleTypeDef hdma_spi2_rx;
extern DMA_HandleTypeDef hdma_spi2_tx;

void HAL_MspInit(void) {
    __HAL_RCC_AFIO_CLK_ENABLE();
    __HAL_RCC_PWR_CLK_ENABLE();

    __HAL_AFIO_REMAP_SWJ_NONJTRST();
}

// Callback from HAL_SPI_TransmitReceive_DMA
void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi) {}

HAL_StatusTypeDef SPI2_TransmitReceive(uint8_t* buffer_tx, uint8_t* buffer_rx, int length) {
    return HAL_SPI_TransmitReceive_DMA(&hspi2, buffer_tx, buffer_rx, length);
}

void SPI2_Init(void) {
    // SPI2 parameter configuration
    hspi2.Instance = SPI2;
    hspi2.Init.Mode = SPI_MODE_MASTER;
    hspi2.Init.Direction = SPI_DIRECTION_2LINES;
    hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
    hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
    hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
    hspi2.Init.NSS = SPI_NSS_SOFT;
    hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
    hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
    hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
    hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
    hspi2.Init.CRCPolynomial = 10;
    if (HAL_SPI_Init(&hspi2) != HAL_OK) Error_Handler();
}

void HAL_SPI_MspInit(SPI_HandleTypeDef* hspi) {
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    if (hspi->Instance == SPI2) {
        __HAL_RCC_SPI2_CLK_ENABLE();
        __HAL_RCC_GPIOB_CLK_ENABLE();
        // SPI2 GPIO Configuration
        // PB13 ------> SPI2_SCK
        // PB14 ------> SPI2_MISO
        // PB15 ------> SPI2_MOSI

        GPIO_InitStruct.Pin = GPIO_PIN_13|GPIO_PIN_15;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

        GPIO_InitStruct.Pin = GPIO_PIN_14;
        GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
        GPIO_InitStruct.Pull = GPIO_NOPULL;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

        // SPI2 DMA Init
        // SPI2_RX Init
        hdma_spi2_rx.Instance = DMA1_Channel4;
        hdma_spi2_rx.Init.Direction = DMA_PERIPH_TO_MEMORY;
        hdma_spi2_rx.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_spi2_rx.Init.MemInc = DMA_MINC_ENABLE;
        hdma_spi2_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
        hdma_spi2_rx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
        hdma_spi2_rx.Init.Mode = DMA_NORMAL;
        hdma_spi2_rx.Init.Priority = DMA_PRIORITY_LOW;
        if (HAL_DMA_Init(&hdma_spi2_rx) != HAL_OK) Error_Handler();

        __HAL_LINKDMA(hspi,hdmarx,hdma_spi2_rx);

        // SPI2_TX Init
        hdma_spi2_tx.Instance = DMA1_Channel5;
        hdma_spi2_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
        hdma_spi2_tx.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_spi2_tx.Init.MemInc = DMA_MINC_ENABLE;
        hdma_spi2_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
        hdma_spi2_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
        hdma_spi2_tx.Init.Mode = DMA_NORMAL;
        hdma_spi2_tx.Init.Priority = DMA_PRIORITY_LOW;
        if (HAL_DMA_Init(&hdma_spi2_tx) != HAL_OK) Error_Handler();

        __HAL_LINKDMA(hspi,hdmatx,hdma_spi2_tx);

        // SPI2 interrupt Init
        HAL_NVIC_SetPriority(SPI2_IRQn, 1, 0);
        HAL_NVIC_EnableIRQ(SPI2_IRQn);
    }
}

void HAL_SPI_MspDeInit(SPI_HandleTypeDef* hspi) {
    if (hspi->Instance == SPI2) {
        __HAL_RCC_SPI2_CLK_DISABLE();

        // SPI2 GPIO Configuration
        // PB13 ------> SPI2_SCK
        // PB14 ------> SPI2_MISO
        // PB15 ------> SPI2_MOSI
        HAL_GPIO_DeInit(GPIOB, GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15);

        /* SPI2 DMA DeInit */
        HAL_DMA_DeInit(hspi->hdmarx);
        HAL_DMA_DeInit(hspi->hdmatx);

        /* SPI2 interrupt DeInit */
        HAL_NVIC_DisableIRQ(SPI2_IRQn);
    }
}
