#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

// git-compat-util.h

__attribute__((__noreturn__)) void die(const char *err, ...) __attribute__((format (printf, 1, 2))) {
  exit(1);
}

// hash.h

struct object_id {
  unsigned char hash[32];
  int algo;
};

// refs.h

#define REFNAME_ALLOW_ONELEVEL 1

int check_refname_format(const char *refname, int flags);

// mem-pool.h

struct mp_block {
  struct mp_block *next_block;
  char *next_free;
  char *end;
  uintmax_t space[];
};

struct mem_pool {
  struct mp_block *mp_block;
  size_t block_alloc;
  size_t pool_alloc;
};

void *mem_pool_calloc(struct mem_pool *pool, size_t count, size_t size);

char *mem_pool_strdup(struct mem_pool *pool, const char *str);

// fast-import.c

extern unsigned long branch_count;

extern struct mem_pool fi_mem_pool;

extern unsigned long branch_table_sz;
extern struct branch **branch_table;

struct tree_content;
struct tree_entry {
  // struct tree_content *tree;
  // struct atom_str *name;
  struct tree_entry_ms {
    uint16_t mode;
    struct object_id oid;
  } versions[2];
};

struct tree_content {
  unsigned int entry_capacity; /* must match avail_tree_content */
  unsigned int entry_count;
  unsigned int delta_depth;
  struct tree_entry *entries[]; /* more */
};

#define PACK_ID_BITS 16
#define MAX_PACK_ID ((1<<PACK_ID_BITS)-1)

struct branch {
  struct branch *table_next_branch;
  struct branch *active_next_branch;
  const char *name;
  struct tree_entry branch_tree;
  uintmax_t last_commit;
  uintmax_t num_notes;
  unsigned active : 1;
  unsigned delete : 1;
  unsigned pack_id : PACK_ID_BITS;
  struct object_id oid;
};

unsigned int hc_str(const char *s, size_t len);

struct branch *lookup_branch(const char *name);

struct branch *new_branch(const char *name)
{
  unsigned int hc = hc_str(name, strlen(name)) % branch_table_sz;
  struct branch *b = lookup_branch(name);

  if (b)
    die("Invalid attempt to create duplicate branch: %s", name);
  if (check_refname_format(name, REFNAME_ALLOW_ONELEVEL))
    die("Branch name doesn't conform to GIT standards: %s", name);

  b = mem_pool_calloc(&fi_mem_pool, 1, sizeof(struct branch));
  b->name = mem_pool_strdup(&fi_mem_pool, name);
  b->table_next_branch = branch_table[hc];
  b->branch_tree.versions[0].mode = S_IFDIR;
  b->branch_tree.versions[1].mode = S_IFDIR;
  b->num_notes = 0;
  b->active = 0;
  b->pack_id = MAX_PACK_ID;
  branch_table[hc] = b;
  branch_count++;
  return b;
}
