set -eux

echo '; $(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -Xclang -disable-O0-optnone -o example-O0.ll
' > example-O0.ll
$(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -Xclang -disable-O0-optnone -o - >> example-O0.ll

$(brew --prefix llvm)/bin/llvm-as example-O0.ll

echo '; $(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -O1 -o example-O1.ll
' > example-O1.ll
$(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -O1 -o - >> example-O1.ll

$(brew --prefix llvm)/bin/llvm-as example-O1.ll
