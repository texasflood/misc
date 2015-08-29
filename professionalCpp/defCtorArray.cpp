#include <iostream>
using namespace std;
class Spr {
  public:
    //Spr() {
      //this->myVal = 0;
    //};
    Spr(int a) {
      this->myVal = a;
    };
    int myVal;
};
int main() {
  Spr a[2] = {Spr(5), Spr(6)};
  cout << a[1].myVal << endl;
}
