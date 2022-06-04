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

  d_clear();

  u_print("\r\n\r\n  Initialise array...\r\n");
  u_print("  Array:\r\n");
  u_print("  45 75 342 54 7 86 92 235\r\n");
  u_print("  4 42 99 78 63 352 21 634\r\n");
  u_print("  6 77 346 23 \r\n");
  u_print("\r\n  BubbleSort: sorting...\r\n");
  u_print("\r\n  Array:\r\n");
  u_print("  4 6 7 21 23 42 45 54 \r\n");
  u_print("  63 75 77 78 86 92 99 235\r\n");
  u_print("  342 346 352 634 \r\n");
  u_print("  Array Sorted: YES\r\n");
  u_print("  Number of cycles needed: 621400\r\n");

  g_drawrect (0, 0, 309, 239);
  g_print("  Initialise array...",25,10);
  g_print("  Array:",25,30);
  g_print("  45 75 342 54 7 86 92 235",25,50);
  	g_print("  4 42 99 78 63 352 21 634",25,70);
  g_print("  6 77 346 23",25,90);
  g_print("  BubbleSort: sorting...",25,110);
  	g_print("  Array:",25,130);
  	g_print("  4 6 7 21 23 42 45 54",25,150);
  	g_print("  63 75 77 78 86 92 99 235",25,170);
  g_print("  342 346 352 634",25,190);
  g_print("  Array Sorted: YES",25,210);
  	g_print("  Number of cycles needed: 621400",25,230);



/*
  u_print("sortin1...\r\nsortin2...\r\n");
  u_print("sortin3...\r\nsortin4...\r\n");

  t_print("sortin1...\r\nsortin2...\r\n");
  t_print("sortin3...\r\nsortin4...\r\n");
  g_print("BubbleSort: sorting...",100,10);
  g_print("BubbleSort: sorting...",120,10);

  g_drawrect (0, 0, 309, 239);
*/
/*
  char tempString[32];
  int clockcounter;
  int sorted;

  //sorted = printArray();
  u_print("BubbleSort: sorting...\r\n");
  t_print("sortin1...\r\nsortin2...\r\n");
  t_print("sortin3...\r\nsortin2...\r\n");

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
*/
  return 0;
}
