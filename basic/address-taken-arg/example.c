void modify(int *a);

int example(int n) {
  int x = 0;
  modify(&x);
  x++;
  return x;
}

int modify_return(int *a);

int example_return(int n) {
  int x = 0;
  int y = modify_return(&x);
  x++;
  return x + y;
}
