#include <stdio.h>
#include <stdlib.h>
void printStuff ();
int main() {
  printStuff (19);

  return 0;
}

void printStuff (int a) {
  char str[a];
  str[0] = 'a';
  printf ("%s\n", str);
}
