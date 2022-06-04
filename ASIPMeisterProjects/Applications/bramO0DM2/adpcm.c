#define UART_ADDR 0x1000000

volatile int* const uartAddress = (int*)UART_ADDR;

int storeByte(char* address, int value) {
  int loadMask = -4;
  int charAddress = (int)address;
  int* wordPointer = (int*)(charAddress & loadMask);
  int wordValue = *wordPointer;
  int mask = 0xFF << ( (3 - (charAddress&3) ) << 3);
  value <<= (~(charAddress&3) ) << 3;  // The "~()" is because the endianess
  wordValue &= ~mask;
  wordValue |= value;
  *wordPointer = wordValue;
  return wordValue;
}

int intToStr(int value, char* outputString) {
  int i=0, j=0;
  char stringReverse[32];

  if (value < 0) {
    value = -value;
    storeByte(outputString, '-');
    j++;
  } else if (value == 0) {
    storeByte(outputString, '0');
    j++;
  }
  
  while(value != 0) {
    storeByte(stringReverse+i, (value % 10) + '0' );
    value /= 10;
    i++;
  }
  while( i>0 ) {
    i--;
    storeByte(outputString+j, *(stringReverse+i));
    j++;
  }
  storeByte(outputString+j, '\0');
  return 0;
}


int intToHexStr(int value, char* outputString, int digits) {
  int i, j, tempValue;
  char stringReverse[10];

  for (i=0; i<8; i++) {
    if (value==0 && (digits==0 || i>=digits)) break;
    tempValue = value & 0xF;
    if (tempValue < 10) storeByte(stringReverse+i, '0'+tempValue);
    else storeByte(stringReverse+i, 'A'+(tempValue-10));
    value >>= 4;
  }

  for (j=0, i--; i>=0; j++, i--) {
    storeByte(outputString+j, *(stringReverse+i));
  }
  storeByte(outputString+j, '\0');

  return 0;
}


int u_print(const char* str) {
  volatile int* const uartAddress = (int*)UART_ADDR;
  while (*str != '\0') {
    *uartAddress = *str++;
  }
  return 0;
}

int u_printHex(int value, int digits) {
  char tempString[10];
  intToHexStr(value, tempString, digits);
  u_print("0x");
  u_print(tempString);
  return 0;
}


#include "adpcmData.h"

int main() {

  int numberOfSamples = 1 * sizeof(adpcmData);
  unsigned char* indata;
  indata  = adpcmData;
  for ( ; numberOfSamples > 0 ; numberOfSamples-- ) {
	  u_printHex(*indata++,2);
	  u_print("\r\n");
  }
  return 0;
}
