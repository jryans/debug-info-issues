int example(int *x, int len) {
  int r = 0;
#pragma clang loop unroll(disable)
  for (int i = 0; i < len; i++) {
    r += x[i];
  }
  return r;
}
