struct object_id {
  int algo;
};

struct object {
  struct object_id oid;
};

struct entry {
  struct object *item;
};

int example(int n, struct entry *ent0, struct entry *ent1) {
  const struct object_id *(oid[2]);
  struct object_id mb_oid;

  if (n) {
    oid[0] = &mb_oid;
    oid[1] = &ent0->item->oid;
  } else {
    int swap = 0;
    oid[swap] = &ent0->item->oid;
    oid[1 - swap] = &ent1->item->oid;
  }
  return oid[0]->algo;
}
