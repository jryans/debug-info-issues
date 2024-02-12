int modify(int i);

int example() {
  int x = 1;
  x++;
  x++;
  x = modify(x);
  return x;
}
