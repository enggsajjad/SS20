//#define SIZE 20
//int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };
#define SIZE 5
int array[SIZE] = { 5, 7, 3, 8, 9 };
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
      if (value_next_j < value_j) {
        *j = value_next_j;
        //*next_j = value_j;
	//replace above statement with explicit store instruction
	//remember store also has an address parameter (next_j), and two values (value_j and 0)
         __asm__ volatile(
                ";nop \n"
                "\t sw 0(%[out]),%[op] \n"
                "\t ;nop \n"
                :
                : [op] "r" (value_j),[out] "r" (next_j)
                );

	tmp = value_j;
        value_j = value_next_j;
        value_next_j = tmp;
      }
      j = next_j;
      value_j = value_next_j;
    }
    innerLoopEnd--;
    i++;
  }

}

int main() {
  bubbleSort(0, SIZE-1);
  return 0;
}

