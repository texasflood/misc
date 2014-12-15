#include <math.h>
#include <stdio.h>
#include <stdlib.h>

void printBin (int a);

int main (int argc, char * argv[]) {
  int noOfOnes = atoi(argv[1]);
  for (int j = 0; j < 4000000000; ++j) {
    int result = 0, i;
    /*if (argc != 2) {*/
    /*printf ("Input one argument only!\n");*/
    /*return -1;*/
    /*}*/

    for (i = 0; i <= noOfOnes; ++i) {
      result += (int)pow (2, i);
      /*result |= 1 << i;*/
    }
    printBin (result);

    return 0;
  }
}

void printBin (int a) {
  int i;
  for (i = sizeof(int)*8 - 1; i >= 0; --i) {
    if (1 << i & a) {
      printf("1");
    } else {
      printf("0");
    }
  }
  printf("\n");
}
