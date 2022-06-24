int main(int argc, char* argv[]) {
  int bob;
  int tom;
  if (argc) {
    bob = argc;
  } else {
    bob = argc + 2;
  }
  tom = argc + bob + 1;
  return bob + tom;
}
