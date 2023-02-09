int example(int n) {
  int a = 2;
  int y = 0;
  for (int i = 0; i < n; i++)
    y += a + n;
  return y;
}

int main() {
  int n = 10;
  return example(n);
}
