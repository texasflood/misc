#include <stdio.h>

bool isPalindrome(const char *str) {
    int len;
    char c;
    for (len = 0, c = *str; c != '\0'; ++len, c = *(str + len)) {
    }

    printf("Length of string %s is %d\n", str, len);

    for (int i = 0; i < (len >> 1); ++i) {
        if (*(str + i) != *(str + (len - i - 1))) {
            return false;
        }
    }

    return true;
}

int main(int argv, char **argc) {
    for (int i = 1; i < argv; ++i) {
        printf("String %s: %d\n", *(argc + i), isPalindrome(*(argc + i)));
    }

    return 0;
}
