int get_name_prio;
int b(void);
int main(void) {
  int is_annotated;
  if (b())
    is_annotated = 0;
  else
    is_annotated = 4;
  if (is_annotated)
    get_name_prio = 2;
  return 0;
}
