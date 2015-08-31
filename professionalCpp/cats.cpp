class cat
{
    private:
        int height;
    public:
        cat (int inputHeight);
};

cat::cat (int inputHeight)
{
    height = inputHeight;
}

class twoCats
{
    private:
        cat firstCat;
        cat secondCat;
    public:
        twoCats (cat theFirstCat, cat theSecondCat);
        void addSecondCat (cat theSecondCat);
};

twoCats::twoCats (cat theFirstCat, cat theSecondCat) : firstCat(theFirstCat),
secondCat(theSecondCat)
{
}

void twoCats::addSecondCat (cat theSecondCat)
{
    secondCat = theSecondCat;
}

int main() {return 0;}
