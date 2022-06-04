
#define AUDIO_R_ADDR 40000004 
#define AUDIO_L_ADDR 40000008
#define CLOCK_ADDR 0x3000000
#define UART_ADDR 0x1000000
#define LCD_ADDR 0x2000000
#define LCD_I2C_ADDR 111


volatile int* const uartAddress = (int*)UART_ADDR;
volatile int* const audioAddressR = (int*)AUDIO_R_ADDR;
volatile int* const audioAddressL = (int*)AUDIO_L_ADDR;
volatile int* clockAddress = (int*)CLOCK_ADDR;
volatile int* const lcdAddress = (int*)LCD_ADDR;

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
int strlen (const char* str) {
  int count = 0;
  while (*str++ != '\0') count++;
  return count;
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
//////////////////////LCD

//#define PUTC(x) { value = (int) (x); PUTC_SINAS(value, lcdAddress); };
#define PUTC(x) { value = (int) (x);  *lcdAddress = value;};


// burn some CPU cycles
int wait (const int waitvalue) {
  int count = 0;
  while (count++ != waitvalue);

  return --count;
}

// read acknowledge from display
int getack (int address) {
  int value;
  int adr = address;
  //volatile int lcdAddress = LOAD_LCD_ADDRESS();

  //PUTC_SINAS(0, lcdAddress);
  *lcdAddress = 0;
  PUTC(++adr);
  //PUTC_SINAS(1, lcdAddress);
  *lcdAddress = 1;
  //value = GETC_SINAS(lcdAddress);
  value = *lcdAddress;

  if (value == 15) return 1;
  else return 0;
}

/* ------------------------
   Send individual commands
   ------------------------ */

int sendcommand (const char cmd0, const char cmd1, const int options[], const char text[], int intcount, int charcount, int address) {
  int checksum;
  int* options_ptr = (int*) options;
  char* text_ptr = (char* ) text;
  int intcount_local;
  int charcount_local;
  //volatile int lcdAddress = LOAD_LCD_ADDRESS();

  // amount of control char characters
  const int ctrl_chars = 3;
  int value;

  address <<= 1;

  do {
    intcount_local = intcount;
    charcount_local = charcount;
    // length + start byte, data length byte, newline character,
    // carriage return character and checksum
    PUTC(intcount + charcount + ctrl_chars + 3);
    PUTC(address);
    PUTC(17); // DC1
    checksum = 17;
    PUTC(intcount + charcount + ctrl_chars);
    checksum += value;

    // now we put special code characters here
    PUTC(27); // ESC
    checksum += value;
    PUTC(cmd0);
    checksum += value;
    PUTC(cmd1);
    checksum += value;

    while (intcount_local-- != 0) {
      value = *options_ptr++;
      //PUTC_SINAS(value, lcdAddress);
	*lcdAddress = value;
      checksum += value;
    }

    while (charcount_local-- != 0) {
      value = *text_ptr++;
      //PUTC_SINAS(value, lcdAddress);
	*lcdAddress = value;
      checksum += value;
    }

    PUTC(checksum);
  }
  while (getack(address) != 0);

  return 0;
}
// print text at current cursor position
int t_print (const char* str) {
  sendcommand('Z', 'T', 0, str, 0, strlen(str), LCD_I2C_ADDR);
  wait(10000);
  return 0;
}


int u_printInt(int a) {
  char tempString[20];
  intToStr(a, tempString);
  u_print(tempString);
  return 0;
}

int main() {
  //int clockcounter;
  //*clockAddress = 0;
  wait(100000);
  u_print("UStart\r\n");
  t_print("Starting LCD...\r\n");

  //clockcounter = *clockAddress;    
  //u_printInt(clockcounter);
  //u_print(" Cycles\r\n");

  return 0;
}
