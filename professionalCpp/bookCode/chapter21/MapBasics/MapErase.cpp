#include <map>
#include <iostream>
using namespace std;

class Data
{
public:
  Data(int val = 0) { mVal = val; }
  int getVal() const { return mVal; }
  void setVal(int val) {mVal = val; }

  // remainder of definition omitted 
protected:
  int mVal;
};

int main(int argc, char** argv)
{
  map<int, Data> dataMap;
  dataMap[1] = Data(4);

  cout << "There are " << dataMap.count(1) << " elements with key 1\n";
  dataMap.erase(1);
  cout << "There are " << dataMap.count(1) << " elements with key 1\n";

  return (0);
}
