#include <iostream>
using namespace std;

template <class SomeType, class SomeType2> SomeType2 operate (SomeType2 a, SomeType b) {
  return a+b;
}

int main () {
  cout << operate (5.5,3) << '\n';
  return 0;
}
