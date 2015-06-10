#include <stdio.h>
#include <stdlib.h>

int main () {
  char* pPath;
  pPath = getenv ("PWD");
  if (pPath!=NULL) {
    printf("The current working directory is: %s\n", pPath);
  } else {
    printf("Error\n");
  }
  return 0;
}
