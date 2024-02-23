void read(int x);

int example1(int n) {
  int x = n * 2;
  int y = x + 4 + n;
  return y;
}

int example2(int n) {
  int x = n * 2; read(x);
  int y = x + 4 + n; read(y);
  x = y + n;
  y = x * 2;
  return y;
}
