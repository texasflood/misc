#include "ArticleCitations.h"
#include <iostream>
#include <fstream>
#include <string>
#include <stdexcept>
using namespace std;

ArticleCitations::ArticleCitations(const string& fileName)
{
  // All we have to do is read the file
  readFile(fileName);
}

ArticleCitations::ArticleCitations(const ArticleCitations& src)
{
  // Copy the article name, author, etc.
  mArticle = src.mArticle;
  // Copy the number of citations
  mNumCitations = src.mNumCitations;
  // Allocate an array of the correct size
  mCitations = new string[mNumCitations];
  // Copy each element of the array
  for (int i = 0; i < mNumCitations; i++) {
    mCitations[i] = src.mCitations[i];
  }
}

ArticleCitations& ArticleCitations::operator=(const ArticleCitations& rhs)
{
  // Check for self-assignment
  if (this == &rhs) {
    return (*this);
  }
  // Free the old memory
  delete [] mCitations;
  // Copy the article name, author, etc.
  mArticle = rhs.mArticle;
  // Copy the number of citatoins
  mNumCitations = rhs.mNumCitations;
  // Allocate a new array of the correct size
  mCitations = new string[mNumCitations];
  // Copy each citation
  for (int i = 0; i < mNumCitations; i++) {
    mCitations[i] = rhs.mCitations[i];
  }
  return (*this);
}

ArticleCitations::~ArticleCitations()
{
  delete [] mCitations;
}

void ArticleCitations::readFile(const string& fileName)
{
  // open the file and check for failure
  ifstream istr(fileName.c_str());
  if (istr.fail()) {
    throw invalid_argument("Unable to open file\n");
  }
  // read the article author, title, etc. line.
  getline(istr, mArticle);

  // skip the whitespace before the citations start
  istr >> ws;

  int count = 0;
  // save the current position so we can return to it
  int citationsStart = istr.tellg();
  // First count the number of citations
  while (!istr.eof()) {
    string temp;
    getline(istr, temp);
    // skip whitespace before the next entry
    istr >> ws;
    count++;
  }

  if (count != 0) {
    // allocate an array of strings to store the citations
    mCitations = new string[count];
    mNumCitations = count;
    // seek back to the start of the citations
    istr.seekg(citationsStart);
    // read each citation and store it in the new array
    for (count = 0; count < mNumCitations; count++) {
      string temp;
      getline(istr, temp);
      mCitations[count] = temp;
    }
  }
}
