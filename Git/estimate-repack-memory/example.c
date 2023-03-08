#include <stddef.h>
#include <stdint.h>
#include <sys/types.h>

// object.h

struct object {
  unsigned parsed : 1;
  unsigned type : 3;
  unsigned flags : 28;
};

// tree.h

struct tree {
  struct object object;
  void *buffer;
  unsigned long size;
};

// blob.h

struct blob {
  struct object object;
};

// pack-objects.h

struct object_entry {
  uint32_t bob;
};

// object-store.h

struct packed_git {
  off_t pack_size;
  size_t index_size;
};

// cache.h

extern size_t delta_base_cache_limit;

// packfile.h

extern struct repository *the_repository;
unsigned long repo_approximate_object_count(struct repository *r);
#define approximate_object_count() repo_approximate_object_count(the_repository)

// gc.c

extern unsigned long max_delta_cache_size;

uint64_t estimate_repack_memory(struct packed_git *pack)
{
  unsigned long nr_objects = approximate_object_count();
  size_t os_cache, heap;

  if (!pack || !nr_objects)
    return 0;

  os_cache = pack->pack_size + pack->index_size;
  heap = sizeof(struct object_entry) * nr_objects;
  heap += sizeof(struct blob) * nr_objects / 2;
  heap += sizeof(struct tree) * nr_objects / 2;
  heap += sizeof(struct object *) * nr_objects;
  heap += (sizeof(off_t) + sizeof(uint32_t)) * nr_objects;
  heap += delta_base_cache_limit;
  heap += max_delta_cache_size;

  return os_cache + heap;
}
