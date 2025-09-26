#include <stdint.h>

uint16_t ff_fft_offsets_lut[21845];

static void fft_lut_init(uint16_t *table, int off, int size, int *index) {
  if (size < 16) {
    table[*index] = off >> 2;
    (*index)++;
  } else {
    fft_lut_init(table, off, size >> 1, index);
    fft_lut_init(table, off + (size >> 1), size >> 2, index);
    fft_lut_init(table, off + 3 * (size >> 2), size >> 2, index);
  }
}

int main() {
  int n = 0;
  fft_lut_init(ff_fft_offsets_lut, 0, 1 << 4, &n);
  return 0;
}
