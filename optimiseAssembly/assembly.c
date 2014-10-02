#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main()
{
    srand(time(NULL));
    int a = rand();
    int b = rand();
    int answer;

    //answer = (a>b ? a-b : b-a) < 180 ? (a>b ? a-b : b-a) : (360 - (a>b ? a-b : b-a));
    printf ("%d", answer);
}
