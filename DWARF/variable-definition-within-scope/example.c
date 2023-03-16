int example(int n) {
  int bob;
  int tom;
  if (n) {
    bob = n;
  } else {
    bob = n + 2;
  }
  tom = n + bob + 1;
  return bob + tom;
}
