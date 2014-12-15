#include <iostream>
#include <vector>
using namespace std;
int main() {
  
  vector<vector<int> > a = vector<vector<int>(4,0) > (4,0);
  vector<vector<int> > b = vector<vector<int>(4,2) > (4);
  vector<vector<int> > c = vector<vector<int>(4,1) > (4);
  int blockingFactor = 2;
  int jj = 0;
  int kk = 0;
  while (jj < matrixSize) {
    while (kk < matrixSize) {
      //POINT 1: BxB c[k][j] fits into the cache
      for (int i=0; i < matrixSize; i++) {
        //POINT 2: 1xB a[i][j] and 1xB b[i][k] fit into the cache
        for (int j=jj; j < jj + blockingFactor; j++) {
          r = 0; // r is local register -- faster!
          for (int k=kk; k < kk + blockingFactor; k++) {
            r += b[i][k] * c[k][j];
          }
          a[i][j] = a[i][j] + r;
        }
      }
      kk += blockingFactor;
    }
    kk = 0;
    jj += blockingFactor;
  }

  for (int i = 0; i < a.size() ++i) {
    for (int j = 0; j < a[i].size(); ++j) {
      std::cout << a[i][j] << " ";
    }
    std::cout << "\n";
  } 
}
