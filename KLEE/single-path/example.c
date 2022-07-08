#include "klee/klee.h"

__attribute__((noinline))
int example(int n) {
  int x = n * 2;
  int y = x + 4 + n;
  return y;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  int result = example(n);
  return result;
}
