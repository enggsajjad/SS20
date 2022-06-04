
// Instructions with preserved operands
int res [] = {0,0,0,0,0,0,0,0};
int a=45;
int main() {
  //bubbleSort(0, SIZE-1);

 
asm ( " sw    %1(%2),%0        \n"            
    :                                                         
: "r"(a), "i"(sizeof(int)),"r"(&res));

  return 0;
}


