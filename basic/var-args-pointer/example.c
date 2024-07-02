// Adapted from `read_min` in SPEC CPU 2017's `505.mcf_r` benchmark

#include <stdio.h>

int example(const char *str) {
  int t;
  if(sscanf(str, "%d", &t) != 2)
    return 0;
  int sum = 0;
  for (int i = 0; i < t; i++)
    sum += i % 4;
  return sum;
}
