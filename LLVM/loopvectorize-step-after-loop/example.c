#include <stdlib.h>
#include <string.h>

#define BUFSZ 256

int foo(int argc, int init, int *bar) {
  if (argc + 1 > BUFSZ)
    return 0;

  int tmp = argc;
  int bees;
  for (int j = 0; j < argc; j++) {
    bees = bar[j];
    tmp += bees;
  }

  return tmp;
}
