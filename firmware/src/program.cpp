#include "program.h"
#include "led.h"

void Program_Run(void) {
    // Init peripherals
    LED_Init();

    while (1) {
        LED_Toggle();
        HAL_Delay(1000);
    }
}
