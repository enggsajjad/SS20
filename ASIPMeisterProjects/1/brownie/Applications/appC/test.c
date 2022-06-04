unsigned int A[10] = { 45, 32, 0,0,0,0,0,0,0};
int main() {
/*
  __asm__ volatile (
                "avg %[out], %[op1], %[op2]\n"
                : [out] "=&r" (A[2])
                : [op1] "r" (A[0]),[op2] "r" (A[1])
        );
*/
__asm__ volatile ( " addi %0,%2,%4 \n"
" brnz %0,here \n"
" there: add %1,%2,%3 \n"
" here: mul %0,%2,%3 \n"
: "=r"(A[3]),"=r"(A[4])
: "r" (A[0]),"r"(A[1]),"r"(A[2])
: "r0" );

  return 0;
}




