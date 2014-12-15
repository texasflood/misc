#include <stdio.h>
#include "aRegister.h"

int main() {
  aRegister register1 = aRegister (0x8B92A68F);
  printf("%i\n", register1.getValue());
  printBin (register1.getValue());
  printBin (register1.getSubset(21,6));
}

