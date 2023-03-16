int cond(int n);
void read(int x);

int example(int n) {
  int a, b;
  if (cond(n)) {
    a = 1; read(a);
  } else {
    b = -1;
  }
  if (cond(n)) {
    a = 2; read(a);
  } else {
    b = -2;
  }
  return a + b;
}
