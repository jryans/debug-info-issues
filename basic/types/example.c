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
  } else if (a != b) {
    return 2; // new instance
  } else {
    // Currently fails, case unimplemented
    return 3; // existing instance
  }
}

int ex107PointerMultipleElementValues(int *a) {
  // Currently fails, max of 2 elements assumed
  return a[0] + a[3];
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
  struct {
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
  } else if (s.a != s.b) {
    return 2; // new instance
  } else {
    // Currently fails, case unimplemented
    return 3; // existing instance
  }
}

struct s207 {
  int *a;
};
int ex207StructFieldPointerMultipleElementValues(struct s207 s) {
  // Currently fails, max of 2 elements assumed
  return s.a[0] + s.a[3];
}

struct s208 {
  int (*a)();
};
int ex208StructFieldPointerFunction(struct s208 s) {
  return s.a();
}

// Array with element type...

struct s301 {
  int a[4];
};
int ex301ArrayElemInt(struct s301 s) {
  return s.a[0] + s.a[3];
}

struct s302 {
  struct {
    int a;
  } inner[4];
};
int ex302ArrayElemStruct(struct s302 s) {
  return s.inner[0].a + s.inner[3].a;
}

struct s303 {
  int a[4][4];
};
int ex303ArrayElemArrayFixedLength(struct s303 s) {
  return s.a[0][0] + s.a[3][3];
}

// Array of variable-length arrays is not possible in C

struct s305 {
  int *a[4];
};
// Execution incomplete, too many forks due to symbolic addresses
int ex305ArrayElemPointerSingleElementValue(struct s305 s) {
  return *s.a[0];
}

struct s306 {
  int *a[4];
};
// Currently whole function passes because these pointers are symbolic
// Once they are concretised, the cases below will fail
int ex306ArrayElemPointerSingleElementInstances(struct s306 s) {
  if (s.a[0] == NULL || s.a[3] == NULL) {
    // Currently fails, case unimplemented
    return 1; // null
  } else if (s.a[0] != s.a[3]) {
    return 2; // new instance
  } else {
    // Currently fails, case unimplemented
    return 3; // existing instance
  }
}

struct s307 {
  int *a[4];
};
// Execution incomplete, too many forks due to symbolic addresses
int ex307ArrayElemPointerMultipleElementValues(struct s307 s) {
  // Currently fails, max of 2 elements assumed
  return *s.a[0] + *s.a[3];
}

struct s308 {
  int (*a[4])();
};
// Execution incomplete, too many forks due to symbolic function pointers
int ex308ArrayElemPointerFunction(struct s308 s) {
  return s.a[0]() + s.a[3]();
}

// Pointer to...

int ex401PointerToInt(int *a) {
  return *a;
}

struct s402 {
  int a;
};
int ex402PointerToStruct(struct s402 *s) {
  return s->a;
}

// Array cases are not possible as a pointer function argument in C

int ex405PointerToPointerSingleElementValue(int **a) {
  return **a;
}

int ex406PointerToPointerSingleElementInstances(int **a, int **b) {
  if (*a == NULL || *b == NULL) {
    // Currently fails, case unimplemented
    return 1; // null
  } else if (*a != *b) {
    return 2; // new instance
  } else {
    // Currently fails, case unimplemented
    return 3; // existing instance
  }
}

int ex407PointerToPointerMultipleElementValues(int **a) {
  // Currently fails, max of 2 elements assumed
  return (*a)[0] + (*a)[3];
}

int ex408PointerToPointerFunction(int (**a)()) {
  return (*a)();
}

// Nested pointers

struct s501 {
  struct {
    int *a[4];
  } inner;
};
// Execution complete, but symbolic addresses were used
int ex501StructWithArrayOfPointers(struct s501 s) {
  return *s.inner.a[0];
}

struct s502 {
  struct {
    int *a;
  } inner[4];
};
// Execution complete, but symbolic addresses were used
int ex502ArrayOfStructsWithPointer(struct s502 s) {
  return *s.inner[0].a;
}
