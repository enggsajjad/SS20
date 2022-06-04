#define UART_ADDR 0x1000000
volatile int* const uartAddress = (int*)UART_ADDR;
#include "adpcmData.h"
int main() {
  int tempValue;
  int iter;
  for (iter=0 ; iter < 519990 ; iter++ ) {
  //for (iter=65526 ; iter < 65536 ; iter++ ) {

    tempValue = adpcmData[iter] >> 4;
    tempValue = tempValue & 0xF;
    if (tempValue < 10) *uartAddress = '0'+tempValue;
    else *uartAddress = '7'+tempValue;  

    tempValue = adpcmData[iter] & 0xF;
    if (tempValue < 10) *uartAddress = '0'+tempValue;
    else *uartAddress = '7'+tempValue;

  *uartAddress = 13;
  *uartAddress = 10;
  }
/*
  *uartAddress = 'T';
  *uartAddress = 'e';
  *uartAddress = 's';
  *uartAddress = 't';
  *uartAddress = 'i';
  *uartAddress = 'n';
  *uartAddress = 'g';
  *uartAddress = 13;
  *uartAddress = 10;
*/
  return 0;
}
