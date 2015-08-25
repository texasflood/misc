#include <stdlib.h>
#include <stdio.h>

const int arraySize = 5;
int i;
struct employee {
  int age;
  float salary;
  char initial;
};

int main() {
  struct employee *arrayPtr = (struct employee *)(malloc(arraySize*sizeof(struct employee)));

  for (i = 0; i < arraySize; ++i) {
    arrayPtr[i].age = i*3;
    arrayPtr[i].salary = 200 + i;
    arrayPtr[i].initial = 'a' + (char)i;
  }

  for (i = 0; i < arraySize; ++i) {
    printf("Age: %d\n", arrayPtr[i].age);
    printf("Salary: %f\n", arrayPtr[i].salary);
    printf("Initial: %c\n", arrayPtr[i].initial);
  }
  printf("Size: %lu\n", sizeof(struct employee));
  printf("Something %d\n", a);
  free(arrayPtr);
  return 0;
}
