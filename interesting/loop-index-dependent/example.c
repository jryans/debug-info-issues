int modify(int i);

int example(int n) {
  int r = 0;
  for (int i = 0; i < 2; i++) {
    if (i)
      r = modify(i);
    else
      r += 4;
  }
  return r;
}
