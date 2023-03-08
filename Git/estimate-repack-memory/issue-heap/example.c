#include <stddef.h>
#include <stdint.h>

struct object {
  uint32_t bob;
};

struct object_entry {
  uint32_t bob;
};

struct packed {
  uint32_t pack_size;
  size_t index_size;
};

extern unsigned long count(void);

uint64_t e(struct packed *pack)
{
  unsigned long nr_objects = count();
  size_t os_cache, heap;

  if (!pack || !nr_objects)
    return 0;

  os_cache = pack->pack_size + pack->index_size;
  heap = sizeof(struct object_entry) * nr_objects;
  heap += sizeof(struct object *) * nr_objects / 2;

  return os_cache + heap;
}
