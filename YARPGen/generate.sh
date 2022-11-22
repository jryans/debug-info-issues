set -eux

${HOME}/Projects/yarpgen/build-release/yarpgen \
--std=c \
"$@"

# TODO: Format func.c to make lines more readable
# TODO: Embed data initialisers in `func.c`
