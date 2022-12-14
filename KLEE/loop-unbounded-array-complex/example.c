unsigned long example(unsigned long n) {
  unsigned long data[4] = { 0, 1, 2, 3 };
  for (unsigned long i = 0; i < n; i++) {
    unsigned long i2 = (i + 2) % 4;
    unsigned long *a = &data[i];
    unsigned long *b = &data[i2];
    *b += n;
  }
  return data[n % 4];
}

#include "../main.h"
