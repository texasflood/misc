#include "SpreadsheetCell.h"

int main(int argc, char** argv)
{
  SpreadsheetCell myCell(5);
  SpreadsheetCell anotherCell(myCell);
  SpreadsheetCell aThirdCell = myCell;
  anotherCell = myCell; // Calls operator= for anotherCell.

  SpreadsheetCell myCell2(5);
  string s1;
  s1 = myCell2.getString();

  SpreadsheetCell myCell3(5);
  string s2 = myCell3.getString();

  return (0);
}
