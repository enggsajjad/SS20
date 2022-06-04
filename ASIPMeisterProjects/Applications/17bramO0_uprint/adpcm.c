#define CLOCK_ADDR 0x3000000
#define UART_ADDR 0x1000000

volatile int* const uartAddress = (int*)UART_ADDR;
volatile int* clockAddress = (int*)CLOCK_ADDR;

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

int u_print(const char* str) {
  volatile int* const uartAddress = (int*)UART_ADDR;
  while (*str != '\0') {
    *uartAddress = *str++;
  }
  return 0;
}

int u_printInt(int a) {
  char tempString[20];
  intToStr(a, tempString);
  u_print(tempString);
  return 0;
}

int main() {
  int clockcounter;
  *clockAddress = 0;
  u_print("Start\r\n");
  clockcounter = *clockAddress;    
  u_printInt(clockcounter);
  u_print(" Cycles\r\n");

  return 0;
}
