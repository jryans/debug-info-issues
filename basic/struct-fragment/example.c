struct S {
  int a;
  int b;
};

void read(int a);

int example(int n) {
  struct S s = { n, n + 1 };
  read(s.a); read(s.b);
  s.a = 2 * n;
  s.b = 2 * n + 1;
  return s.a;
}
