int example(int n) {
  int y = 0;
  unsigned int i = 0;
  if (n < 10)
    goto inside;
  for (i = 2; i < n; i++) {
inside:
    y += i + 4 + n;
  }
  return y;
}
