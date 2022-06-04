/*
-- The AddressRanges are an array of tuples (lowAddress, highAddress).
    := ( (40000000, 40000000),          -- switch port 0x2625A00
         (40000004, 40000011),          -- audio out (4:right chanel, 8:left chanel) 0x2625A04
         (16777216, 16777216),          -- uart port: 0x100 0000
         (50331648, 50331648),          -- clock counter: 0x300 0000
         (33554432, 33554432),          -- putchar port: 0x200 0000
         (67108864, 71303164),          -- SRAM port1
         (83886080, 88080380));         -- SRAM port2,			  
		 
*/
#define ADDR1 0x1000000//port1_req_d
#define ADDR2 0x2000000//port4_req_d
#define ADDR3 0x3000000//port3_req_d
#define ADDR4 0x4000000//hangs the modelsim in baremental
#define ADDR11 0x2625A00//port0_req_d
#define ADDR12 0x2625A04//port1_req_d
#define ADDR13 0x2625A08//port1_req_d
#define ADDR14 0x2625A00//port0_req_d
#define ADDR15 0x2625A04//port1_req_d


#define ASIP
#ifndef ASIP
  	#include <stdio.h>
#else
  	#include "lib_lcd.h"
	#include "lib_uart.h"
	#include "loadStoreByte.h"
	#include "string.h"
#endif

int main() {
#ifndef ASIP
	printf("Hello World!...\r\n");
#else

        volatile int* const swAdr1 = (int*)ADDR1;//port2_req_d
  	*swAdr1 = 0x11;

        volatile int* const swAdr2 = (int*)ADDR2;//port4_req_d
        *swAdr2 = 0x22;

        volatile int* const swAdr3 = (int*)ADDR3;//port3_req_d
        *swAdr3 = 0x33;

        volatile int* const swAdr4 = (int*)ADDR4;
//        *swAdr4 = 0x44;//hangs the modelsim in baremental


  	volatile int* const swAdr11 = (int*)ADDR11;//port0_req_d
        *swAdr11 = 0xbb;

        volatile int* const swAdr12 = (int*)ADDR12;//port1_req_d
        *swAdr12 = 0xcc;

        volatile int* const swAdr13 = (int*)ADDR13;//port1_req_d
        *swAdr13 = 0xdd;

        volatile int* const swAdr14 = (int*)ADDR14;//port0_req_d
        *swAdr14 = 0xee;

        volatile int* const swAdr15 = (int*)ADDR15;//port1_req_d
        *swAdr15 = 0xff;
	
	//test further switch IO mapped
        *swAdr11 = 0x1;

        *swAdr11 = 0x2;

        *swAdr11 = 0x3;

        *swAdr11 = 0x4;

        *swAdr11 = 0x5;

        *swAdr11 = 0x6;

        *swAdr11 = 0x7;

        *swAdr11 = 0x0;

        *swAdr11 = 0x9;



;
//	t_print("Hello World CES!...\r\n");
//  	u_print("Hello World CES!...\r\n");
#endif
  return 0;
}


