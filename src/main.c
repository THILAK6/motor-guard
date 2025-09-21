#include "MS51_16K.h"   // NuMicro header

void delay_ms(unsigned int ms)
{
    while(ms--) {
        unsigned int i = 120; 
        while(i--);
    }
}

void main(void) {
    // Configure P0 as push-pull
    P0M1 = 0x00;
    P0M2 = 0xFF;

    while(1) {
        P02 = 0;  // LED ON
        delay_ms(10000);
        P02 = 1;  // LED OFF
        delay_ms(10000);
    }
}