//#define UART_ADDR 0x1000000

unsigned int array[2] = { 45, 75};
/*
TestData.OUT
00000000 0000EFFC
00000004 0000002D
00000008 00000037
0000000C 00000064
00000010 FFFFFFE5
*/
int main() {
  //int sorted;
  unsigned int *j;
  //load array address
  j = array;
  //store modified data into array locations 2,3,4
  *(j+1) = *(j+0) + 10;
  *(j+2) = *(j+0) + *(j+1);
  *(j+3) = __builtin_brownie32_NXOR(*(j+0), *(j+1));

  //u_print("Testing...\r\n");

  return 0;
}




