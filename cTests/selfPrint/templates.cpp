#include <stdio.h>
template <class aType> aType add (aType a, aType b) {
  return a + b;
}
int main() {
  int a = 5;
 printf("%i\n", add <long long> (0.5, 8.9));
}
