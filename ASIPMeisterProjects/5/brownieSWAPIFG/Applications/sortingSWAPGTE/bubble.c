

#define SIZE 20

unsigned int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };

void bubbleSort(const unsigned int startIndex, const unsigned int endIndex) {
  unsigned int i, j, tmp;

  for (i=0; i<endIndex-startIndex; i++) 
  {
    for (j=startIndex; j<endIndex-i; j++) 
    {
/*      if (array[j+1]<array[j]) 
      {
        tmp=array[j];
        array[j]=array[j+1];
        array[j+1]=tmp;
      }
*/
	  __asm__ volatile (
		"swapifl %[out1], %[out2], %[op1], %[op2]\n\t"
		: [out1] "=&r" (array[j+1]), [out2] "=&r" (array[j])
		: [op1] "r" (array[j]), [op2] "r" (array[j+1])
	);

    }
  }

}


int main() {
  bubbleSort(0, SIZE-1);
  return 0;
}


