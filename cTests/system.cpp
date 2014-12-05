#include <stdio.h>
#include <stdlib.h>
#include <string>
int main() {
  std::string const a = "python";
  system(a.c_str());
  printf("HELLO from C\n");
  return 0;
}
