union onion {
  double dd;
  int ii[2];
};

int alpha;
int bravo(void);

int charlie(void) {
  int delta = 0;
  return bravo();
};

int echo(union onion foxtrot) {
  alpha = foxtrot.ii[0];
  if (alpha) {
    int golf = bravo();
    return -golf;
  }
  alpha = foxtrot.ii[1];
  return -charlie();
}
