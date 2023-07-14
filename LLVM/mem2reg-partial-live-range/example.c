#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

// git-compat-util.h

typedef uintmax_t timestamp_t;

#define MAYBE_UNUSED __attribute__((__unused__))

#define FREE_AND_NULL(p) do { free(p); (p) = NULL; } while (0)

static inline size_t st_mult(size_t a, size_t b)
{
	return a * b;
}

#define ALLOC_ARRAY(x, alloc) (x) = malloc(st_mult(sizeof(*(x)), (alloc)))
#define CALLOC_ARRAY(x, alloc) (x) = calloc((alloc), sizeof(*(x)))
#define REALLOC_ARRAY(x, alloc) (x) = realloc((x), st_mult(sizeof(*(x)), (alloc)))

// csum-file.h

struct hashfile {
	int fd;
	int check_fd;
	unsigned int offset;
	// git_hash_ctx ctx;
	// off_t total;
	struct progress *tp;
	const char *name;
	int do_crc;
	uint32_t crc32;
	size_t buffer_len;
	unsigned char *buffer;
	unsigned char *check_buffer;
};

// hash.h

/* An unknown hash function. */
#define GIT_HASH_UNKNOWN 0
/* SHA-1 */
#define GIT_HASH_SHA1 1
/* SHA-256  */
#define GIT_HASH_SHA256 2
/* Number of algorithms supported (including unknown). */
#define GIT_HASH_NALGOS (GIT_HASH_SHA256 + 1)

struct object_id {
	unsigned char hash[32];
	int algo;
};

struct git_hash_algo {
	/*
	 * The name of the algorithm, as appears in the config file and in
	 * messages.
	 */
	const char *name;

	/* A four-byte version identifier, used in pack indices. */
	uint32_t format_id;

	/* The length of the hash in binary. */
	size_t rawsz;

	/* The length of the hash in hex characters. */
	size_t hexsz;

	/* The block size of the hash. */
	size_t blksz;

	/* The hash initialization function. */
	// git_hash_init_fn init_fn;

	/* The hash context cloning function. */
	// git_hash_clone_fn clone_fn;

	/* The hash update function. */
	// git_hash_update_fn update_fn;

	/* The hash finalization function. */
	// git_hash_final_fn final_fn;

	/* The hash finalization function for object IDs. */
	// git_hash_final_oid_fn final_oid_fn;

	/* The OID of the empty tree. */
	const struct object_id *empty_tree;

	/* The OID of the empty blob. */
	const struct object_id *empty_blob;

	/* The all-zeros OID. */
	const struct object_id *null_oid;
};
extern const struct git_hash_algo hash_algos[GIT_HASH_NALGOS];

#define the_hash_algo hash_algos

// object.h

struct object {
	unsigned parsed : 1;
	unsigned type : 3;
	unsigned flags : 28;
	struct object_id oid;
};

// commit.h

struct commit_list {
	struct commit *item;
	struct commit_list *next;
};

struct commit {
	struct object object;
	timestamp_t date;
	struct commit_list *parents;
	struct tree *maybe_tree;
	unsigned int index;
};

// commit-slab-decl.h

#define COMMIT_SLAB_SIZE (512*1024-32)

#define declare_commit_slab(slabname, elemtype) 			\
									\
struct slabname {							\
	unsigned slab_size;						\
	unsigned stride;						\
	unsigned slab_count;						\
	elemtype **slab;						\
}

// commit-slab-impl.h

#define implement_static_commit_slab(slabname, elemtype) \
	implement_commit_slab(slabname, elemtype, MAYBE_UNUSED static)

#define implement_shared_commit_slab(slabname, elemtype) \
	implement_commit_slab(slabname, elemtype, )

#define implement_commit_slab(slabname, elemtype, scope)		\
									\
scope void init_ ##slabname## _with_stride(struct slabname *s,		\
						   unsigned stride)	\
{									\
	unsigned int elem_size;						\
	if (!stride)							\
		stride = 1;						\
	s->stride = stride;						\
	elem_size = sizeof(elemtype) * stride;				\
	s->slab_size = COMMIT_SLAB_SIZE / elem_size;			\
	s->slab_count = 0;						\
	s->slab = NULL;							\
}									\
									\
scope void init_ ##slabname(struct slabname *s)				\
{									\
	init_ ##slabname## _with_stride(s, 1);				\
}									\
									\
scope void clear_ ##slabname(struct slabname *s)			\
{									\
	unsigned int i;							\
	for (i = 0; i < s->slab_count; i++)				\
		free(s->slab[i]);					\
	s->slab_count = 0;						\
	FREE_AND_NULL(s->slab);						\
}									\
									\
scope void deep_clear_ ##slabname(struct slabname *s, void (*free_fn)(elemtype *)) \
{									\
	unsigned int i;							\
	for (i = 0; i < s->slab_count; i++) {				\
		unsigned int j;						\
		if (!s->slab[i])					\
			continue;					\
		for (j = 0; j < s->slab_size; j++)			\
			free_fn(&s->slab[i][j * s->stride]);		\
	}								\
	clear_ ##slabname(s);						\
}									\
									\
scope elemtype *slabname## _at_peek(struct slabname *s,			\
						  const struct commit *c, \
						  int add_if_missing)   \
{									\
	unsigned int nth_slab, nth_slot;				\
									\
	nth_slab = c->index / s->slab_size;				\
	nth_slot = c->index % s->slab_size;				\
									\
	if (s->slab_count <= nth_slab) {				\
		unsigned int i;						\
		if (!add_if_missing)					\
			return NULL;					\
		REALLOC_ARRAY(s->slab, nth_slab + 1);			\
		for (i = s->slab_count; i <= nth_slab; i++)		\
			s->slab[i] = NULL;				\
		s->slab_count = nth_slab + 1;				\
	}								\
	if (!s->slab[nth_slab]) {					\
		if (!add_if_missing)					\
			return NULL;					\
		s->slab[nth_slab] = calloc(s->slab_size,		\
					    sizeof(**s->slab) * s->stride);		\
	}								\
	return &s->slab[nth_slab][nth_slot * s->stride];		\
}									\
									\
scope elemtype *slabname## _at(struct slabname *s,			\
					     const struct commit *c)	\
{									\
	return slabname##_at_peek(s, c, 1);				\
}									\
									\
scope elemtype *slabname## _peek(struct slabname *s,			\
					     const struct commit *c)	\
{									\
	return slabname##_at_peek(s, c, 0);				\
}									\
									\
struct slabname

// commit-slab.h

#define define_commit_slab(slabname, elemtype) \
	declare_commit_slab(slabname, elemtype); \
	implement_static_commit_slab(slabname, elemtype)

// commit-graph.c

#define GRAPH_EXTRA_EDGES_NEEDED 0x80000000
#define GRAPH_EDGE_LAST_MASK 0x7fffffff
#define GRAPH_PARENT_NONE 0x70000000

define_commit_slab(topo_level_slab, uint32_t);

struct packed_commit_list {
	struct commit **list;
	size_t nr;
	size_t alloc;
};

struct write_commit_graph_context {
	struct repository *r;
	struct object_directory *odb;
	char *graph_name;
	// struct oid_array oids;
	struct packed_commit_list commits;
	int num_extra_edges;
	int num_generation_data_overflows;
	unsigned long approx_nr_objects;
	struct progress *progress;
	int progress_done;
	uint64_t progress_cnt;

	char *base_graph_name;
	int num_commit_graphs_before;
	int num_commit_graphs_after;
	char **commit_graph_filenames_before;
	char **commit_graph_filenames_after;
	char **commit_graph_hash_after;
	uint32_t new_num_commits_in_base;
	struct commit_graph *new_base_graph;

	unsigned append:1,
		 report_progress:1,
		 split:1,
		 changed_paths:1,
		 order_by_pack:1,
		 write_generation_data:1,
		 trust_generation_numbers:1;

	struct topo_level_slab *topo_levels;
	const struct commit_graph_opts *opts;
	size_t total_bloom_filter_data_size;
	const struct bloom_filter_settings *bloom_settings;

	int count_bloom_filter_computed;
	int count_bloom_filter_not_computed;
	int count_bloom_filter_trunc_empty;
	int count_bloom_filter_trunc_large;
};

const struct object_id *commit_to_oid(size_t index, const void *table);

int write_graph_chunk_data(struct hashfile *f,
				  void *data)
{
	struct write_commit_graph_context *ctx = data;
	struct commit **list = ctx->commits.list;
	struct commit **last = ctx->commits.list + ctx->commits.nr;
	uint32_t num_extra_edges = 0;

	while (list < last) {
		struct commit_list *parent;
		struct object_id *tree;
		int edge_value;
		uint32_t packedDate[2];
		display_progress(ctx->progress, ++ctx->progress_cnt);

		if (repo_parse_commit_no_graph(ctx->r, *list))
			die(_("unable to parse commit %s"),
				oid_to_hex(&(*list)->object.oid));
		tree = get_commit_tree_oid(*list);
		hashwrite(f, tree->hash, the_hash_algo->rawsz);

		parent = (*list)->parents;

		if (!parent)
			edge_value = GRAPH_PARENT_NONE;
		else {
			edge_value = oid_pos(&parent->item->object.oid,
					     ctx->commits.list,
					     ctx->commits.nr,
					     commit_to_oid);

			if (edge_value >= 0)
				edge_value += ctx->new_num_commits_in_base;
			else if (ctx->new_base_graph) {
				uint32_t pos;
				if (find_commit_pos_in_graph(parent->item,
							     ctx->new_base_graph,
							     &pos))
					edge_value = pos;
			}

			if (edge_value < 0)
				BUG("missing parent %s for commit %s",
				    oid_to_hex(&parent->item->object.oid),
				    oid_to_hex(&(*list)->object.oid));
		}

		hashwrite_be32(f, edge_value);

		if (parent)
			parent = parent->next;

		if (!parent)
			edge_value = GRAPH_PARENT_NONE;
		else if (parent->next)
			edge_value = GRAPH_EXTRA_EDGES_NEEDED | num_extra_edges;
		else {
			edge_value = oid_pos(&parent->item->object.oid,
					     ctx->commits.list,
					     ctx->commits.nr,
					     commit_to_oid);

			if (edge_value >= 0)
				edge_value += ctx->new_num_commits_in_base;
			else if (ctx->new_base_graph) {
				uint32_t pos;
				if (find_commit_pos_in_graph(parent->item,
							     ctx->new_base_graph,
							     &pos))
					edge_value = pos;
			}

			if (edge_value < 0)
				BUG("missing parent %s for commit %s",
				    oid_to_hex(&parent->item->object.oid),
				    oid_to_hex(&(*list)->object.oid));
		}

		hashwrite_be32(f, edge_value);

		if (edge_value & GRAPH_EXTRA_EDGES_NEEDED) {
			do {
				num_extra_edges++;
				parent = parent->next;
			} while (parent);
		}

		if (sizeof((*list)->date) > 4)
			packedDate[0] = htonl(((*list)->date >> 32) & 0x3);
		else
			packedDate[0] = 0;

		packedDate[0] |= htonl(*topo_level_slab_at(ctx->topo_levels, *list) << 2);

		packedDate[1] = htonl((*list)->date);
		hashwrite(f, packedDate, 8);

		list++;
	}

	return 0;
}
