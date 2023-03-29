int cond(int n);
void read(int x);

int example(int n) {
  int a, b, c = cond(n);
  if (c) {
    a = 1; read(a);
  } else {
    b = -1; read(b);
  }
  if (c) {
    return a;
  } else {
    return b;
  }
}
