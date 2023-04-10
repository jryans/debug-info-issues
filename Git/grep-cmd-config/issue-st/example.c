#include <string.h>
char b;
int a();
int c() {
  int st = a();
  if (a())
    st = 1;
  if (strcmp(&b, ""))
    a();
  return st;
}
