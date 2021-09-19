#include "program.h"
#include "led.h"
#include "spi.h"
#include "dma.h"
#include "ledarray.h"

void Program_Run(void) {
    // Init peripherals
    LED_Init();
    DMA_Init();
    SPI2_Init();
    LEDArray_Init();

    // Rainbow Program
    float rainbow_program[6][3] = {
        // Red, green, blue
        { 1, 0, 0 },
        { 1, 1, 0 },
        { 0, 1, 0 },
        { 0, 1, 1 },
        { 0, 0, 1 },
        { 1, 0, 1 },
    };

    int program_pointer = 0;
    int program_size = sizeof(rainbow_program) / sizeof(rainbow_program[0]);

    while (1) {
        // Change Pixel colors
        for (int i = 0; i < LED_COUNT; i++) {
            int program_index = (program_pointer+i) % program_size;
            LEDArray_SetLED(i, rainbow_program[program_index][0], rainbow_program[program_index][1], rainbow_program[program_index][2], 0.05f);
        }

        // Flush (update/refresh) LEDs
        LEDArray_Flush();

        // Continue...
        program_pointer = (program_pointer+1) % program_size;
        HAL_Delay(250);
    }
}
