#include <iostream>
using namespace std;
int main() {
  int a = int(5);
  cout << a << endl;
  delete &a;
}
