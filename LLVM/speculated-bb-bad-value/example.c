int example() {
  volatile int foo = 4;
  int read = foo;
  int read1 = foo;

  int result = 0;
  if (read == 4) { // debugger shows `result: 2` here
    result = read1 + 2;
  } else {
    result = read1 - 2;
  }

  return result;
}
