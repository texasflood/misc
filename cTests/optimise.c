#include <stdio.h>

int main() {
    int j;
    int i = 0;
    int tail_len = 5;
    int hit_len = 0;

    for (j = 0; j < 5452; ++j)
    {
        if (hit_len || i >= tail_len)
        {
            printf("%d\n", j);
            hit_len = 1;
        }
        else
        {
            ++i;
        }
    }
    return 0;
}
