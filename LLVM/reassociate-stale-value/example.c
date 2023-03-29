int example() {
  volatile int foo = 4;
  int read1 = foo;
  int read2 = foo;

  int cheese = foo;
  int a = read1 + read2;
  a += cheese;

  if (foo == 4) {
    cheese = read1 + read2;
    a -= cheese - 12;
    a *= 20; // <------ stale value seen
    a /= 3;
  } else {
    a = 0;
  }

  return a;
}
