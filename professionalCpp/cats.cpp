#include <iostream>
#include <memory>
#include <string>

class cat {
  public:
    const int a = 5;
    int height;
    cat();
    cat (int inputHeight);
    ~cat();
};

cat::cat () : height(0) {
}

cat::cat (int inputHeight) {
  height = inputHeight;
}

cat::~cat() {
  std::cout << "Destroying cat with height " << this->height << " and address " << this << std::endl;
}

class twoCats {
  public:
    cat firstCat;
    cat secondCat;
    twoCats (cat theFirstCat, cat theSecondCat);
    void addSecondCat (cat theSecondCat);
};

twoCats::twoCats (cat theFirstCat, cat theSecondCat) : firstCat(theFirstCat), secondCat(theSecondCat) {
  std::cout << "Address of first cat       " << &theFirstCat << std::endl;
  std::cout << "Other address of first cat " << &firstCat << std::endl;
  std::cout << "Address of second cat       " << &theSecondCat << std::endl;
  std::cout << "Other address of second cat " << &secondCat << std::endl;
}

int main() {
  //std::unique_ptr<cat> myCatp = std::make_unique<cat>(5); // C++14
  //std::unique_ptr<cat> myCatp(new cat(5)); // C++11
  //std::cout << (*myCatp).height << std::endl;
  cat aCat(5);
  cat anotherCat;
  anotherCat = aCat;
  return 0;
}
