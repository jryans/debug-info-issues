#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/time.h>

// Direct call to current module's jump table, then jump to external code
// Extracted from Git's trace.c

uint64_t gettimeofday_nanos(void) {
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return (uint64_t)tv.tv_sec * 1000000000 + tv.tv_usec * 1000;
}

// Indirect call to external code
// Extracted from Git's string-list.c

struct string_list_item {
  char *string;
  void *util;
};

typedef int (*compare_strings_fn)(const char *, const char *);

struct string_list {
  struct string_list_item *items;
  size_t nr;
  size_t alloc;
  unsigned int strdup_strings : 1;
  compare_strings_fn cmp; /* NULL uses strcmp() */
};

#define for_each_string_list_item(item, list)                                  \
  for (item = (list)->items; item && item < (list)->items + (list)->nr; ++item)

struct string_list_item *unsorted_string_list_lookup(struct string_list *list,
                                                     const char *string) {
  struct string_list_item *item;
  compare_strings_fn cmp = list->cmp ? list->cmp : strcmp;

  for_each_string_list_item(item, list) {
    if (!cmp(string, item->string))
      return item;
  }
  return NULL;
}

// Tail call (jump) to external code
// Extracted from Git's gettext.c

int is_directory(const char *path) {
  struct stat st;
  return (!stat(path, &st) && S_ISDIR(st.st_mode));
}

bool gettext_done;

void git_setup_gettext(void) {
  char *dir = malloc(6);
  strcpy(dir, "/home");

  if (!is_directory(dir)) {
    free(dir);
    return;
  }

	gettext_done = true;
  free(dir);
}

// Test harness (just enough to call each function)

int main(int argc, const char **argv) {
  gettimeofday_nanos();

  struct string_list_item item = {"bob"};
  struct string_list list = {&item, 1};
  unsorted_string_list_lookup(&list, "bob");

  git_setup_gettext();
}
