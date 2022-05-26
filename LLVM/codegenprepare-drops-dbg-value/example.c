extern void use(int);
extern int foo(long long);

void test(int p)
{
  int i = p + 4;
  (void)foo(i);  // sign extension of i
  if (p)
    return;
  use(i);        // use of original i
}
