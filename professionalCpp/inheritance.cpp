#include <iostream>
using std::cout;
using std::endl;

class Animal {
  public:
    Animal();
    Animal(int age);
    void eat();
    int age;
    int getHeight();
  private:
    int height;
};

Animal::Animal() : age(10), height(1) {
}

Animal::Animal(int age) : age(age), height(2) {
}

void Animal::eat() {
  cout << "general animal eat" << endl;
}

int Animal::getHeight() {
  return height;
}

class Dog : public Animal {
  public:
    Dog();
    Dog(int age);
    //void eat();
    void eat() = delete;
    int dogAge;
};

//void Dog::eat() {
  //cout << "dog eat" << endl;
//}

Dog::Dog() : Animal(), dogAge(10) {
}

Dog::Dog(int age) : Animal(age), dogAge(age*7) {
}

void makeEat(Animal* organism) {
  organism->eat();
}

int main() {
  Dog ralph;
  makeEat(&ralph);
  ralph.eat();
  cout << ralph.age << endl;
  cout << ralph.dogAge << endl;
  cout << ralph.getHeight() << endl;
  //Animal joe = ralph;
  Animal joe;
  joe = ralph;
  makeEat(&joe);
  joe.eat();
  cout << joe.age << endl;
  cout << joe.getHeight() << endl;
}
