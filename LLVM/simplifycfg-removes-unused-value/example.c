int example() {
  volatile int foo = 4;

  int beards = 0;
  int birds = 0;

  if (foo == 4) {
    beards = 8;
    birds = 3;
  } else {
    beards = 4;
    birds = 6;
  }

  return beards;
}
