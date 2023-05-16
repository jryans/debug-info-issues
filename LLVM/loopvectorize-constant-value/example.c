#include <string.h>

#define BUFSZ 192

int example() {
  int foo[BUFSZ];
  int bar[BUFSZ];

  memset(foo, 0, sizeof(foo));
  memset(bar, 1, sizeof(bar));

  for (int i = 0; i < BUFSZ; i++)
    foo[i] += bar[i];

  unsigned int sum = 0;
  for (int j; j < BUFSZ; j++)
    sum += foo[j];

  return sum;
}
