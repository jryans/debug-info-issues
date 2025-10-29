int nonmember(int n);

struct S {
  int x;
  int member(int n);
};

int main(int argc, char** argv) {
  struct S s = {};
  int a = s.member(argc);  // member call, no DW_TAG_call_site
  int b = nonmember(argc); // nonmember call, with DW_TAG_call_site
  return a + b;
}
