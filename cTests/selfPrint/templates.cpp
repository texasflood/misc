#include <stdio.h>
#include <stdlib.h>
template <typename aType> int& add (aType a, aType b) {
  int c = a + b;
  return c;
}
int main() {
  int *c = &(add <int> (5.9, 9.9));
  //calloc (0,0);
  int * av = (int *) malloc (0);
  for (int i = -1; i < 10000; ++i) {
    av[i] = 391099991;
  }
  printf("%i\n", *c);
}
