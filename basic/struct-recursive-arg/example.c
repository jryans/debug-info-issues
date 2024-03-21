struct S {
  int id;
  struct S *next;
};

void modify(struct S *s);

int example(int n)
{
  struct S s = { n };
  modify(&s);
  if (s.next && s.next->next)
    return s.next->next->id;
  if (s.next)
    return s.next->id;
  return s.id;
}
