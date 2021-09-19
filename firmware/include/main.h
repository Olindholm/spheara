#ifndef MAIN_H
#define MAIN_H

int main(void);

extern "C" void SysTick_Handler(void);
void SystemClock_Init(void);
void GPIO_Init(void);

#endif /* MAIN_H */
