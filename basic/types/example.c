#include <assert.h>
#include <stdbool.h>
#include <stddef.h>

// Scalars

int ex101Int(int a) {
  return a;
}

struct s102 {
  int a;
};
int ex102Struct(struct s102 s) {
  return s.a;
}

// Array cases are not possible as a scalar function argument in C

int ex105PointerSingleElementValue(int *a) {
  return *a;
}

int ex106PointerSingleElementInstances(int *a, int *b) {
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

int ex107PointerMultipleElementValues(int *a) {
  // Currently fails, max of 2 elements assumed
  return a[0] + a[1] + a[2] + a[3];
}

int ex108PointerFunction(int (*a)()) {
  return a();
}

// Struct field of type...

struct s201 {
  int a;
};
int ex201StructFieldInt(struct s201 s) {
  return s.a;
}

struct s202 {
  struct inner {
    int a;
  } inner;
};
int ex202StructFieldStruct(struct s202 s) {
  return s.inner.a;
}

struct s203 {
  int a[4];
};
int ex203StructFieldArrayFixedLength(struct s203 s) {
  return s.a[0] + s.a[3];
}

struct s204 {
  int placeholder;
  int a[];
};
int ex204StructFieldArrayVariableLength(struct s204 s) {
  return s.a[0] + s.a[3];
}

struct s205 {
  int *a;
};
int ex205StructFieldPointerSingleElementValue(struct s205 s) {
  return *s.a;
}

struct s206 {
  int *a;
  int *b;
};
int ex206StructFieldPointerSingleElementInstances(struct s206 s) {
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

struct s207 {
  int *a;
};
int ex207StructFieldPointerMultipleElementValues(struct s207 s) {
  // Currently fails, max of 2 elements assumed
  return s.a[0] + s.a[1] + s.a[2] + s.a[3];
}

struct s208 {
  int (*a)();
};
int ex208StructFieldPointerFunction(struct s208 s) {
  return s.a();
}
