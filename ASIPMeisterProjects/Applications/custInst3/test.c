unsigned int array[10] = { 45, 75,0,0,0,0,0,0,0};
int main() {
/*
  __asm__ volatile (
                "avg %[my_out], %[my_op1], %[my_op2]\n"
                : [my_out] "=&r" (array[2])
                : [my_op1] "r" (array[0]),[my_op2] "r" (array[1])
        );

  __asm__ volatile (
                "swap %[my_out], %[my_op1]\n"
                : [my_out] "=&r" (array[3])
                : [my_op1] "r" (array[0])
        );
*/
  __asm__ volatile (
                "minmax %[my_out1], %[my_out2], %[my_op1], %[my_op2]\n\t"
                : [my_out1] "=&r" (array[5]), [my_out2] "=&r" (array[4])
                : [my_op1] "r" (array[0]), [my_op2] "r" (array[1])
        );

  return 0;
}




