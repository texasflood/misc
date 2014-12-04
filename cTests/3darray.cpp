#include <stdio.h>
#define HEIGHT 5
#define WIDTH 3
#define DEPTH 7
void printArr (double ***p2DArray);
int main() {
  double ***p2DArray;

  // Allocate memory
  p2DArray = new double**[HEIGHT];
  for (int i = 0; i < HEIGHT; ++i) {
    p2DArray[i] = new double*[WIDTH];

    for (int j = 0; j < WIDTH; ++j)
      p2DArray[i][j] = new double[DEPTH];
  }

  // Assign values
  ((p2DArray[0])[0])[0] = 3.6;
  p2DArray[1][2][4] = 4.0;

  printArr (p2DArray);
  // De-Allocate memory to prevent memory leak
  for (int i = 0; i < HEIGHT; ++i) {
    for (int j = 0; j < WIDTH; ++j)
      delete [] p2DArray[i][j];

    delete [] p2DArray[i];
  }
  delete [] p2DArray;

  return 0;
}

void printArr (double ***p2DArray) {
  for (int i = 0; i < WIDTH; ++i) {
    for (int j = 0; j < HEIGHT; ++j) {
      for (int k = 0; k < DEPTH; ++k) {
        printf ("%f ", p2DArray[j][i][k]);
      }
      printf("\n");
    }
    printf("\n");
  }
}
