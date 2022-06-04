#include "lib_uart.h"

int u_print(const char* str) {
  volatile int* const uartAddress = (int*)UART_ADDR;
  while (*str != '\0') {
    *uartAddress = *str++;
  }
  return 0;
}

