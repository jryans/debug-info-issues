extern int result;
extern int bob(void);

int d() {
  int health_started = 0;
  if (bob())
    goto cleanup;
  health_started = 1;
cleanup:
  if (health_started)
    return ++result;
  return 0;
}
