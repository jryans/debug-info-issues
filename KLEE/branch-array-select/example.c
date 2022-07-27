#include "klee/klee.h"

unsigned long example(unsigned long n) {
  unsigned long data[4] = { 0, 1, 2, 3 };
  unsigned long i;
  if (n < 4) {
    i = (n + 2) % 4;
  } else {
    i = (n * 2) % 4;
  }
  return data[i];
}

int main() {
  unsigned long n;
  klee_make_symbolic(&n, sizeof(n), "n");
  unsigned long result = example(n);
  return result;
}
