#include <stddef.h>
#include <stdint.h>

#define BITS_PER_WORD 8

struct bloom_key {
	uint32_t *hashes;
};

struct bloom_filter {
	unsigned char *data;
	size_t len;
};

struct bloom_filter_settings {
	/*
	 * The version of the hashing technique being used.
	 * We currently only support version = 1 which is
	 * the seeded murmur3 hashing technique implemented
	 * in bloom.c.
	 */
	uint32_t hash_version;

	/*
	 * The number of times a path is hashed, i.e. the
	 * number of bit positions tht cumulatively
	 * determine whether a path is present in the
	 * Bloom filter.
	 */
	uint32_t num_hashes;

	/*
	 * The minimum number of bits per entry in the Bloom
	 * filter. If the filter contains 'n' entries, then
	 * filter size is the minimum number of 8-bit words
	 * that contain n*b bits.
	 */
	uint32_t bits_per_entry;

	/*
	 * The maximum number of changed paths per commit
	 * before declaring a Bloom filter to be too-large.
	 *
	 * Not written to the commit-graph file.
	 */
	uint32_t max_changed_paths;
};

static inline unsigned char get_bitmask(uint32_t pos)
{
	return ((unsigned char)1) << (pos & (BITS_PER_WORD - 1));
}

void add_key_to_filter(const struct bloom_key *key,
		       struct bloom_filter *filter,
		       const struct bloom_filter_settings *settings)
{
	int i;
	uint64_t mod = filter->len * BITS_PER_WORD;

	for (i = 0; i < settings->num_hashes; i++) {
		uint64_t hash_mod = key->hashes[i] % mod;
		uint64_t block_pos = hash_mod / BITS_PER_WORD;

		filter->data[block_pos] |= get_bitmask(hash_mod);
	}
}

#include "klee/klee.h"

int main() {
  struct bloom_key key;
  struct bloom_filter filter;
  struct bloom_filter_settings settings;
  klee_make_symbolic(&key, sizeof(struct bloom_key), "key");
  klee_make_symbolic(&filter, sizeof(struct bloom_filter), "filter");
  klee_make_symbolic(&settings, sizeof(struct bloom_filter_settings), "settings");
  add_key_to_filter(&key, &filter, &settings);
}
