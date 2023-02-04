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

#include "../main.h"
