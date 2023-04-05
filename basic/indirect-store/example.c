void mutate(int *);

int example(void) {
  int x = 0;
  mutate(&x);
  int *y = &x;
  *y += 1;
  return x;
}
