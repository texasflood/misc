#include <stdio.h>

class animal {
  private:
    static int noOfAnimals;
    int size;
    const char * name;
  public:
    animal (const char * nameArg);
    ~animal () {printf("%i\n", /*this->*/size);noOfAnimals--;};
    void introduce();
    void eat();
    void makeSound(){printf("Generic Sound\n");};
    static int getCount (){return noOfAnimals;};
};

animal::animal (const char * nameArg) {
  name = nameArg;
  noOfAnimals++;
}

void animal::introduce () {
  printf ("Hello my name is %s\n", name);
}

void animal::eat () {
  makeSound();
  printf ("Eating\n");
  this->size = 5;
}

//void animal::makeSound () {
  //printf ("Generic sound\n");
//}

class dog : public animal {
  public:
    dog (const char * nameArg) : animal (nameArg){}
    void makeSound () {
      printf ("Woof!\n");
    }
};

int animal::noOfAnimals = 0;

int main() {
  dog *aDog = new dog("Bobby");
  animal *anAni = aDog;
  aDog->eat();
  aDog->~animal();
  printf ("%i\n", aDog->getCount());
  return 0;
}
