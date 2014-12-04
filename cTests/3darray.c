#include <stdio.h>
#include <stdlib.h>
#define HEIGHT 5
#define WIDTH 3
#define DEPTH 7
void printArr (double ***p2DArray);
int i, j, k;
int main() {
  double ***p2DArray;

  // Allocate memory
  p2DArray = (double ***) malloc(sizeof(double**[HEIGHT]));
  for (i = 0; i < HEIGHT; ++i) {
    p2DArray[i] = (double **) malloc(sizeof(double*[WIDTH]));

    for (j = 0; j < WIDTH; ++j)
      p2DArray[i][j] = (double *) malloc(sizeof(double[DEPTH]));
  }

  // Assign values
  ((p2DArray[0])[0])[0] = 3.6;
  p2DArray[1][2][4] = 4.0;

  printArr (p2DArray);
  // De-Allocate memory to prevent memory leak
  for (i = 0; i < HEIGHT; ++i) {
    for (j = 0; j < WIDTH; ++j)
      free(p2DArray[i][j]);

    free(p2DArray[i]);
  }
  free(p2DArray);

  return 0;
}

void printArr (double ***p2DArray) {
  for (i = 0; i < WIDTH; ++i) {
    for (j = 0; j < HEIGHT; ++j) {
      for (k = 0; k < DEPTH; ++k) {
        printf ("%f ", p2DArray[j][i][k]);
      }
      printf("\n");
    }
    printf("\n");
  }
}
