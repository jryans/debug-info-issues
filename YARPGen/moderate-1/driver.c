#include <stdio.h>

unsigned long long int seed = 0;
void hash(unsigned long long int *seed, unsigned long long int const v) {
  *seed ^= v + 0x9e3779b9 + ((*seed) << 6) + ((*seed) >> 2);
}

signed char var_0 = (signed char)-34;
signed char var_4 = (signed char)-56;
_Bool var_8 = (_Bool)1;
unsigned char var_9 = (unsigned char)114;
unsigned short var_10 = (unsigned short)20816;
unsigned short var_11 = (unsigned short)8144;
signed char var_12 = (signed char)103;
signed char var_14 = (signed char)-95;
unsigned char var_15 = (unsigned char)239;
unsigned long long int var_16 = 16562458943060025026ULL;
unsigned char var_17 = (unsigned char)49;
void init() {}

void checksum() {
  hash(&seed, var_15);
  hash(&seed, var_16);
  hash(&seed, var_17);
}
void test(signed char var_0, signed char var_4, _Bool var_8,
          unsigned char var_9, unsigned short var_10, unsigned short var_11,
          signed char var_12, signed char var_14);

int main() {
  init();
  test(var_0, var_4, var_8, var_9, var_10, var_11, var_12, var_14);
  checksum();
  printf("%llu\n", seed);
}
