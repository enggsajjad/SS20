
// Instructions with no output operands


/*
//Example

int res [] = {45,0,0};

int main() {


int *pointer = &res[2];
 
asm ( " sw    %1(%2),%0        \n"            
    :                                                         
    : "r"(res[0]), "i"(sizeof(int)),"r"(pointer));
  return 0;


}
*/

/*
//Example
int res [] = {45,0,0};

int main() {


int *pointer = &res[0];
 
asm ( 
	"sw    %1(%2),%0        \n"            
    :                                                         
    : "r"(res[0]), "i"(8),"r"(pointer));
  return 0;


}
*/
/*
//Example
int res [] = {45,0,0};

int main() {


int *pointer = &res[0];
 
asm ( 	"lw    r10, %1(%2)        \n\t"
	"nop        \n\t"
	"sw    %3(%2),r10        \n\t"            
    :                                                         
    : "r"(res[0]), "i"(0),"r"(pointer), "i"(8)
    : "r10");
  return 0;


}
*/
/*
//Example
int res [] = {45,0,0,0,0};

int main() {

int *pointer = &res[0];
 
asm ( 	"lw    r10, %2(%3)        \n\t"
	"nop        \n\t"
	"sw    %4(%3),r10        \n\t"            
	"addi    %0,r10,#8        \n\t"     
    : "=r"(res[4]) 
    : "r"(res[0]), "i"(0),"r"(pointer), "i"(8)
    : "r10");
  return 0;


}
*/


//Example
int a=45;
int res [] = {0,0};

int main() {

int *pointer = &res[0];
 
asm ( " sw %0,%1             \n"           
     : "=m"(res[1])                    
     : "r"(a));
  return 0;


}

