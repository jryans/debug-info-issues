struct S {
  int id;
  struct S *next;
};

int example_struct(int n)
{
  struct S s;
  s.id = n;
  return s.id;
}
