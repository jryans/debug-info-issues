#include <string.h>

// git-compat-util.h

__attribute__((__noreturn__)) void usage(const char *err);
int error(const char *err, ...) __attribute__((format (printf, 1, 2)));

// hash.h

struct object_id {
  unsigned char hash[32];
  int algo;	/* XXX requires 4-byte alignment */
};

// object.h

struct object {
  unsigned parsed : 1;
  unsigned type : 3;
  unsigned flags : 28;
  struct object_id oid;
};

struct object_array {
  unsigned int nr;
  unsigned int alloc;
  struct object_array_entry {
    struct object *item;
    /*
     * name or NULL.  If non-NULL, the memory pointed to
     * is owned by this object *except* if it points at
     * object_array_slopbuf, which is a static copy of the
     * empty string.
     */
    char *name;
    char *path;
    unsigned mode;
  } *objects;
};

// diff.h

struct diff_options {
  int context;
};

struct rev_info;
void diff_get_merge_base(const struct rev_info *revs, struct object_id *mb);
void diff_tree_oid(const struct object_id *old_oid,
       const struct object_id *new_oid,
       const char *base, struct diff_options *opt);

// revision.h

#define UNINTERESTING   (1u<<1)

struct rev_info {
  struct object_array pending;
  struct diff_options diffopt;
};

// log-tree.h

int log_tree_diff_flush(struct rev_info *);

// diff.c

static const char builtin_diff_usage[] = "";

int builtin_diff_tree(struct rev_info *revs,
           int argc, const char **argv,
           struct object_array_entry *ent0,
           struct object_array_entry *ent1)
{
  const struct object_id *(oid[2]);
  struct object_id mb_oid;
  int merge_base = 0;

  while (1 < argc) {
    const char *arg = argv[1];
    if (!strcmp(arg, "--merge-base"))
      merge_base = 1;
    else
      usage(builtin_diff_usage);
    argv++; argc--;
  }

  if (merge_base) {
    diff_get_merge_base(revs, &mb_oid);
    oid[0] = &mb_oid;
    oid[1] = &revs->pending.objects[1].item->oid;
  } else {
    int swap = 0;

    /*
     * We saw two trees, ent0 and ent1.  If ent1 is uninteresting,
     * swap them.
     */
    if (ent1->item->flags & UNINTERESTING)
      swap = 1;
    oid[swap] = &ent0->item->oid;
    oid[1 - swap] = &ent1->item->oid;
  }
  diff_tree_oid(oid[0], oid[1], "", &revs->diffopt);
  log_tree_diff_flush(revs);
  return 0;
}
