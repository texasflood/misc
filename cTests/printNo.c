#include <stdio.h>

char * int_to_string (int input)
{
  char buffer[1]; int kk = 88;
  sprintf (buffer, "%i", input);
  printf ("%s\n", buffer);
  printf ("%i\n", kk);
  return buffer;
}

int main()
{
  int a = 499;
  printf ("%s\n", int_to_string (a));
  return 0;
}
