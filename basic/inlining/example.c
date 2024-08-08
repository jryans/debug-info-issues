#include <stdlib.h>

void inc(int *n) {
  ++*n;
}

unsigned int collatz(unsigned int n) {
  if (n % 2 == 0) {
    return n / 2;
  } else {
    return n * 3 + 1;
  }
}

__attribute__((__noinline__))
void barrier(int *n) {
  volatile int disguise = *n;
  *n = disguise;
}

int ex101SingleInc(int n) {
  int x = n;
  inc(&x);
  return x;
}

int ex102DoubleInc(int n) {
  int x = n;
  inc(&x);
  inc(&x);
  return x;
}

int ex103DoubleIncBarrier(int n) {
  int x = n;
  inc(&x);
  barrier(&x);
  inc(&x);
  return x;
}

int ex104DoubleCollatz(int n) {
  int x = n;
  x = collatz(x);
  x = collatz(x);
  return x;
}

int main(int argc, const char **argv) {
  int n = atoi(argv[0]);
  n = ex101SingleInc(n);
  n = ex102DoubleInc(n);
  n = ex103DoubleIncBarrier(n);
  n = ex104DoubleCollatz(n);
  return n;
}
