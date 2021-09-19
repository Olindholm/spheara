#include "ledarray.h"
#include "stm32f1xx.h"
#include "error.h"
#include "spi.h"

uint32_t buffer_tx[BUFFER_LENGTH] = { 0 };
uint32_t buffer_rx[BUFFER_LENGTH] = { 0 };

// Set start and end of LED array buffer
//
// https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/
// http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf
//
void LEDArray_Init() {
    buffer_tx[0] = 0x00000000;
    buffer_tx[BUFFER_LENGTH-1] = 0xFFFFFFFF;
}

// Set one LED in the LEDArray buffer
//
// https://cpldcpu.wordpress.com/2014/11/30/understanding-the-apa102-superled/
// http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf
//
void LEDArray_SetLED(int n, float red, float green, float blue, float brightness) {
    if (n > LED_COUNT) Error_Handler();

    uint8_t *led = (uint8_t *) &buffer_tx[1+n];

    uint32_t a = brightness * 31;
    uint32_t r = red * 255;
    uint32_t g = green * 255;
    uint32_t b = blue * 255;

    led[0] = a;
    led[1] = b;
    led[2] = g;    // Each LED must begin with 111 (or at least one)

    led[3] = r;

    led[0] |= 0xE0;
}

void LEDArray_Flush() {
    SPI2_TransmitReceive((uint8_t *) buffer_tx, (uint8_t *) buffer_rx, sizeof(uint32_t)/sizeof(uint8_t) * BUFFER_LENGTH);
}
