void examine(unsigned *element);

void example(unsigned *array, unsigned size) {
  for (unsigned i = 0; i != size; ++i)
    examine(array + i);
}
