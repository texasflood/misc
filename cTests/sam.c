#include <stdio.h>

int bar();
int foo();
int main()
{
  printf ("%i %i\n", foo(), bar());
  return 0;
}

int foo()
{
  printf("foo\n");
  return 0;
}
int bar()
{
  printf("bar\n");
  return 1;
}
