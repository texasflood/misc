#include <iostream>
int * func (int a);

struct node {
  struct node* next;
  int value;
};
struct node * add (struct node *, struct node *);

int main() {
  struct node a, b, c, d, e, f;
  a.next = &b;
  a.value = 5;
  b.next = &c;
  b.value = 0;
  c.next = NULL;
  c.value = 7;
  d.next = &e;
  d.value = 3;
  e.next = &f;
  e.value = 0;
  f.next = NULL;
  f.value = 7;
  
  int intA = *func(d.value);
  int intB = *func(f.value);
  add (&a, &d);
  std::cout << intA << std::endl;
  std::cout << intB << std::endl;
  return 0;
}

int * func (int a) {
  static int b = a;
  return &b;
}

struct node * add(struct node * a, struct node * b) {
  struct node * currentPos = a;
  int number1 = 0, number2 = 0;
  int multiplier = 1;
  while (currentPos) {
    number1 += (currentPos->value)*multiplier;
    multiplier *= 10;
    currentPos = currentPos->next;
  }

  multiplier = 1;
  currentPos = b;

  while (currentPos) {
    number2 += (currentPos->value)*multiplier;
    multiplier *= 10;
    currentPos = currentPos->next;
  }
  int sum = number1 + number2;


  std::cout << number1 + number2 << std::endl;
}

