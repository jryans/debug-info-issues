int foo(int *bar, int arg, int more) {
  int redundant = *bar;
  int loaded = *bar;
  arg &= more + loaded;

  *bar = 0;

  return more + *bar;
}
