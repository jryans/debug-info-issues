struct S {
  int a;
  int b;
};

int example(int n)
{
  struct S s = { n, n + 1 };
  return s.a + s.b;
}
