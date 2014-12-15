#include <stdio.h>

int main() {
}

class tripleStack {
  private:
    int stackSize;
    int * allStacks;
    int stackPointers[];
  public:
    tripleStack (int noOfStacks, int size) {
      stackSize = size;
      allStacks = malloc (sizeof(int) * stackSize * noOfStacks);
      
      for (int i = 0; i < noOfStacks; ++i) {
        stackPointers[i] = -1;
      }
    }

    push (int value, int stackNo) {
      if (stackPointers[i] == -1) {

