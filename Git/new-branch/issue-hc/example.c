#include <stddef.h>
#include <stdlib.h>
#include <string.h>

extern unsigned long branch_table_sz;
extern struct branch **branch_table;

struct branch {
  const char *name;
};

unsigned int hc_str(const char *s, size_t len);

struct branch *lookup_branch(const char *name);

struct branch *new_branch(const char *name)
{
  unsigned int hc = hc_str(name, strlen(name)) % branch_table_sz;
  struct branch *b = lookup_branch(name);

  if (b)
    exit(1);

  branch_table[hc] = b;
  return b;
}
