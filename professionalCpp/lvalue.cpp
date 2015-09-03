#include <iostream>
using namespace std;

class object {
  public:
    object(int value);
    object(const object& objectToBeCopied);
    ~object();
    int size;
};

object::object(int value) : size(value) {
  cout << "Creating object with size " << this->size << " and address " << this << endl;
}

object::object(const object& objectToBeCopied) : size(objectToBeCopied.size) {
  cout << "Creating object with size " << this->size << " and address " << this << endl;
}

object::~object() {
  cout << "Destroying object with size " << this->size << " and address " << this << endl;
}

int sum(object obj1, object obj2) {
  return obj1.size + obj2.size;
}

int main() {
  //object mainObj1(5);
  //object mainObj2(6);
  //sum(mainObj1, mainObj2);
  sum(object(5), object(6));

  return 0;
}
