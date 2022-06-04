#define ASIP
#ifndef ASIP
  	#include <stdio.h>
#else
  	#include "lib_lcd.h"
	#include "lib_uart.h"
	#include "loadStoreByte.h"
	#include "string.h"

#define RESET_ADDR 0x2625A00//port0_req_d reset
void reset(void)
{
        volatile int* const resetAddr = (int*)RESET_ADDR;//port2_req_d
        *resetAddr = 1;
}

#endif

int main() {
#ifndef ASIP
	printf("Hello World!...\r\n");
#else
        reset();//try with and without reset function
  	//d_clear();
	t_print("Hello World 1!...\r\n");
  	t_print("Hello World 2!...\r\n");
        t_print("Hello World 3!...\r\n");
        t_print("Hello World 4!...\r\n");
        t_print("Hello World 5!...\r\n");

        u_print("Hello World 1!...\r\n");
        u_print("Hello World 2!...\r\n");
        u_print("Hello World 3!...\r\n");
        u_print("Hello World 4!...\r\n");
        u_print("Hello World 5!...\r\n");


#endif
  return 0;
}


