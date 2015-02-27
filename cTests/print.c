#include <stdio.h>

int main(int argc, char* argv[]) {
  fprintf( stdout, "hello world\nSome more output\n%s\n", argv[1]);
  fprintf( stderr, "Error\nMore error\n" );
  return 3;
}
