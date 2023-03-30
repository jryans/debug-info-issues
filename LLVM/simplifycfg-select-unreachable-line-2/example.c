int example() {
  volatile int foo = 0;

  int beards = 0;
  if (foo == 4)
    beards = 8;
  else
    beards = 4;

  return beards;
}
