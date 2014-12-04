#include <stdio.h>

int main() {
  int b = 5;
  int * point = &b;
  int ** point2 = &point;
  int *** point3 = &point2;
  int **** point4 = &point3;
  int ***** point5 = &point4;
  printf("%i\n", *****point5);

  return 0;
}
