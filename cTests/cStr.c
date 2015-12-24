#include <stdio.h>

int main() {
    const char* amessage = "now is the time";
    {
        amessage = "Hello";
    }
    amessage[1] = 'd';
    printf("%s\n", amessage);
    return 0;
}
