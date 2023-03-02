#include <stddef.h>

// git-compat-util.h

#define UNUSED __attribute__((unused)) \
  __attribute__((deprecated))

int skip_prefix(const char *str, const char *prefix,
            const char **out);

// hash.h

struct object_id {
  unsigned char hash[32];
  int algo;	/* XXX requires 4-byte alignment */
};

int oideq(const struct object_id *oid1, const struct object_id *oid2);
void oidcpy(struct object_id *dst, const struct object_id *src);

// strvec.h

struct strvec {
  const char **v;
  size_t nr;
  size_t alloc;
};

// string-list.h

struct string_list_item {
  char *string;
  void *util;
};

// wildmatch.h

int wildmatch(const char *pattern, const char *text, unsigned int flags);

// refs.h

int peel_iterated_oid(const struct object_id *base, struct object_id *peeled);

typedef int (*compare_strings_fn)(const char *, const char *);

struct string_list {
  struct string_list_item *items;
  size_t nr;
  size_t alloc;
  unsigned int strdup_strings:1;
  compare_strings_fn cmp; /* NULL uses strcmp() */
};

#define STRING_LIST_INIT_NODUP { 0 }

#define for_each_string_list_item(item,list)            \
  for (item = (list)->items;                      \
       item && item < (list)->items + (list)->nr; \
       ++item)

// describe.c

static int all;	/* Any valid ref can be used */
static struct string_list patterns = STRING_LIST_INIT_NODUP;
static struct string_list exclude_patterns = STRING_LIST_INIT_NODUP;

void add_to_known_names(const char *path,
             const struct object_id *peeled,
             int prio,
             const struct object_id *oid);

int get_name(const char *path, const struct object_id *oid,
        int flag UNUSED, void *cb_data UNUSED)
{
  int is_tag = 0;
  struct object_id peeled;
  int is_annotated, prio;
  const char *path_to_match = NULL;

  if (skip_prefix(path, "refs/tags/", &path_to_match)) {
    is_tag = 1;
  } else if (all) {
    if ((exclude_patterns.nr || patterns.nr) &&
        !skip_prefix(path, "refs/heads/", &path_to_match) &&
        !skip_prefix(path, "refs/remotes/", &path_to_match)) {
      /* Only accept reference of known type if there are match/exclude patterns */
      return 0;
    }
  } else {
    /* Reject anything outside refs/tags/ unless --all */
    return 0;
  }

  /*
   * If we're given exclude patterns, first exclude any tag which match
   * any of the exclude pattern.
   */
  if (exclude_patterns.nr) {
    struct string_list_item *item;

    for_each_string_list_item(item, &exclude_patterns) {
      if (!wildmatch(item->string, path_to_match, 0))
        return 0;
    }
  }

  /*
   * If we're given patterns, accept only tags which match at least one
   * pattern.
   */
  if (patterns.nr) {
    int found = 0;
    struct string_list_item *item;

    for_each_string_list_item(item, &patterns) {
      if (!wildmatch(item->string, path_to_match, 0)) {
        found = 1;
        break;
      }
    }

    if (!found)
      return 0;
  }

  /* Is it annotated? */
  if (!peel_iterated_oid(oid, &peeled)) {
    is_annotated = !oideq(oid, &peeled);
  } else {
    oidcpy(&peeled, oid);
    is_annotated = 0;
  }

  /*
   * By default, we only use annotated tags, but with --tags
   * we fall back to lightweight ones (even without --tags,
   * we still remember lightweight ones, only to give hints
   * in an error message).  --all allows any refs to be used.
   */
  if (is_annotated)
    prio = 2;
  else if (is_tag)
    prio = 1;
  else
    prio = 0;

  add_to_known_names(all ? path + 5 : path + 10, &peeled, prio, oid);
  return 0;
}
