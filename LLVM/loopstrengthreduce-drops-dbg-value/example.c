int foo(int blah) {
  int bob;
  for (bob = blah; bob < blah + 10; ++bob) {
    if (bob < 3)
      return 0;
  }
  return 1;
}
