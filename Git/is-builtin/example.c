struct cmd_struct {
	const char *cmd;
	int (*fn)(int, const char **, const char *);
	unsigned int option;
};

struct cmd_struct *get_builtin(const char *s);

int is_builtin(const char *s)
{
	return !!get_builtin(s);
}
