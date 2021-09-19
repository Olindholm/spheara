#include "led.h"

void LED_Init(void) {
    // Turn off LED (default)
    LED_Off();

    // Configure LED pin
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Pin = LED_GPIO_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(LED_GPIO_PERIF, &GPIO_InitStruct);
}

void LED_On(void) {
    HAL_GPIO_WritePin(LED_GPIO_PERIF, LED_GPIO_PIN, GPIO_PIN_RESET);
}

void LED_Off(void) {
    HAL_GPIO_WritePin(LED_GPIO_PERIF, LED_GPIO_PIN, GPIO_PIN_SET);
}

void LED_Toggle(void) {
    HAL_GPIO_TogglePin(LED_GPIO_PERIF, LED_GPIO_PIN);
}