unsigned int array[10] = { 45, 75,0,0,0,0,0,0,0};

#define avg(a,b)  ( ((a)+(b)) / 2 )
#define swap(a)   ( (((a)<<16) & 0xFFFF0000) | (((a)>>16) & 0x0000FFFF) )
#define max(a, b) ( (a)>(b) ? (a):(b) )
#define min(a, b) ( (a)<(b) ? (a):(b))


int main() {
    array[2]  = avg(array[0], array[1]); // Average
    array[3] = swap(array[0]);           // Swap
    array[4]  = max(array[0], array[1]); // Maximum
    array[5]  = min(array[0], array[1]); // Minimum
  return 0;
}
