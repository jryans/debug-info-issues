// Extracted from Git's `handle_builtin`

#include <stdbool.h>
#include <string.h>

bool example(int argc, const char **argv)
{
  if (argc > 1 && !strcmp(argv[1], "--help")) {
    return true;
  }
  return false;
}
