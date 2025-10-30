int example(int input) {
  int current;
  for (current = input; current < input + 10; ++current) {
    if (current < 3)
      return 0;
  }
  return 1;
}

int main() { example(0); }
