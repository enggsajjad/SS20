
unsigned int array[10] = { 0x22, 0x12,0,0,0,0,0,0,0};
int main() {

/*
  __asm__ volatile (
                "brnz %[my_op1], .here\n"
                ".there: sub %[my_out], %[my_op1], %[my_op2]\n"
                ".here: add %[my_out], %[my_op1], %[my_op2]\n"
                : [my_out] "=&r" (array[3])
                : [my_op1] "r" (array[0]),[my_op2] "r" (array[1])
        );
*/

  __asm__ volatile (
                "bgeu %[my_op1], %[my_op2], _here2\n"
                "_there2: sub %[my_out], %[my_op1], %[my_op2]\n"
                "_here2: add %[my_out], %[my_op1], %[my_op2]\n"
                : [my_out] "=&r" (array[3])
                : [my_op1] "r" (array[0]),[my_op2] "r" (array[1])
        );

  return 0;


}

