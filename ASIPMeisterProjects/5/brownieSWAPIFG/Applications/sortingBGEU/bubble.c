#define SIZE 20
int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };

void bubbleSort(const unsigned int startIndex, const unsigned int endIndex) {
  unsigned int *j, *next_j, *innerLoopEnd;
  unsigned int i, tmp, value_j, value_next_j;

  innerLoopEnd = array+endIndex;
  i = startIndex;
  while (i < endIndex) {

    j = array+startIndex;
    value_j = *j;
    next_j = j;

    while (j < innerLoopEnd) {
      next_j++;
      value_next_j = *next_j;
/*      
      if (value_next_j < value_j) 
      {
        *j = value_next_j;
        *next_j = value_j;
        tmp = value_j;
        value_j = value_next_j;
        value_next_j = tmp;
      }
      j = next_j;
      value_j = value_next_j;
*/
asm ( 	"bgeu  %3, %4, _here2        \n\t"
	"sw    (%5),%4        \n\t"  
	"sw    4(%5),%3        \n\t"
	"addi    %0,%4,#0        \n\t"
	"addi    %1,%3,#0        \n\t"

	"_here2: addi    %2,%6,#0        \n\t"
	"addi    %0,%4,#0        \n\t"

  
    : "=r"(value_j) ,"=r"(value_next_j), "r"(j)
    : "r"(value_j), "r"(value_next_j), "r"(j), "r"(next_j)
);
 /*
asm ( 	"lw    r10, %2(%3)        \n\t"
	"nop        \n\t"
	"sw    %4(%3),r10        \n\t"            
	"addi    %0,r10,#8        \n\t"     
    : "=r"(res[4]) 
    : "r"(res[0]), "i"(0),"r"(pointer), "i"(8)
    : "r0");

  __asm__ volatile (
                "bgeu %[op1], %[op2], _here2\n"
                "_there2: sub %[out], %[op1], %[op2]\n"
                "_here2: add %[out], %[op1], %[op2]\n"
                : [out] "=&r" (array[3])
                : [op1] "r" (array[0]),[op2] "r" (array[1])
        );

*/




    }
    innerLoopEnd--;
    i++;
  }

}

int main() {
  bubbleSort(0, SIZE-1);
  return 0;
}


