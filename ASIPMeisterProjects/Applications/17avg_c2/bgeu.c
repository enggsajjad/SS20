//#define UART_ADDR 0x1000000

unsigned int array[10] = { 45, 75,0,0,0,0,0,0,0};

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
  array[1] = array[0] + 10;
  array[2] = array[0] + array[1];
  array[3] = __builtin_brownie32_NXOR(array[0], array[1]);
  array[4] = __builtin_brownie32_AVG(array[0], array[1]);
  array[5] = __builtin_brownie32_SWAP(array[0]);
  array[6] = __builtin_brownie32_NXOR(array[0], array[1]);
  __builtin_brownie32_MINMAX(&min,&max,33,55);

  array[7] = min;
  array[8] = max;
  //u_print("Testing...\r\n");

  return 0;
}




