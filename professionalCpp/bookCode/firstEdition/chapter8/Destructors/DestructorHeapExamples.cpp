#include "SpreadsheetCell.h"
#include <iostream>
using namespace std;

int main(int argc, char** argv)
{
  SpreadsheetCell* cellPtr1 = new SpreadsheetCell(5);
  SpreadsheetCell* cellPtr2 = new SpreadsheetCell(6);

  cout << "cellPtr1: " << cellPtr1->getValue() << endl;

  delete cellPtr1; // destroys cellPtr1

  return (0);
} // cellPtr2 is NOT destroyed because delete was not called on it
