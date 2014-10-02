#include <iostream>

class cat
{
    private:
        int height;
    public:
        cat (int inputHeight);
        void print (void);
};

cat::cat (int inputHeight)
{
    height = inputHeight;
}

void cat::print (void)
{
    std::cout << height << std::endl;
}

class twoCats
{
    private:
        cat *firstCat;
        cat *secondCat;
    public:
        twoCats (cat *theFirstCat);
        void addSecondCat (cat *theSecondCat);
        void print (void);
};

twoCats::twoCats (cat *theFirstCat)
{
    firstCat = theFirstCat;
}

void twoCats::addSecondCat (cat *theSecondCat)
{
    secondCat = theSecondCat;
}

void twoCats::print (void)
{
    (*firstCat).print();
    (*secondCat).print();
}

int main() 
{
    cat myCat = cat(4);
    cat anotherCat = cat(6);
    twoCats myTwoCats = twoCats(&myCat);
    myTwoCats.addSecondCat(&anotherCat);
    myTwoCats.print();
    return 0;
}
