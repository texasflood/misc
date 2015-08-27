#include <iostream>
#include <assert.h>
#include <string>
using namespace std;

int& add(int a, int &b) {
  int& c = b;
  c = a + b;
  cout << &c << endl;
  return c;
}

int main() {
  std::string s1 = "123";
  std::string s2 = "456";

  std::string s3_copy = s1 + s2;
  std::string& s3_reference = s3_copy;
  cout << &s3_copy << endl;
  cout << &s3_reference << endl;
  cout << s3_reference << endl;
  int *p = new int;
  *p = 382;
  cout << *p << endl;
  delete p;
  return 0;
}
