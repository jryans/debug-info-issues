int example(int a, int b, int c, int d) {
  int x = a + b;
  int y = c * d;
  x -= y;
  y += y; // optimised has nothing to stop on here
  return x + y;
}
