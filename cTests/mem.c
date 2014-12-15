#include <stdio.h>
#include <stdlib.h>
int main() {
  int * pointer = (int *) malloc (16*sizeof(int));
  *(pointer + 19) = 4952;
  free (pointer);
  return 0;
}
