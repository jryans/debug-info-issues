void inspect(int val);

void example(int n) {
  int r, a;
  if (n > 0) {
    r = n + 1;
    a = n + r;
  } else {
    r = n - 1;
    a = -n + r;
  }
  inspect(r);
  inspect(a);
}
