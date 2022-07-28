#include "klee/klee.h"

int main() {
  unsigned long n;
  klee_make_symbolic(&n, sizeof(n), "n");
  unsigned long result = example(n);
  return result;
}
