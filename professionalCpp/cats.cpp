#include <iostream>
using namespace std;
class cat
{
    public:
        int height;
        cat (int inputHeight);
};

cat::cat (int inputHeight)
{
    height = inputHeight;
}

class twoCats
{
    public:
        cat firstCat;
        cat secondCat;
        twoCats (cat theFirstCat, cat theSecondCat);
        void addSecondCat (cat theSecondCat);
};

twoCats::twoCats (cat theFirstCat, cat theSecondCat) : firstCat(theFirstCat),
secondCat(theSecondCat)
{
}

void twoCats::addSecondCat (cat theSecondCat)
{
    secondCat = theSecondCat;
}

int main() {
  twoCats a(cat(5), cat(6));
  twoCats* b = new twoCats(a);
  cout << a.firstCat.height << endl;
  cout << a.secondCat.height << endl;
  cout << b->firstCat.height << endl;
  cout << b->secondCat.height << endl;
  delete b;
}
  
