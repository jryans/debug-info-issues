#include <assert.h>
#include <stdbool.h>
#include <stddef.h>

// Scalars

int ex001Int(int a) {
  return a;
}

struct s002 {
  int a;
};
int ex002Struct(struct s002 s) {
  return s.a;
}

int ex003PointerSingleElementValue(int *a) {
  return *a;
}

int ex004PointerSingleElementInstances(int *a, int *b) {
  if (a == NULL || b == NULL) {
    // Currently fails, case unimplemented
    return 1; // null
  }
  if (a != b) {
    return 2; // new instance
  }
  if (a == b) {
    // Currently fails, case unimplemented
    return 3; // existing instance
  }
  assert(false);
}

int ex005PointerMultipleElementValues(int *a) {
  // Currently fails, max of 2 elements assumed
  return a[0] + a[1] + a[2] + a[3];
}

int ex006PointerFunction(int (*a)()) {
  return a();
}

// Struct field of type...

struct s007 {
  int a;
};
int ex007StructFieldInt(struct s007 s) {
  return s.a;
}

struct s008 {
  struct inner {
    int a;
  } inner;
};
int ex008StructFieldStruct(struct s008 s) {
  return s.inner.a;
}

struct s009 {
  int a[4];
};
int ex009StructFieldArrayFixedLength(struct s009 s) {
  return s.a[0] + s.a[3];
}

struct s010 {
  int placeholder;
  int a[];
};
int ex010StructFieldArrayVariableLength(struct s010 s) {
  return s.a[0] + s.a[3];
}

struct s011 {
  int *a;
};
int ex011StructFieldPointerSingleElementValue(struct s011 s) {
  return *s.a;
}

struct s012 {
  int *a;
  int *b;
};
int ex012StructFieldPointerSingleElementInstances(struct s012 s) {
  if (s.a == NULL || s.b == NULL) {
    // Currently fails, case unimplemented
    return 1; // null
  }
  if (s.a != s.b) {
    return 2; // new instance
  }
  if (s.a == s.b) {
    // Currently fails, case unimplemented
    return 3; // existing instance
  }
  assert(false);
}

struct s013 {
  int *a;
};
int ex013StructFieldPointerMultipleElementValues(struct s013 s) {
  // Currently fails, max of 2 elements assumed
  return s.a[0] + s.a[1] + s.a[2] + s.a[3];
}

struct s014 {
  int (*a)();
};
int ex014StructFieldPointerFunction(struct s014 s) {
  return s.a();
}
