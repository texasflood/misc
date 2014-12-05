#include <stdio.h>
typedef struct Node Node;
struct Node {
    int data;
    Node *nextptr;
} b;

int main() {
  Node a;
  a.data = 5;
  a.nextptr = &b;
  printf ("%i\n", b.data);
  printf ("%i\n", a.data);
  return 0;
}
