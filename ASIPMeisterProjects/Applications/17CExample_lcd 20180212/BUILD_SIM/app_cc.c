#define BROWNIE
#  include "lib_uart.h"
#  include "lib_lcd.h"

#define CLOCK_ADDR 0x3000000
#define SIZE 20

volatile int* clockAddress = (int*)CLOCK_ADDR;
int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };

int printArray() {
  int i;
  int sorted=1;
  char tempString[32];

  u_print("Array:");

  for (i=0; i<SIZE; i++) {
    if ( (i&0x7) == 0) u_print("\r\n");
    intToStr(array[i], tempString);
    u_print(tempString);
    t_print(tempString);
    u_print(" ");
    t_print(" ");
    if (i>0) sorted &= array[i-1] <= array[i];
  }
  u_print("\r\n");
  t_print("\r\n");

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

int main() {

  char tempString[32];
  int clockcounter;
  int sorted;

  //sorted = printArray();
  u_print("BubbleSort: sorting...\r\n");
  t_print("sorting...\r\nsorting2...\r\n");
  t_print("sorting3...\r\n");
  g_print("BubbleSort: sorting...",10,10);

   *clockAddress = 0;
  bubbleSort(0, SIZE-1);
  clockcounter = *clockAddress;   

  sorted = printArray();
  u_print("Array Sorted: ");
  t_print("Array Sorted: ");
  if (sorted==0){ u_print("NO!!   ERROR!!"); t_print("NO!!   ERROR!!"); }
  else {u_print("YES"); t_print("YES"); }
  u_print("\r\nNumber of cycles needed: ");
  t_print("\r\nNumber of cycles needed: ");
  intToStr(clockcounter, tempString);
  u_print(tempString);
  t_print(tempString);
  u_print("\r\n");
  t_print("\r\n");

  return 0;
}
