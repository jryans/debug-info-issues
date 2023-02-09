int example(int n) {
  int data[4] = { 0, 1, 2, 3 };
  for (int i = 0; i < n; i++) {
    int i2 = (i + 2) % 4;
    int *a = &data[i];
    int *b = &data[i2];
    *b += n;
  }
  return data[n % 4];
}

#include "../main.h"
