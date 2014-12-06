#include <stdio.h>
int main() {
  int count, i;
  char str[] = "HELLO what are you doing";
  printf ("%s\n", str);
  
  count = 0;
  while (1) {
    if (*(count + str) == 0) {
      break;
    }
    ++count;
  }
  printf("%i\n", count);
  char tempChar;
  for (i = 0; i < count/2; ++i) {
    tempChar = *(str + i);
    *(str + i) = *(str + count - 1 - i);
    *(str + count -1 -i) = tempChar;
  }

  printf ("%s\n", str);
  return 0;
}
