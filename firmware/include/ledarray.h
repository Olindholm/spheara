#ifndef LEDARRAY_H
#define LEDARRAY_H

#define LED_COUNT       2
#define BUFFER_LENGTH   (1+LED_COUNT+1)

void LEDArray_Init();
void LEDArray_SetLED(int n, float red, float green, float blue, float brightness);
void LEDArray_Flush();

#endif /* LEDARRAY_H */
