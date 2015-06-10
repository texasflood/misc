#define _XOPEN_SOURCE       /* See feature_test_macros(7) */
#include <unistd.h>
#include <stdio.h>

unsigned long long int ipow(unsigned long long int base, unsigned long long int exp);

int main() {
  int i, k;
  int count = 0;
  unsigned long long int j;
  const int maxLength = 2;
  const int start = 33;
  const int end = 126;
  char hash[] = "$6$jecZdx./$yfWzZ6NS0gXeW/0Jsa0Jgvnk0plm3d6AcHvNl9cxiuZDZIeAGy7Cag4ecFri4scOxBzUZ9udEkEryrXf1PqRc/";
  char trial[maxLength];
  int jCop;
  /*printf("%llu\n", ipow(end - start, 9));*/
  /*printf("%llu\n", ipow(2, 64) - 1);*/
  for (i = 1; i < maxLength+1; ++i) {
    for (j = 0; j < ipow(end - start, i); ++j) {
      jCop = j;
      for (k = 0; k < i; ++k) {
        trial[k] = (jCop % (end - start)) + start;
        jCop /= (end - start);
      }
      trial[i] = 0;
      count += 1;
      if (strcmp(crypt(trial, "$6$jecZdx./$"), hash) == 0) {
        printf("Found match: %s\n", trial);
      } else {
        /*printf("No match with: %s\n", trial);*/
      }
    }
  }
  printf("%d\n", count);

  return 0;
}

unsigned long long int ipow(unsigned long long int base, unsigned long long int exp) {
    unsigned long long int result = 1;
    while (exp) {
        if (exp & 1)
            result *= base;
        exp >>= 1;
        base *= base;
    }

    return result;
}

// compile with -lcrypt
