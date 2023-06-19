struct bees {
  int a;
  int b;
};

int global = 0;

struct bees foo(struct bees eyelids) {
  global = 1;
  int bar = eyelids.a + eyelids.b;
  return eyelids;
}
