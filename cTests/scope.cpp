#include <iostream>
using namespace std;

class DataCont {
    public:
        DataCont(int x_) : x(x_) {}
        int* getVal() { return &x; }
        int x;
};

int main() {
    int* a;
    {
        DataCont foo(29);
        a = foo.getVal();
        cout << *a << endl;
        foo.x = 3;
        cout << &(foo.x) << endl;
    }
    for (int i = 0; i < 10000000; ++i) {
        DataCont* hello = new DataCont(332);
    }
    cout << a << endl;
    return 0;
}
