#ifndef CONCRETE
#include "klee/klee.h"
#endif

int main() {
  unsigned long n;
#ifndef CONCRETE
  klee_make_symbolic(&n, sizeof(n), "n");
#endif
  unsigned long result = example(n);
  return result;
}
