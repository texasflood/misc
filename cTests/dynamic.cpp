#include <iostream>
int main() {
  int *a = new int [524288001];
  for (int i = 0; i < 524288001; ++i) {
    a[i] = i/2;
  }
  std::cout << "Done\n";
  std::cin.get();
  delete[] a;
  return 0;
}
