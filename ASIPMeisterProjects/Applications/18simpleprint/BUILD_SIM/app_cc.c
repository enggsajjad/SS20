#define BROWNIE

#define UART_ADDR 0x1000000
//#define CLOCK_ADDR 0x3000000
//#define SIZE 20

volatile int* const uartAddress = (int*)UART_ADDR;
//volatile int* clockAddress = (int*)CLOCK_ADDR;
/*
int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };

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
*/
int u_print(const char* str) {
  //volatile int* const uartAddress = (int*)UART_ADDR;
  while (*str != '\0') {
    *uartAddress = *str++;
  }
  return 0;
}
/*
int printArray() {
  int i;
  int sorted=1;
  char tempString[32];

  u_print("Array:");

  for (i=0; i<SIZE; i++) {
    if ( (i&0x7) == 0) u_print("\r\n");
    intToStr(array[i], tempString);
    u_print(tempString);
    u_print(" ");
    if (i>0) sorted &= array[i-1] <= array[i];
  }
  u_print("\r\n");

  return sorted;
}

void bubbleSort(const unsigned int startIndex, const unsigned int endIndex) {
  unsigned int *j, *next_j, *innerLoopEnd;
  unsigned int i, tmp, value_j, value_next_j;

  innerLoopEnd = array+endIndex;
  i = startIndex;
  while (i < endIndex) {

    j = array+startIndex;
    value_j = *j;
    next_j = j;

    while (j < innerLoopEnd) {
      next_j++;
      value_next_j = *next_j;
      if (value_next_j < value_j) {
        *j = value_next_j;
        *next_j = value_j;
        tmp = value_j;
        value_j = value_next_j;
        value_next_j = tmp;
      }
      j = next_j;
      value_j = value_next_j;
    }
    innerLoopEnd--;
    i++;
  }

}
*/
int main() {

//  int a=6789, b;
/*
  char tempString[32];
  int time;
  int sorted;


  sorted = printArray();
  u_print("BubbleSort: sorting...\r\n");

  time = *clockAddress;
  bubbleSort(0, SIZE-1);
  time = *clockAddress - time;

  sorted = printArray();
  u_print("Array Sorted: ");
  if (sorted==0) u_print("NO!!   ERROR!!");
  else u_print("YES");
  u_print("\r\nNumber of cycles needed: ");
  intToStr(time, tempString);
  u_print(tempString);
  u_print("\r\n");
*/
////////
  u_print("Testing...\r\n");
/*
  if (a>b)
    *uartAddress = 'A';
  else
    *uartAddress = 'B';

//  intToStr(a, tempString);
//  u_print(tempString);
//  u_print(" ");

  for(b=0;b<3;b++){
      *uartAddress = b + '0';
  }

  b = a/1000;
  *uartAddress = (b+48);
  a = a%1000;
  b = a/100;
  *uartAddress = (b+48);
  a = a%100;
  b = a/10;
  *uartAddress = (b+48);
  a = a%10;
 
  *uartAddress = 'A';
  *uartAddress = 'B';
  *uartAddress = 'C';

  b = 1;*uartAddress = (b+48);
  b = 2;*uartAddress = (b+48);
  b = 3;*uartAddress = (b+48);

  *uartAddress = 13;
  *uartAddress = 10;
*/

  return 0;
}


