#include <stdio.h>
#include <math.h>

int printBin (char str[]) {
  printf("Original: %s\n", str);
  int i;
  int hit1;
  int integSum = 0;
  float floatSum = 0;
  int count = 0;
  char * digit;
  for (digit = str; (*digit != '.'); ++digit) {
    if (*digit == 0) {
      int integer = 1;
      break;
    }
    ++count;
  }
  for (digit = str; ((int)(digit - str) < count); ++digit) {
    if (*digit - '0' > 9 || *digit - '0' < 0) {
      printf ("Invalid character!\n");
      return -1;
    }
    integSum += (*digit - '0')*pow(10., (count - (int)(digit - str) - 1));
  }

  for (++digit; *digit != 0; ++digit) {
    if (*digit - '0' > 9 || *digit - '0' < 0) {
      printf ("Invalid character!\n");
      return -1;
    }
    floatSum += (*digit - '0')*pow(10., (count + (int)(str - digit)));
  }

  printf("Decimal: %i\n", integSum);
  printf("Float: %1.10f\n", floatSum);
  hit1 = 0;
  for (i = 0; i < sizeof(int)*8; ++i) {
    if (1 << (sizeof(int)*8 - 1 - i) & integSum) {
      if (!hit1) {
        hit1 = 1;
      }
      printf("1");
    } else {
      if (hit1) {
        printf("0");
      }
    }
  }
  printf(".");
  printf("\n");
  return 0;
}

int main() {
  char str[] = "89238.9382943982";
  if (printBin (str)) {
    printf ("Error\n");
  }
  return 0;
}
