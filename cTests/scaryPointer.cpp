#include <iostream>
using namespace std;

int main() {
    int * scaryPointer = 0x7ffdc689368c;
    int a = 8;
    int* b = &a;
    int* c = new int(54);
    cout << c << endl;
    cout << b << endl;
    for (int i = 0; i < 10000000; ++i) {
        int* hello = new int(332);
    }
    cout << *scaryPointer << endl;
    return 0;
}
