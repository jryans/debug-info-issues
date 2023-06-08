void example(unsigned n, unsigned size, unsigned *data) {
  int i = 0;
#pragma clang loop vectorize(disable)
#pragma clang loop unroll(disable)
  while (i < size) {
    int comp = (4 * i) + n;
    data[i] = comp;
    i += 1;
  }
}

#ifndef CONCRETE
#include "klee/klee.h"
#endif

int main() {
  unsigned n;
  unsigned size;
  unsigned *data;
#ifndef CONCRETE
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_make_symbolic(&size, sizeof(size), "size");
  klee_make_symbolic(&data, sizeof(data), "data");
#endif
  example(n, size, data);
}
