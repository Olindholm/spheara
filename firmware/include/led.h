#ifndef LED_H
#define LED_H

#include "stm32f1xx.h"

#define LED_GPIO_PERIF   GPIOC
#define LED_GPIO_PIN     GPIO_PIN_13

void LED_Init(void);
void LED_On(void);
void LED_Off(void);
void LED_Toggle(void);

#endif /* LED_H */
