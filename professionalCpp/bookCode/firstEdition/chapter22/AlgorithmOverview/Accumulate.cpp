#include <numeric>
#include <vector>
#include <cmath>
#include <iostream>
using namespace std;

double arithmeticMean(const vector<int>& nums)
{
  double sum = accumulate(nums.begin(), nums.end(), 0);
  return (sum / nums.size());
}

int product(int num1, int num2)
{
  return (num1 * num2);
}

double geometricMean(const vector<int>& nums)
{
  double mult = accumulate(nums.begin(), nums.end(), 1, product);
  return (pow(mult, 1.0 / nums.size()));
}

int main(int argc, char** argv)
{
  vector<int> myVector;

  int num;
  while (true) {
    cout << "Enter a test score to add (0 to stop): ";
    cin >> num;
    if (num == 0) {
      break;
    }
    myVector.push_back(num);
  }

  cout << "The arithmetic mean is " << arithmeticMean(myVector) << endl;
  cout << "The geometric mean is " << geometricMean(myVector) << endl;

  return (0);
}
