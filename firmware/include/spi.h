#ifndef SPI_H
#define SPI_H

#include "stm32f1xx.h"

void SPI2_Init(void);
HAL_StatusTypeDef SPI2_TransmitReceive(uint8_t* buffer_tx, uint8_t* buffer_rx, int length);

#endif /* SPI_H */
