+ source ../vars.sh
++ set -eux
+++ dirname ../vars.sh
++ SCRIPT_DIR=..
++ source ../../vars.sh
+++ set -eux
++++ csmith release csmith
++++ local build=release
++++ local program=csmith
++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
+++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
+++ SRC_FILE=example.c
++++ llvm release-clang-lldb-13.0.0 clang-tidy
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang-tidy
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
+++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
+++ DIAGNOSTICS_FILE=diagnostics.yaml
+++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
++++ llvm release-clang-lldb-13.0.0 clang
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ llvm release-clang-lldb-13.0.0 llvm-as
++++ local build=release-clang-lldb-13.0.0
++++ local program=llvm-as
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
+++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
+++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_O2_OPTS=-O2
+++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ../../vars.sh
+++ FILTER_DOT=../../tools/filter-dot.js
++++ llvm release-clang-lldb-13.0.0 llc
++++ local build=release-clang-lldb-13.0.0
++++ local program=llc
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ klee debug print-module
++++ local build=debug
++++ local program=print-module
++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
+++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
++++ klee release klee
++++ local build=release
++++ local program=klee
++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
+++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
+++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
+++ O0_BC=klee-out-O0/final.bc
+++ O1_BC=klee-out-O1/final.bc
+++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
+++ O2_BC=klee-out-O2/final.bc
+++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
+++ BEFORE_BC=klee-out-before/final.bc
+++ AFTER_BC=klee-out-after/final.bc
+++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
++++ klee debug check-debug-info
++++ local build=debug
++++ local program=check-debug-info
++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
+ [[ ! -s example.c ]]
+ ./build.sh
+++ dirname ./build.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_O2_OPTS=-O2
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee release klee
+++++ local build=release
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
+ ./check.sh
+++ dirname ./check.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_O2_OPTS=-O2
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee release klee
+++++ local build=release
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `n` (decl src ln 3), asm ln 11
  arg 0
  store i32 %n, i32* %n.addr, asm ln 11
  @dbg.declare without read users, removable
  Added assignment asm ln 11, prod ln 3.0, live ln 4, enc None
Store to declared address of `x` (decl src ln 4), asm ln 18
  %inc = add nsw i32 %0, 1, l6 c4, asm ln 17
  store i32 %inc, i32* %x, l6 c4, asm ln 18
  Added assignment asm ln 18, prod ln 6.4, live ln 7, enc None
Call arg using declared address of `x` (decl src ln 4), asm ln 15
  %x = alloca i32, asm ln 10
  call void @modify(i32* %x), l5 c3, asm ln 15
  Added assignment asm ln 15, prod ln 5.3, live ln 6, enc None
Store to declared address of `x` (decl src ln 4), asm ln 14
  const i32 0
  store i32 0, i32* %x, l4 c7, asm ln 14
  Added assignment asm ln 14, prod ln 4.7, live ln 5, enc None

#### After variables

Value produced for `n` (decl src ln 3), asm ln 10
  arg 0
  @dbg.value(i32 %n, !16), asm ln 10
  Added assignment asm ln 10, prod ln 3.0, live ln 4, enc None
Value produced for `x` (decl src ln 4), asm ln 12
  const i32 0
  @dbg.value(i32 0, !17), asm ln 12
  Added assignment asm ln 12, prod ln 4.0, live ln 5, enc None
Store to deref'd address of `x` (decl src ln 4), asm ln 20
  %inc = add nsw i32 %1, 1, l6 c4, asm ln 18
  store i32 %inc, i32* %x, !tbaa !21, l6 c4, asm ln 20
  Added assignment asm ln 20, prod ln 6.4, live ln 7, enc None
Call arg using deref'd address of `x` (decl src ln 4), asm ln 15
  %x = alloca i32, asm ln 9
  call void @modify(i32* nonnull %x) #4, l5 c3, asm ln 15
  Added assignment asm ln 15, prod ln 5.3, live ln 6, enc None
Store to deref'd address of `x` (decl src ln 4), asm ln 13
  const i32 0
  store i32 0, i32* %x, !tbaa !21, l4 c7, asm ln 13
  Added assignment asm ln 13, prod ln 4.7, live ln 5, enc None
Value produced for `x` (decl src ln 4), asm ln 17
  %1 = load i32, i32* %x, !tbaa !21, l6 c4, asm ln 16
  @dbg.value(i32 %1, !17), asm ln 17
  Added assignment asm ln 17, prod ln 6.4, live ln 7, enc None
Value produced for `x` (decl src ln 4), asm ln 19
  %inc = add nsw i32 %1, 1, l6 c4, asm ln 18
  @dbg.value(i32 %inc, !17), asm ln 19
  Added assignment asm ln 19, prod ln 6.4, live ln 7, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 11, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `x`
  Assignment asm ln 14, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
Collected value for `x`
  Assignment asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Collected value for `x`
  Assignment asm ln 18, prod ln 6.4, live ln 7, enc 2
  %inc = add nsw i32 %0, 1, l6 c4
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) modify.arg0.deref))

#### After values

Collected value for `n`
  Assignment asm ln 10, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `x`
  Assignment asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
Collected value for `x`
  Assignment asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Collected value for `x`
  Assignment asm ln 17, prod ln 6.4, live ln 7, enc 2
  %1 = load i32, i32* %x, !tbaa !21, l6 c4
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Collected value for `x`
  Assignment asm ln 19, prod ln 6.4, live ln 7, enc 3
  %inc = add nsw i32 %1, 1, l6 c4
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) modify.arg0.deref))

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `x` (decl src ln 4)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
and
  assn asm ln 14, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.arg0.deref)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) modify.arg0.deref)
     (w32 0x0))

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 18, prod ln 6.4, live ln 7, enc 2
  %inc = add nsw i32 %0, 1, l6 c4
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) modify.arg0.deref))
and
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref))
     N0)

Filtering after assignments: `x` (decl src ln 4)

🔔 After `x` (decl src ln 4) assn asm ln 20, prod ln 6.4, live ln 7, enc None not debug meaningful, removing

🔔 After `x` (decl src ln 4) assn asm ln 13, prod ln 4.7, live ln 5, enc None not debug meaningful, removing

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
and
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.arg0.deref)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) modify.arg0.deref)
     (w32 0x0))

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 17, prod ln 6.4, live ln 7, enc 2
  %1 = load i32, i32* %x, !tbaa !21, l6 c4
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
and
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref)
     N0)
🔔 Removing: asm ln 17, prod ln 6.4, live ln 7, enc 2

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 19, prod ln 6.4, live ln 7, enc 3
  %inc = add nsw i32 %1, 1, l6 c4
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) modify.arg0.deref))
and
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref))
     N0)

Collating encountered before assignments: `n` (decl src ln 3)
  asm ln 11, prod ln 3.0, live ln 4, enc 0
Collating encountered before assignments: `x` (decl src ln 4)
  asm ln 14, prod ln 4.7, live ln 5, enc 0
  asm ln 15, prod ln 5.3, live ln 6, enc 1
  asm ln 18, prod ln 6.4, live ln 7, enc 2

Collating encountered after assignments: `n` (decl src ln 3)
  asm ln 10, prod ln 3.0, live ln 4, enc 0
Collating encountered after assignments: `x` (decl src ln 4)
  asm ln 12, prod ln 4.0, live ln 5, enc 0
  asm ln 15, prod ln 5.3, live ln 6, enc 1
  asm ln 19, prod ln 6.4, live ln 7, enc 2

#### Check after using before as reference

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 10, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 11, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) example.n)
     (ReadLSB w32 (w32 0x0) example.n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
✅ Before `n` (decl src ln 3) assn asm ln 11, prod ln 3.0, live ln 4, enc 0 symbolic value matches after assn asm ln 10, prod ln 3.0, live ln 4, enc 0

✅ After `n` assns checked using before as reference
Assignments:         n
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 14, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ Before `x` (decl src ln 4) assn asm ln 14, prod ln 4.7, live ln 5, enc 0 symbolic value matches after assn asm ln 12, prod ln 4.0, live ln 5, enc 0

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
and
  assn asm ln 15, prod ln 5.3, live ln 6, enc 1
  %x = alloca i32
  (ReadLSB w32 (w32 0x0) modify.arg0.deref)
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.arg0.deref)
     (ReadLSB w32 (w32 0x0) modify.arg0.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) modify.arg0.deref)
     N0)
✅ Before `x` (decl src ln 4) assn asm ln 15, prod ln 5.3, live ln 6, enc 1 symbolic value matches after assn asm ln 15, prod ln 5.3, live ln 6, enc 1

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 19, prod ln 6.4, live ln 7, enc 2
  %inc = add nsw i32 %1, 1, l6 c4
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) modify.arg0.deref))
and
  assn asm ln 18, prod ln 6.4, live ln 7, enc 2
  %inc = add nsw i32 %0, 1, l6 c4
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) modify.arg0.deref))
Query to parse
array modify.arg0.deref[4] : w32 -> w8 = symbolic
array modify.arg0.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) modify.arg0.deref))
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) modify.arg0.deref))))
Parsed query
(Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) modify.arg0.deref))
     N0)
✅ Before `x` (decl src ln 4) assn asm ln 18, prod ln 6.4, live ln 7, enc 2 symbolic value matches after assn asm ln 19, prod ln 6.4, live ln 7, enc 2

✅ After `x` assns checked using before as reference
Assignments:         x
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   3
  Matching Value:    3
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

### Summary

Assignments:
  Reference:                 4
  Test:                      4 (100.00% of ref )
Matching:
  Matching Coords:           4 (100.00% of ref )
  Matching Value:            4 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           0 (  0.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          4 (100.00% of ref )
  Complete:                  4 (100.00% of ref )
  Within Time Limit:         4 (100.00% of ref )
  Within Fork Limit:         4 (100.00% of ref )
Test Execution:
  Function Covered:          4 (100.00% of test)
  Complete:                  4 (100.00% of test)
  Within Time Limit:         4 (100.00% of test)
  Within Fork Limit:         4 (100.00% of test)

## Function `example_return`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `n` (decl src ln 12), asm ln 34
  arg 0
  store i32 %n, i32* %n.addr, asm ln 34
  @dbg.declare without read users, removable
  Added assignment asm ln 34, prod ln 12.0, live ln 13, enc None
Store to declared address of `x` (decl src ln 13), asm ln 43
  %inc = add nsw i32 %0, 1, l15 c4, asm ln 42
  store i32 %inc, i32* %x, l15 c4, asm ln 43
  Added assignment asm ln 43, prod ln 15.4, live ln 16, enc None
Call arg using declared address of `x` (decl src ln 13), asm ln 39
  %x = alloca i32, asm ln 32
  %call = call i32 @modify_return(i32* %x), l14 c11, asm ln 39
  Added assignment asm ln 39, prod ln 14.11, live ln 15, enc None
Store to declared address of `x` (decl src ln 13), asm ln 37
  const i32 0
  store i32 0, i32* %x, l13 c7, asm ln 37
  Added assignment asm ln 37, prod ln 13.7, live ln 14, enc None
Store to declared address of `y` (decl src ln 14), asm ln 40
  %call = call i32 @modify_return(i32* %x), l14 c11, asm ln 39
  store i32 %call, i32* %y, l14 c7, asm ln 40
  Added assignment asm ln 40, prod ln 14.11, live ln 15, enc None

#### After variables

Value produced for `n` (decl src ln 12), asm ln 36
  arg 0
  @dbg.value(i32 %n, !34), asm ln 36
  Added assignment asm ln 36, prod ln 12.0, live ln 13, enc None
Value produced for `x` (decl src ln 13), asm ln 38
  const i32 0
  @dbg.value(i32 0, !35), asm ln 38
  Added assignment asm ln 38, prod ln 13.0, live ln 14, enc None
Store to deref'd address of `x` (decl src ln 13), asm ln 47
  %inc = add nsw i32 %1, 1, l15 c4, asm ln 45
  store i32 %inc, i32* %x, !tbaa !22, l15 c4, asm ln 47
  Added assignment asm ln 47, prod ln 15.4, live ln 16, enc None
Call arg using deref'd address of `x` (decl src ln 13), asm ln 41
  %x = alloca i32, asm ln 35
  %call = call i32 @modify_return(i32* nonnull %x) #4, l14 c11, asm ln 41
  Added assignment asm ln 41, prod ln 14.11, live ln 15, enc None
Store to deref'd address of `x` (decl src ln 13), asm ln 39
  const i32 0
  store i32 0, i32* %x, !tbaa !22, l13 c7, asm ln 39
  Added assignment asm ln 39, prod ln 13.7, live ln 14, enc None
Value produced for `y` (decl src ln 14), asm ln 42
  %call = call i32 @modify_return(i32* nonnull %x) #4, l14 c11, asm ln 41
  @dbg.value(i32 %call, !36), asm ln 42
  Added assignment asm ln 42, prod ln 14.11, live ln 15, enc None
Value produced for `x` (decl src ln 13), asm ln 44
  %1 = load i32, i32* %x, !tbaa !22, l15 c4, asm ln 43
  @dbg.value(i32 %1, !35), asm ln 44
  Added assignment asm ln 44, prod ln 15.4, live ln 16, enc None
Value produced for `x` (decl src ln 13), asm ln 46
  %inc = add nsw i32 %1, 1, l15 c4, asm ln 45
  @dbg.value(i32 %inc, !35), asm ln 46
  Added assignment asm ln 46, prod ln 15.4, live ln 16, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 34, prod ln 12.0, live ln 13, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example_return.n)
Collected value for `x`
  Assignment asm ln 37, prod ln 13.7, live ln 14, enc 0
  i32 0
  (w32 0x0)
Assertion failed: (assignment->isUseEvent() == isUseEvent && "Unexpected assignment use / definition state"), function recordValue, file ValuesCollector.cpp, line 148.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x000000010fc8fc1d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x000000010fc9011b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x000000010fc8e1b3 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x000000010fc913bf SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
5  check-debug-info         0x000000010faae405 std::__1::pair<klee::Expr const*, klee::Expr const*>::pair[abi:v160006]<klee::Expr const*, klee::Expr const*, (void*)0>(klee::Expr const*&&, klee::Expr const*&&) + 37
6  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
7  libsystem_c.dylib        0x00007ff800aa9d1c err + 0
8  check-debug-info         0x000000010cf6c630 VCHandler::recordValue(klee::ExecutionState&, klee::ExecutionEvent&, llvm::Instruction const*, llvm::Value const*, klee::ref<klee::Expr>) + 560
9  check-debug-info         0x000000010cf6ceb7 VCHandler::visitModifiedCallArgument(klee::ExecutionState&, klee::ExecutionEvent&, klee::KInstruction*, llvm::Value const*, klee::ref<klee::Expr>) + 135
10 check-debug-info         0x000000010cfaf90b klee::Executor::executeCall(klee::ExecutionState&, klee::KInstruction*, llvm::Function*, std::__1::vector<klee::ref<klee::Expr>, std::__1::allocator<klee::ref<klee::Expr> > >&) + 3099
11 check-debug-info         0x000000010cfb8664 klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) + 8708
12 check-debug-info         0x000000010cfc4494 klee::Executor::run(klee::ExecutionState&) + 1860
13 check-debug-info         0x000000010cfc967d klee::Executor::runFunction(llvm::Function*) + 205
14 check-debug-info         0x000000010cf6e87c ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 252
15 check-debug-info         0x000000010cf35434 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 2916
16 check-debug-info         0x000000010cf36fc8 main + 2952
17 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 6: 44186 Abort trap: 6           ${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS} "$@"
