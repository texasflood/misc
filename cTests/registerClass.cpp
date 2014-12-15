#include <stdio.h>

void printBin (int a);

class aRegister {
  private:
    int value;
  public:
    aRegister (int input) {value = input;};
    int getValue (void) {return value;};
    int getSubset (int start, int end) {
      int mask = 0;
      int temp = value;
      for (int i = 0; i <= start; ++i) {
        mask |= 1 << i;
      }
      temp &= mask;
      temp >>= end;
      return temp;
    };

};

int main() {
  aRegister register1 = aRegister (0x8B92A68F);
  printf("%i\n", register1.getValue());
  printBin (register1.getValue());
  printBin (register1.getSubset(21,6));
}

void printBin (int a) {
  for (int i = sizeof(int)*8 - 1; i >= 0; --i) {
    if (1 << i & a) {
      printf("1");
    } else {
      printf("0");
    }
  }
  printf("\n");
}
