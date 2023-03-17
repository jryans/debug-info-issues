int example(int n) {
  int bob;
  int tom;
  if (n) {
    tom = 1;
    bob = n;
  } else {
    tom = 2;
    bob = n + 2;
  }
  tom += n + bob + 1;
  return bob + tom;
}
