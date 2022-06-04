#define UART_ADDR 0x1000000
volatile int* const uartAddress = (int*)UART_ADDR;
#include "adpcmData.h"
int main() {
  int tempValue;
  int numberOfSamples;
  for (numberOfSamples=0 ; numberOfSamples < 519990 ; numberOfSamples++ ) {

    tempValue = adpcmData[numberOfSamples] >> 4;
    tempValue = tempValue & 0xF;
    if (tempValue < 10) *uartAddress = '0'+tempValue;
    else *uartAddress = '7'+tempValue;  

    tempValue = adpcmData[numberOfSamples] & 0xF;
    if (tempValue < 10) *uartAddress = '0'+tempValue;
    else *uartAddress = '7'+tempValue;

  *uartAddress = 13;
  *uartAddress = 10;
  }
  return 0;
}
