#include <stdio.h>

int printStuff () {
  printf ("Hello\n");
  return 1;
}

int main () {
  if (printStuff() || 1) {
  }

  return 0;
}
