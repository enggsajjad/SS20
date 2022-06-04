
#define LCD_ADDR 0x2000000

//volatile int* const lcdAddress = (int*)LCD_ADDR;

int t_print(const char* str) {
  volatile int* const lcdAddress = (int*)LCD_ADDR;
  while (*str != '\0') {
    *lcdAddress = *str++;
  }
  return 0;
}
int main() {

  t_print("Testing...\r\n");

  return 0;
}


