#include "program.h"
#include "led.h"
#include "spi.h"
#include "dma.h"

#define LED_COUNT 1
#define BUFFER_LENGTH (1+LED_COUNT+1)
uint32_t buffer_tx[BUFFER_LENGTH] = { 0 };
uint32_t buffer_rx[BUFFER_LENGTH] = { 0 };

void Program_Run(void) {
    // Init peripherals
    LED_Init();
    DMA_Init();
    SPI2_Init();
    
    // Init data buffer
    buffer_tx[0] = 0x00000000;
    buffer_tx[BUFFER_LENGTH-1] = 0xFFFFFFFF;

    uint32_t colors[] = {
        0xFF0000FF,
        0x0000FFFF,
        0x00FF00FF,
    };

    int i = 0;
    while (1) {
        
        buffer_tx[1] = colors[i];
        SPI2_TransmitReceive((uint8_t *) buffer_tx, (uint8_t *) buffer_rx, sizeof(uint32_t)/sizeof(uint8_t) * BUFFER_LENGTH);

        HAL_Delay(500);
        i = (i+1) % (sizeof(colors) / sizeof(colors[0]));
    }
}
