volatile int g, *x;

int baz(int p, int q) {
  int local;

  local = p;
  switch (g) {
  case 1:
    x[1] = local;
    g += p;
    break;
  case 2:
    x[1] += p;
    break;
  case 3:
    local = q;
    g++;
    break;
  }

  return 4 + q;
}
