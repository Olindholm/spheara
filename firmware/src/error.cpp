#include "error.h"
#include "stm32f1xx.h"

void Error_Handler(void) {
    __disable_irq();
    while (1) {}
}
