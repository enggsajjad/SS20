#define SIZE 20
int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };

void bubbleSort(const unsigned int startIndex, const unsigned int endIndex) {
   
  /*unsigned int *j, *next_j, *innerLoopEnd;
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
      if (value_next_j < value_j) {
        *j = value_next_j;
        *next_j = value_j;
        tmp = value_j;
        value_j = value_next_j;
        value_next_j = tmp;
      }
      j = next_j;
      value_j = value_next_j;
    }
    innerLoopEnd--;
    i++;
  }*/
int *pointer = &array[0];
//assembly taken from make sim GCC_PRAM=-O2
// replace some of the eltu+brz instructions with bgeu
// replacing all eltu+brz instuctions gives some errors, needs to be fixed. May be there is problem in indeces (because, now it is greate than or equal to)
asm (	"bgeu	%0,%1,_L11     	\n\t"
	";eltu	r6,%0,%1     	\n\t"
	";brz	r6,_L11 	\n\t"
	"llsi	r6,%1,#2     	\n\t"
	"add	r7,r0,%2     	\n\t"
	";addi	r7,r0,%2     	\n\t"
	";lsoi	r7,r0,%2     	\n\t"
	"add	r15,r0,%0     	\n\t"
	"add	r14,r6,r7     	\n\t"
	"llsi	r7,%0,#2     	\n\t"
	"add	r6,r0,%2     	\n\t"
	";addi	r6,r0,%2     	\n\t"
	";lsoi	r6,r6,%2     	\n\t"
	"add	r7,r7,r6     	\n"
"_L4:     			\n\t"
	"lw	r12,(r7)     	\n\t"
	"nop     		\n\t"
	"bgeu	r7,r14,_L5     	\n\t"
	";eltu	r6,r7,r14     	\n\t"
	";brz	r6,_L5     	\n\t"
	"add	r11,r0,r7     	\n\t"
	"add	r13,r0,r7     	\n"
"_L7:     			\n\t"
	"addi	r11,r11,#4     	\n\t"
	"lw	r10,(r11)     	\n\t"
	"nop     		\n\t"
	";bgeu	r10,r12,_L8; gives errors    	\n\t"
	"eltu	r6,r10,r12     	\n\t"
	"brz	r6,_L8     	\n\t"
	"sw	(r13),r10     	\n\t"
	"sw	(r11),r12     	\n\t"
	"add	r10,r0,r12     	\n"
"_L8:     			\n\t"
	"add	r12,r0,r10     	\n\t"
	"add	r13,r0,r11     	\n\t"
	";bgeu	r14,r11,_L7; gives errors    	\n\t"
	"eltu	r6,r11,r14     	\n\t"
	"brnz	r6,_L7     	\n"
"_L5:     			\n\t"
	"addi	r15,r15,#1     	\n\t"
	";bgeu	r15,%1,_L11; gives errors, unlimited loop    	\n\t"
	"eltu	r6,r15,%1     	\n\t"
	"brz	r6,_L11     	\n\t"
	"addi	r14,r14,#-4     \n\t"
	"jp	_L4     	\n"
"_L11:     			\n\t"
	"nop     		\n\t"
    :
    : "r"(startIndex),"r"(endIndex),"r"(pointer)
    : "r0","r6","r7","r10","r11","r12","r13","r14","r15");


}

int main() {
  bubbleSort(0, SIZE-1);
  return 0;
}

