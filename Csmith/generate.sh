set -eux

csmith \
--no-argc \
--no-checksum \
--no-float \
--max-block-depth 2 \
--max-block-size 2 \
--max-expr-complexity 2 \
--max-funcs 2 \
--no-safe-math \
--no-builtins \
> example.c

replace --silent '\"csmith.h\"' '<stdint.h>' example.c
replace --silent '^.*platform_main.*$' '' example.c
