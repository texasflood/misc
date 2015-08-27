#include <iostream>
#include <stdexcept>

double divideNumbers(double inNumerator, double inDenominator) {
  if (inDenominator == 0) {
    throw std::exception();
  }
  return (inNumerator / inDenominator);
}

int main(int argc, char** argv) {
  try {
    std::cout << divideNumbers(2.3, 0) << std::endl;
  } catch (std::exception exception) {
    std::cout << "An exception was caught!" << std::endl;
  }
}
