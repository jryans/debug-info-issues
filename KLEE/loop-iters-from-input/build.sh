set -eux

echo '; $(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -Xclang -disable-O0-optnone -o example-O0.ll
' > example-O0.ll
$(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -Xclang -disable-O0-optnone -o - >> example-O0.ll

$(brew --prefix llvm)/bin/llvm-as example-O0.ll

# IndVarSimplifyPass removes loop debug values with Clang 13.0.0
# Limit below stops just before this
echo '; $(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -O1 -mllvm -opt-bisect-limit=39 -o example-O1-partial.ll
' > example-O1-partial.ll
$(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -O1 -mllvm -opt-bisect-limit=39 -o - >> example-O1-partial.ll

$(brew --prefix llvm)/bin/llvm-as example-O1-partial.ll
