
// Instructions with no output operands


int a=45;
int b=46;
int res [] = {0,0};

int main() {


int *pointer = &res[0];
 
asm ( " sw    %1(%2),%0        \n"            
    :                                                         
    : "r"(a), "i"(sizeof(int)),"r"(pointer));
  return 0;

pointer = &res[1];
asm ( " sw    %1(%2),%0        \n"            
    :                                                         
    : "r"(b), "i"(sizeof(int)),"r"(pointer));
  return 0;
}


