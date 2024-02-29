// Simplified from Git's `load_builtin_commands`

__attribute__((format (printf, 3, 4))) __attribute__((__noreturn__))
void BUG_fl(const char *file, int line, const char *fmt, ...);
#define BUG(...) BUG_fl(__FILE__, __LINE__, __VA_ARGS__)

int skip_prefix(const char *str, const char *prefix, const char **out);

void bug_va(const char *prefix)
{
	if (!skip_prefix(prefix, "git-", &prefix))
		BUG("prefix '%s' must start with 'git-'", prefix);
}
