#include <string.h>

struct cmd_struct {
  const char *cmd;
  int (*fn)(int, const char **, const char *);
  unsigned int option;
};

struct cmd_struct commands[4] = {
  { "cmd1" },
  { "cmd2" },
  { "cmd3" },
  { "cmd4" },
};

struct cmd_struct *get_builtin(const char *s)
{
  int i;
  for (i = 0; i < 4; i++) {
    struct cmd_struct *p = commands + i;
    if (!strcmp(s, p->cmd))
      return p;
  }
  return NULL;
}
