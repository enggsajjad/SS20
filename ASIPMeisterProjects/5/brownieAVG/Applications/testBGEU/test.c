
unsigned int array[10] = { 0x22, 0x12,0,0,0,0,0,0,0};
int main() {

  __asm__ volatile (
                "bgeu %[op1], %[op2], _here2\n"
                "_there2: sub %[out], %[op1], %[op2]\n"
                "_here2: add %[out], %[op1], %[op2]\n"
                : [out] "=&r" (array[3])
                : [op1] "r" (array[0]),[op2] "r" (array[1])
        );

  return 0;


}
/*
ModelSim TestData.OUT
when unsigned int array[10] = { 0x22, 0x12,0,0,0,0,0,0,0};
00000000 0017EFFC
00000004 00000022
00000008 00000012
0000000C 00000000
00000010 00000034

when unsigned int array[10] = { 0x2, 0x12,0,0,0,0,0,0,0};

*/
