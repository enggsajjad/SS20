
int A[10] = {45,23,0,0,0,0,0,0,0,0};
int main()
{
        __asm__ volatile ( "brnz %[op3], addfunc  \n"
             "subfunc: sub %[out1], %[op1], %[op2]   \n"
             "addfunc: add %[out2], %[op1], %[op2]    \n"
             : [out1] "=&r"(A[3]),[out2] "=&r"(A[4])
             : [op1] "r" (A[0]),[op2] "r" (A[1]),[op3] "r" (A[2])
        );
/*
  __asm__ volatile (
                "avg %[out], %[op1], %[op2]\n"
                : [out] "=&r" (A[2])
                : [op1] "r" (A[0]),[op2] "r" (A[1])
        );

  __asm__ volatile (
                "swap %[out], %[op1]\n"
                : [out] "=&r" (A[3])
                : [op1] "r" (A[0])
        );


  __asm__ volatile (
                "swapifl %[out1], %[out2], %[op1], %[op2]\n\t"
                : [out1] "=&r" (A[7]), [out2] "=&r" (A[8])
                : [op1] "r" (A[0]), [op2] "r" (A[1])
        );


*/
        return 0;
}
