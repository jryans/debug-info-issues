#include "klee/klee.h"

int example(int n) {
  int x = n * 2;
  int y = 0;
  for (unsigned int i = 0; i < n; i++) {
    y += x + 4 + n;
  }
  return y;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  int result = example(n);
  return result;
}
