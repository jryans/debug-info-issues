int modify(int i);

int example(int n) {
  int r = 0;
  for (int i = 0; i < n; i++) {
    if (i == 64)
      r = modify(i);
  }
  return r;
}
