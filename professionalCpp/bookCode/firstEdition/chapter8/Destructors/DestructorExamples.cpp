#include "SpreadsheetCell.h"
#include <iostream>
using namespace std;

int main(int argc, char** argv)
{
  SpreadsheetCell myCell(5);

  if (myCell.getValue() == 5) {
    SpreadsheetCell anotherCell(6);
  } // anotherCell is destroyed as this block ends

  cout << "myCell: " << myCell.getValue() << endl;

  {
    SpreadsheetCell myCell2(4);
    SpreadsheetCell anotherCell2(2); // myCell2 constructed before anotherCell2
  } // anotherCell2 destroyed before myCell2

  return (0);
} // myCell is destroyed as this block ends