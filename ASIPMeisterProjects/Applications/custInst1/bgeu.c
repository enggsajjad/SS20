//#define UART_ADDR 0x1000000

int array[10] = { 45, 76,0,0,0,0,0,0,0};

///////////////////////////////////////////////////////////////
int main() {
  //store modified data into array locations 2,3,4
  array[3] = array[0] + array[1];
  array[2] = array[0] + array[1];
  //array[3] = __builtin_brownie32_NXOR(array[0], array[1]);
//  array[4] = __builtin_brownie32_AVG(array[0], array[1]);
  //array[5] = __builtin_brownie32_SWAP(array[0]);
  //array[6] = __builtin_brownie32_NXOR(array[0], array[1]);
  //__builtin_brownie32_MINMAX(&min,&max,33,55);

  //array[7] = min;
  //array[8] = max;
  //u_print("Testing...\r\n");

  return 0;
}




/*

unsigned int array[2] = { 45, 75};

///////////////////////////////////////////////////////////////
int main() {
  //int sorted;
  unsigned int *j;

  int min=23;
  int max=33;
  int *rdMin;
  int *rdMax;
  //load array address
  j = array;
  //store modified data into array locations 2,3,4
  *(j+1) = *(j+0) + 10;
  *(j+2) = *(j+0) + *(j+1);
  *(j+3) = __builtin_brownie32_NXOR(*(j+0), *(j+1));
  *(j+4) = __builtin_brownie32_AVG(*(j+0), *(j+1));
  *(j+5) = __builtin_brownie32_SWAP(*(j+0));
  *(j+6) = __builtin_brownie32_NXOR(*(j+0), *(j+1));
  __builtin_brownie32_MINMAX(&min,&max,33,55);

  *(j+7) = min;
  *(j+8) = max;


  return 0;
}
*/


