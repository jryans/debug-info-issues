int example(int n) {
  int a;
  int b;
  if (n) {
    b = 1;
    a = n;
  } else {
    b = 2;
    a = n + 2;
  }
  b += n + a + 1;
  return a + b;
}
