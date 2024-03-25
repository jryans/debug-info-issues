void modify(int *a);

int example(int n) {
  int x = 0;
  modify(&x);
  x++;
  return x;
}
