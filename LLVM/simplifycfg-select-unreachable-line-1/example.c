int example() {
  volatile int foo = 0;
  int read1 = foo;
  int brains = foo;

  if (read1 > 3) {
    brains *= 2;
    brains += 1;
  }

  return brains;
}
