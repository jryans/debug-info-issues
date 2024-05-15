#include <assert.h>
#include <stdbool.h>
#include <stddef.h>

int ex001Int(int i) {
  return i;
}

struct s002 {
  int i;
};

// Later tests will check different struct field types
// TODO: Add these!
int ex002Struct(struct s002 s) {
  return s.i;
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

int ex006PointerFunction(int (*f)()) {
  return f();
}
