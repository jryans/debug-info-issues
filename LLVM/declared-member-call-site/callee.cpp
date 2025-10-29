int nonmember(int n) { return n + n; }

struct S {
  int x;
  int member(int n);
};

int S::member(int n) {
  int result = n + x;
  result = nonmember(result);
  return result;
}
