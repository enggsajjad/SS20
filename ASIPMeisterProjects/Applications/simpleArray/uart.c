unsigned int array[2] = { 45, 75};


int main() {

  unsigned int *j;
  j = array;
  *(j+1) = *(j+0) + 10;
  *(j+2) = *(j+0) + *(j+1);

  return 0;
}




