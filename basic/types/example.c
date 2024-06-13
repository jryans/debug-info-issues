#include <assert.h>
#include <stdbool.h>
#include <stddef.h>

// Scalars

int ex101Int(int a) {
  return a;
}

struct s102 {
  int a;
  int _[2][2]; // Force struct in LLVM IR
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
    // Currently passes
    return 0; // null
  } else if (a != b) {
    return *a + *b; // new instance
  } else {
    // Currently passes
    return *a + *b; // existing instance
  }
}

// Multiple element case covered by pointer as array section

int ex108PointerFunction(int (*a)()) {
  // Uses concrete pointer, no symbolic resolution
  return a();
}

// Struct field of type...

struct s201 {
  int a;
  int _[2][2]; // Force struct in LLVM IR
};
int ex201StructFieldInt(struct s201 s) {
  return s.a;
}

struct s202 {
  struct {
    int a;
  } inner;
  int _[2][2]; // Force struct in LLVM IR
};
int ex202StructFieldStruct(struct s202 s) {
  return s.inner.a;
}

struct s203 {
  int a[4];
  int _[2][2]; // Force struct in LLVM IR
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
  int _[2][2]; // Force struct in LLVM IR
};
int ex205StructFieldPointerSingleElementValue(struct s205 s) {
  return *s.a;
}

struct s206 {
  int *a;
  int *b;
  int _[2][2]; // Force struct in LLVM IR
};
int ex206StructFieldPointerSingleElementInstances(struct s206 s) {
  if (s.a == NULL || s.b == NULL) {
    // Currently passes
    return 0; // null
  } else if (s.a != s.b) {
    return *s.a + *s.b; // new instance
  } else {
    // Currently passes
    return *s.a + *s.b; // existing instance
  }
}

struct s207 {
  int *a;
  int _[2][2]; // Force struct in LLVM IR
};
int ex207StructFieldPointerMultipleElementValues(struct s207 s) {
  // Currently passes
  return s.a[0] + s.a[3];
}

struct s208 {
  int (*a)();
  int _[2][2]; // Force struct in LLVM IR
};
int ex208StructFieldPointerFunction(struct s208 s) {
  // Triggers symbolic resolution, unclear if expected / desired
  return s.a();
}

// Array with element type...

struct s301 {
  int a[4];
  int _[2][2]; // Force struct in LLVM IR
};
int ex301ArrayElemInt(struct s301 s) {
  return s.a[0] + s.a[3];
}

struct s302 {
  struct {
    int a;
  } inner[4];
  int _[2][2]; // Force struct in LLVM IR
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
int ex305ArrayElemPointerSingleElementValue(struct s305 s) {
  return *s.a[0];
}

struct s306 {
  int *a[4];
};
int ex306ArrayElemPointerSingleElementInstances(struct s306 s) {
  if (s.a[0] == NULL || s.a[3] == NULL) {
    // Currently passes
    return 0; // null
  } else if (s.a[0] != s.a[3]) {
    return *s.a[0] + *s.a[3]; // new instance
  } else {
    // Currently passes
    return *s.a[0] + *s.a[3]; // existing instance
  }
}

struct s307 {
  int *a[4];
};
int ex307ArrayElemPointerMultipleElementValues(struct s307 s) {
  // Currently passes
  return s.a[0][0] + s.a[0][3];
}

struct s308 {
  int (*a[4])();
};
int ex308ArrayElemPointerFunction(struct s308 s) {
  // Triggers symbolic resolution, unclear if expected / desired
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
    // Currently passes
    return 0; // null
  } else if (*a != *b) {
    return **a + **b; // new instance
  } else {
    // Currently passes
    return **a + **b; // existing instance
  }
}

int ex407PointerToPointerMultipleElementValues(int **a) {
  // Currently passes
  return (*a)[0] + (*a)[3];
}

int ex408PointerToPointerFunction(int (**a)()) {
  // Uses concrete pointer, no symbolic resolution
  return (*a)();
}

// Pointer as array of...

int ex501PointerAsArrayOfInt(int *a) {
  // Currently passes
  return a[0] + a[3];
}

struct s502 {
  int a;
};
int ex502PointerAsArrayOfStruct(struct s502 *s) {
  // Currently passes
  return s[0].a + s[3].a;
}

// Array cases are not possible as a pointer function argument in C

int ex505PointerAsArrayOfPointerSingleElementValue(int **a) {
  // Currently passes
  return *a[0];
}

int ex506PointerAsArrayOfPointerSingleElementInstances(int **a) {
  // Currently passes
  if (a[0] == NULL || a[3] == NULL) {
    return 0; // null
  } else if (a[0] != a[3]) {
    return *a[0] + *a[3]; // new instance
  } else {
    return *a[0] + *a[3]; // existing instance
  }
}

int ex507PointerAsArrayOfPointerMultipleElementValues(int **a) {
  // Currently passes
  return *a[0] + *a[3];
}

int ex508PointerAsArrayOfPointerFunction(int (**a)()) {
  // Uses concrete pointer, no symbolic resolution
  // Currently passes
  return a[0]() + a[3]();
}

// Nested pointers

struct s601 {
  struct {
    int *a[4];
  } inner;
};
int ex601StructWithArrayOfPointers(struct s601 s) {
  return *s.inner.a[0];
}

struct s602 {
  struct {
    int *a;
  } inner[4];
};
int ex602ArrayOfStructsWithPointer(struct s602 s) {
  return *s.inner[0].a;
}

// Misc. pointer cases

int ex603PointerArithmetic(int *a) {
  // Currently passes
  return *(a + 3);
}

int ex604PointerCast(void *a) {
  return *(int *)a;
}

int ex605PointerFunction(int (*a)()) {
  // Uses concrete pointer, no symbolic resolution
  int result = a();
  // Ensure KLEE state hasn't been corrupted by call above
  return result;
}

// Lists

struct s606 {
  int a;
  struct s606 *n;
};
int ex606ListLengthLimitedLoop(struct s606 *s) {
  int sum = 0;
  int i;
  for (i = 0; i < 4; i++) {
    sum += s->a;
    if (!s->n)
      break;
    s = s->n;
  }
  if (i == 4)
    return 0;
  return sum;
}

struct s607 {
  int a;
  struct s607 *n;
};
int ex607ListLengthUnlimitedLoop(struct s607 *s) {
  int sum = 0;
  int i = 0;
  while (s) { // Needs time limit to bound execution
    sum += s->a;
    s = s->n;
    ++i;
  }
  if (i == 4)
    return 0; // Currently unreachable, despite achieving `i == 4`
  return sum;
}
