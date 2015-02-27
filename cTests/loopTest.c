#include <stdio.h>

int main() {
  for (int i = 0; i < 10; ++i) {
    printf ("Main loop %d\n", i);
    for (int i = 0; i < 3; ++i) {
      printf ("Inner loop %d\n", i);
    }
    printf ("Main loop 2nd time %d\n", i);
  }
  return 0;
}

