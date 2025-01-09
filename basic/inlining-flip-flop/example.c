// Extracted from Git's `strbuf.c`

#include <limits.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

// git-compat-util.h

#define bitsizeof(x) (CHAR_BIT * sizeof(x))

#define maximum_unsigned_value_of_type(a)                                      \
  (UINTMAX_MAX >> (bitsizeof(uintmax_t) - bitsizeof(a)))

#define unsigned_add_overflows(a, b)                                           \
  ((b) > maximum_unsigned_value_of_type(a) - (a))

static inline size_t st_mult(size_t a, size_t b) { return a * b; }

#define REALLOC_ARRAY(x, alloc)                                                \
  (x) = realloc((x), st_mult(sizeof(*(x)), (alloc)))

// cache.h

#define alloc_nr(x) (((x) + 16) * 3 / 2)

#define ALLOC_GROW(x, nr, alloc)                                               \
  do {                                                                         \
    if ((nr) > alloc) {                                                        \
      if (alloc_nr(alloc) < (nr))                                              \
        alloc = (nr);                                                          \
      else                                                                     \
        alloc = alloc_nr(alloc);                                               \
      REALLOC_ARRAY(x, alloc);                                                 \
    }                                                                          \
  } while (0)

// strbuf.h

struct strbuf {
  size_t alloc;
  size_t len;
  char *buf;
};

char strbuf_slopbuf[1];
#define STRBUF_INIT {.buf = strbuf_slopbuf}

static inline size_t strbuf_avail(const struct strbuf *sb) {
  return sb->alloc ? sb->alloc - sb->len - 1 : 0;
}

static inline void strbuf_setlen(struct strbuf *sb, size_t len) {
  sb->len = len;
  if (sb->buf != strbuf_slopbuf)
    sb->buf[len] = '\0';
}

// strbuf.c

void strbuf_grow(struct strbuf *sb, size_t extra) {
  int new_buf = !sb->alloc;
  if (new_buf)
    sb->buf = NULL;
  ALLOC_GROW(sb->buf, sb->len + extra + 1, sb->alloc);
  if (new_buf)
    sb->buf[0] = '\0';
}

void strbuf_vaddf(struct strbuf *sb, const char *fmt, va_list ap) {
  int len;
  va_list cp;

  if (!strbuf_avail(sb))
    strbuf_grow(sb, 64);
  va_copy(cp, ap);
  len = vsnprintf(sb->buf + sb->len, sb->alloc - sb->len, fmt, cp);
  va_end(cp);
  if (len > strbuf_avail(sb)) {
    strbuf_grow(sb, len);
    len = vsnprintf(sb->buf + sb->len, sb->alloc - sb->len, fmt, ap);
  }
  strbuf_setlen(sb, sb->len + len);
}

void strbuf_addf(struct strbuf *sb, const char *fmt, ...) {
  va_list ap;
  va_start(ap, fmt);
  strbuf_vaddf(sb, fmt, ap);
  va_end(ap);
}

int main(int argc, const char **argv) {
  struct strbuf d = STRBUF_INIT;
  strbuf_addf(&d, "%s/%s", "bob", "tom");
}
