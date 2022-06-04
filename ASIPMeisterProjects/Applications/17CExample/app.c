//#  include "loadStoreByte.h"
//#  include "clockCounter.h"
//#  include "lib_lcd.h"
#  include "lib_uart.h"

#define CLOCK_ADDR 0x3000000
volatile int* clockAddress = (int*)CLOCK_ADDR;
int main() {
  int clockcounter;
  *clockAddress = 0;
  u_print("Start\r\n");
  clockcounter = *clockAddress;    
  u_printInt(clockcounter);
  u_print(" Cycles\r\n");

  return 0;
}
