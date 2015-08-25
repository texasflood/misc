#include <iostream>
#include <string>
#include <stdlib.h>
const int batch1Size = 300000000000000000000000000000000000000000;
const int noOfNumbers = 3;

struct employee {
  std::string name;
  int age;
  int numbers[noOfNumbers];
};

int main() {
  struct employee *batch1 = new employee[batch1Size];
  std::cout << batch1 << std::endl;
  //struct employee *batch1 = new struct employee[batch1Size];
  if (batch1 == NULL) {
    std::cout << "Could not allocate memory" << std::endl;
    return 1;
  }
  for (int i = 0; i < batch1Size; ++i) {
    batch1[i].name = "Adam";
    batch1[i].age = i*5;
    for (int j = 0; j < noOfNumbers; ++j) {
      batch1[i].numbers[j] = i*j;
    }
  }

  struct employee *employeePtr = batch1;
  for (int i = 0; i < batch1Size; ++i) {
    std::cout << employeePtr->name << std::endl;
    std::cout << employeePtr->age << std::endl;
    for (int j = 0; j < noOfNumbers; ++j) {
      std::cout << employeePtr->numbers[j] << std::endl;
    }
    std::cout << employeePtr << std::endl;
    employeePtr++;
  }

  std::cout << sizeof(struct employee) << std::endl;
  delete[] batch1;
  //free(batch1);


  return 0;
}
