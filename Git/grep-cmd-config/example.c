#include <stddef.h>
#include <string.h>

// git-compat-util.h

__attribute__((__noreturn__)) void die(const char *err, ...) __attribute__((format (printf, 1, 2)));

// config.h

int git_config_int(const char *, const char *);
int git_config_bool(const char *, const char *);

// color.h

int git_color_default_config(const char *var, const char *value, void *cb);

// grep.h

int grep_config(const char *var, const char *value, void *);

// grep.c

static int recurse_submodules;
static int num_threads;

int grep_cmd_config(const char *var, const char *value, void *cb)
{
  int st = grep_config(var, value, cb);
  if (git_color_default_config(var, value, NULL) < 0)
    st = -1;

  if (!strcmp(var, "grep.threads")) {
    num_threads = git_config_int(var, value);
    if (num_threads < 0)
      die("invalid number of threads specified (%d) for %s",
          num_threads, var);
  }

  if (!strcmp(var, "submodule.recurse"))
    recurse_submodules = git_config_bool(var, value);

  return st;
}
