#ifndef DMA_H
#define DMA_H

void DMA_Init(void);
extern "C" void DMA1_Channel4_IRQHandler(void);
extern "C" void DMA1_Channel5_IRQHandler(void);

#endif /* DMA_H */
