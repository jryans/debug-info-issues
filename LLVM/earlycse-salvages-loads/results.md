++ dirname ./build.sh
+ SCRIPT_DIR=.
+ source ./../vars.sh
++ set -eux
+++ dirname ./../vars.sh
++ SCRIPT_DIR=./..
++ source ./../../vars.sh
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
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
+ mkdir -p klee-out-O0
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc -O0 -o example-O0.o --filetype obj example-O0.ll
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt -S -o example-O0-mem2reg.ll --mem2reg example-O0.ll
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc -O0 -o example-O0-mem2reg.o --filetype obj example-O0-mem2reg.ll
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2.o --filetype obj example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2-fixed.o --filetype obj example-O2-fixed.ll
++ dirname ./check-issue.sh
+ SCRIPT_DIR=.
+ source ./../vars.sh
++ set -eux
+++ dirname ./../vars.sh
++ SCRIPT_DIR=./..
++ source ./../../vars.sh
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
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O2/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `bar` (decl src ln 1), asm ln 37
  %9 = load i32*, i32** %bar.addr, l8 c18, asm ln 37
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 37, prod ln 8.18, live ln 9, enc None
Load from declared address of `bar` (decl src ln 1), asm ln 34
  %7 = load i32*, i32** %bar.addr, l6 c4, asm ln 34
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 6.4, live ln 7, enc None
Load from declared address of `bar` (decl src ln 1), asm ln 25
  %2 = load i32*, i32** %bar.addr, l3 c17, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 3.17, live ln 4, enc None
Load from declared address of `bar` (decl src ln 1), asm ln 21
  %0 = load i32*, i32** %bar.addr, l2 c20, asm ln 21
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 2.20, live ln 3, enc None
Store to declared address of `bar` (decl src ln 1), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 1.0, live ln 2, enc None
Store to declared address of `arg` (decl src ln 1), asm ln 33
  %and = and i32 %6, %add, l4 c7, asm ln 32
  Added assignment asm ln 33, prod ln 4.7, live ln 6, enc None
Load from declared address of `arg` (decl src ln 1), asm ln 31
  %6 = load i32, i32* %arg.addr, l4 c7, asm ln 31
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 31, prod ln 4.7, live ln 5, enc None
Store to declared address of `arg` (decl src ln 1), asm ln 16
  arg 1
  Added assignment asm ln 16, prod ln 1.0, live ln 2, enc None
Load from declared address of `more` (decl src ln 1), asm ln 36
  %8 = load i32, i32* %more.addr, l8 c10, asm ln 36
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 8.10, live ln 9, enc None
Load from declared address of `more` (decl src ln 1), asm ln 28
  %4 = load i32, i32* %more.addr, l4 c10, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 4.10, live ln 5, enc None
Store to declared address of `more` (decl src ln 1), asm ln 18
  arg 2
  Added assignment asm ln 18, prod ln 1.0, live ln 2, enc None
Store to declared address of `redundant` (decl src ln 2), asm ln 23
  %1 = load i32, i32* %0, l2 c19, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 2.19, live ln 3, enc None
Load from declared address of `loaded` (decl src ln 3), asm ln 29
  %5 = load i32, i32* %loaded, l4 c17, asm ln 29
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 29, prod ln 4.17, live ln 5, enc None
Store to declared address of `loaded` (decl src ln 3), asm ln 27
  %3 = load i32, i32* %2, l3 c16, asm ln 26
  Added assignment asm ln 27, prod ln 3.16, live ln 4, enc None

#### After variables

Value produced for `bar` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.14, live ln 6, enc None
Value produced for `arg` (decl src ln 1), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 1.23, live ln 6, enc None
Value produced for `more` (decl src ln 1), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 1.32, live ln 6, enc None
Store to deref'd address of `redundant` (decl src ln 2), asm ln 15
  const i32 0
  Added assignment asm ln 15, prod ln 6.8, live ln 8, enc None
Store to deref'd address of `loaded` (decl src ln 3), asm ln 15
  const i32 0
  Added assignment asm ln 15, prod ln 6.8, live ln 8, enc None
Value produced for `arg` (decl src ln 1), asm ln 14
  const i32 undef
  Added assignment asm ln 14, prod ln 1.23, live ln 6, enc None

#### Summary

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `bar`
  Assignment asm ln 14, prod ln 1.0, live ln 2, enc 0
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
Collected value for `arg`
  Assignment asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Collected value for `more`
  Assignment asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `bar`
  Assignment asm ln 21, prod ln 2.20, live ln 3, enc 1
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %0 = load i32*, i32** %bar.addr, l2 c20
  (w64 0x6EA58956ADA4F3E)
Collected value for `redundant`
  Assignment asm ln 23, prod ln 2.19, live ln 3, enc 0
  %1 = load i32, i32* %0, l2 c19
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Collected value for `bar`
  Assignment asm ln 25, prod ln 3.17, live ln 4, enc 2
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %2 = load i32*, i32** %bar.addr, l3 c17
  (w64 0x6EA58956ADA4F3E)
Collected value for `loaded`
  Assignment asm ln 27, prod ln 3.16, live ln 4, enc 0
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Collected value for `more`
  Assignment asm ln 28, prod ln 4.10, live ln 5, enc 1
  %4 = load i32, i32* %more.addr, l4 c10
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `loaded`
  Assignment asm ln 29, prod ln 4.17, live ln 5, enc 1
  %5 = load i32, i32* %loaded, l4 c17
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Collected value for `arg`
  Assignment asm ln 31, prod ln 4.7, live ln 5, enc 1
  %6 = load i32, i32* %arg.addr, l4 c7
  (ReadLSB w32 (w32 0x0) foo.arg)
Collected value for `arg`
  Assignment asm ln 33, prod ln 4.7, live ln 6, enc 2
  %and = and i32 %6, %add, l4 c7
  (And w32 (ReadLSB w32 (w32 0x0) foo.arg)
          (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                   (ReadLSB w32 (w32 0x0) foo.bar.deref)))
Collected value for `bar`
  Assignment asm ln 34, prod ln 6.4, live ln 7, enc 3
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %7 = load i32*, i32** %bar.addr, l6 c4
  (w64 0x6EA58956ADA4F3E)
Collected value for `more`
  Assignment asm ln 36, prod ln 8.10, live ln 9, enc 2
  %8 = load i32, i32* %more.addr, l8 c10
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `bar`
  Assignment asm ln 37, prod ln 8.18, live ln 9, enc 4
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (Concat w64 (Read w8 (w32 0x7) foo.bar.deref)
             (Concat w56 (Read w8 (w32 0x6) foo.bar.deref)
                         (Concat w48 (Read w8 (w32 0x5) foo.bar.deref)
                                     (Concat w40 (Read w8 (w32 0x4) foo.bar.deref) (w32 0x0)))))
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %9 = load i32*, i32** %bar.addr, l8 c18
  (w64 0x6EA58956ADA4F3E)

#### After values

Collected value for `bar`
  Assignment asm ln 9, prod ln 1.14, live ln 6, enc 0
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
Collected value for `arg`
  Assignment asm ln 10, prod ln 1.23, live ln 6, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Collected value for `more`
  Assignment asm ln 11, prod ln 1.32, live ln 6, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `arg`
  Assignment asm ln 14, prod ln 1.23, live ln 6, enc 1
  i32 undef
  (w32 0x0)
Collected value for `loaded`
  Assignment asm ln 15, prod ln 6.8, live ln 8, enc 0
  i32 0
  (w32 0x0)
Collected value for `redundant`
  Assignment asm ln 15, prod ln 6.8, live ln 8, enc 0
  i32 0
  (w32 0x0)

### Assignments

#### Collation

Filtering before assignments: `bar` (decl src ln 1)

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 21, prod ln 2.20, live ln 3, enc 1
  %0 = load i32*, i32** %bar.addr, l2 c20
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 21, prod ln 2.20, live ln 3, enc 1

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 25, prod ln 3.17, live ln 4, enc 2
  %2 = load i32*, i32** %bar.addr, l3 c17
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 25, prod ln 3.17, live ln 4, enc 2

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 34, prod ln 6.4, live ln 7, enc 3
  %7 = load i32*, i32** %bar.addr, l6 c4
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 34, prod ln 6.4, live ln 7, enc 3

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 37, prod ln 8.18, live ln 9, enc 4
  %9 = load i32*, i32** %bar.addr, l8 c18
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 37, prod ln 8.18, live ln 9, enc 4

Filtering before assignments: `arg` (decl src ln 1)

Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 31, prod ln 4.7, live ln 5, enc 1
  %6 = load i32, i32* %arg.addr, l4 c7
  (ReadLSB w32 (w32 0x0) foo.arg)
and
  assn asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Query to parse
array foo.arg[4] : w32 -> w8 = symbolic
array foo.arg[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.arg)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.arg)
     N0)
🔔 Removing: asm ln 31, prod ln 4.7, live ln 5, enc 1

Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 33, prod ln 4.7, live ln 6, enc 2
  %and = and i32 %6, %add, l4 c7
  (And w32 (ReadLSB w32 (w32 0x0) foo.arg)
          (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                   (ReadLSB w32 (w32 0x0) foo.bar.deref)))
and
  assn asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Query to parse
array foo.arg[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
array foo.bar.deref[8] : w32 -> w8 = symbolic
array foo.arg[4] : w32 -> w8 = symbolic
(query [] (Eq (And w32 N0:(ReadLSB w32 (w32 0x0) foo.arg)
              (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                       (ReadLSB w32 (w32 0x0) foo.bar.deref)))
     N0))
Parsed query
(Eq (And w32 N0:(ReadLSB w32 (w32 0x0) foo.arg)
              (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                       (ReadLSB w32 (w32 0x0) foo.bar.deref)))
     N0)

Filtering before assignments: `more` (decl src ln 1)

Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 28, prod ln 4.10, live ln 5, enc 1
  %4 = load i32, i32* %more.addr, l4 c10
  (ReadLSB w32 (w32 0x0) foo.more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Query to parse
array foo.more[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0)
🔔 Removing: asm ln 28, prod ln 4.10, live ln 5, enc 1

Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 36, prod ln 8.10, live ln 9, enc 2
  %8 = load i32, i32* %more.addr, l8 c10
  (ReadLSB w32 (w32 0x0) foo.more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Query to parse
array foo.more[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0)
🔔 Removing: asm ln 36, prod ln 8.10, live ln 9, enc 2

Filtering before assignments: `loaded` (decl src ln 3)

Checking equivalence of `loaded` (decl src ln 3) from
  assn asm ln 29, prod ln 4.17, live ln 5, enc 1
  %5 = load i32, i32* %loaded, l4 c17
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
and
  assn asm ln 27, prod ln 3.16, live ln 4, enc 0
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Query to parse
array foo.bar.deref[8] : w32 -> w8 = symbolic
array foo.bar.deref[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.bar.deref)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.bar.deref)
     N0)
🔔 Removing: asm ln 29, prod ln 4.17, live ln 5, enc 1

Filtering after assignments: `arg` (decl src ln 1)

Variable intrinsic with undef input
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 14, prod ln 1.23, live ln 6, enc 1
  i32 undef
and
  assn asm ln 10, prod ln 1.23, live ln 6, enc 0
  i32 %arg

Collating encountered before assignments: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, enc 0
  asm ln 33, prod ln 4.7, live ln 6, enc 1
Collating encountered before assignments: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, enc 0
Collating encountered before assignments: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, enc 0

Collating encountered after assignments: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.14, live ln 6, enc 0
Collating encountered after assignments: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.23, live ln 6, enc 0
Collating encountered after assignments: `more` (decl src ln 1)
  asm ln 11, prod ln 1.32, live ln 6, enc 0
Collating encountered after assignments: `redundant` (decl src ln 2)
  asm ln 15, prod ln 6.8, live ln 8, enc 0
Collating encountered after assignments: `loaded` (decl src ln 3)
  asm ln 15, prod ln 6.8, live ln 8, enc 0

#### Check after using before as reference

❌ Before encountered assn for `arg` (decl src ln 1) at asm ln 33, prod ln 4.7, live ln 6, enc 1 not found in after

❌ Before `arg` (decl src ln 1) assn asm ln 16, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 10, prod ln 1.23, live ln 6, enc 0
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 10, prod ln 1.23, live ln 6, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
and
  assn asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Query to parse
array foo.arg[4] : w32 -> w8 = symbolic
array foo.arg[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo.arg)
     (ReadLSB w32 (w32 0x0) foo.arg)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.arg)
     N0)
✅ Before `arg` (decl src ln 1) assn asm ln 16, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 10, prod ln 1.23, live ln 6, enc 0

Variable intrinsic with undef input
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 14, prod ln 1.23, live ln 6, enc 1
  i32 undef
and
  assn asm ln 33, prod ln 4.7, live ln 6, enc 1
  %and = and i32 %6, %add, l4 c7
❌ Before `arg` (decl src ln 1) assn asm ln 33, prod ln 4.7, live ln 6, enc 1 symbolic value doesn't match after assn asm ln 14, prod ln 1.23, live ln 6, enc 1

❌ After `arg` assns checked using before as reference
Assignments:         arg
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  1
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
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

❌ Before `bar` (decl src ln 1) assn asm ln 14, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 9, prod ln 1.14, live ln 6, enc 0
Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 9, prod ln 1.14, live ln 6, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
✅ Before `bar` (decl src ln 1) assn asm ln 14, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.14, live ln 6, enc 0

❌ After `bar` assns checked using before as reference
Assignments:         bar
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
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

❌ Before `loaded` (decl src ln 3) assn asm ln 27, prod ln 3.16, live ln 4, enc 0 coordinates don't match after assn asm ln 15, prod ln 6.8, live ln 8, enc 0
Checking equivalence of `loaded` (decl src ln 3) from
  assn asm ln 15, prod ln 6.8, live ln 8, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 27, prod ln 3.16, live ln 4, enc 0
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Query to parse
array foo.bar.deref[8] : w32 -> w8 = symbolic
(query [] (Eq (w32 0x0)
     (ReadLSB w32 (w32 0x0) foo.bar.deref)))
Parsed query
(Eq (w32 0x0)
     (ReadLSB w32 (w32 0x0) foo.bar.deref))
❌ Before `loaded` (decl src ln 3) assn asm ln 27, prod ln 3.16, live ln 4, enc 0 symbolic value doesn't match after assn asm ln 15, prod ln 6.8, live ln 8, enc 0

❌ After `loaded` assns checked using before as reference
Assignments:         loaded
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  1
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

❌ Before `more` (decl src ln 1) assn asm ln 18, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 11, prod ln 1.32, live ln 6, enc 0
Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 11, prod ln 1.32, live ln 6, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Query to parse
array foo.more[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo.more)
     (ReadLSB w32 (w32 0x0) foo.more)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0)
✅ Before `more` (decl src ln 1) assn asm ln 18, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 11, prod ln 1.32, live ln 6, enc 0

❌ After `more` assns checked using before as reference
Assignments:         more
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
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

❌ Before `redundant` (decl src ln 2) assn asm ln 23, prod ln 2.19, live ln 3, enc 0 coordinates don't match after assn asm ln 15, prod ln 6.8, live ln 8, enc 0
Checking equivalence of `redundant` (decl src ln 2) from
  assn asm ln 15, prod ln 6.8, live ln 8, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 23, prod ln 2.19, live ln 3, enc 0
  %1 = load i32, i32* %0, l2 c19
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Query to parse
array foo.bar.deref[8] : w32 -> w8 = symbolic
(query [] (Eq (w32 0x0)
     (ReadLSB w32 (w32 0x0) foo.bar.deref)))
Parsed query
(Eq (w32 0x0)
     (ReadLSB w32 (w32 0x0) foo.bar.deref))
❌ Before `redundant` (decl src ln 2) assn asm ln 23, prod ln 2.19, live ln 3, enc 0 symbolic value doesn't match after assn asm ln 15, prod ln 6.8, live ln 8, enc 0

❌ After `redundant` assns checked using before as reference
Assignments:         redundant
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  1
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

## Summary

Assignments:
  Reference:                 6
  Test:                      6 (100.00% of ref )
Matching:
  Matching Coords:           1 ( 16.67% of ref )
  Matching Value:            3 ( 50.00% of ref )
Consistency Errors:
  Mismatched Coords:         5 ( 83.33% of ref )
  Mismatched Value:          3 ( 50.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           1 ( 16.67% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          6 (100.00% of ref )
  Complete:                  6 (100.00% of ref )
  Within Time Limit:         6 (100.00% of ref )
  Within Fork Limit:         6 (100.00% of ref )
Test Execution:
  Function Covered:          6 (100.00% of test)
  Complete:                  6 (100.00% of test)
  Within Time Limit:         6 (100.00% of test)
  Within Fork Limit:         6 (100.00% of test)

❌ Some consistency checks failed
++ dirname ./check-fix.sh
+ SCRIPT_DIR=.
+ source ./../vars.sh
++ set -eux
+++ dirname ./../vars.sh
++ SCRIPT_DIR=./..
++ source ./../../vars.sh
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
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O2-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `bar` (decl src ln 1), asm ln 37
  %9 = load i32*, i32** %bar.addr, l8 c18, asm ln 37
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 37, prod ln 8.18, live ln 9, enc None
Load from declared address of `bar` (decl src ln 1), asm ln 34
  %7 = load i32*, i32** %bar.addr, l6 c4, asm ln 34
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 6.4, live ln 7, enc None
Load from declared address of `bar` (decl src ln 1), asm ln 25
  %2 = load i32*, i32** %bar.addr, l3 c17, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 3.17, live ln 4, enc None
Load from declared address of `bar` (decl src ln 1), asm ln 21
  %0 = load i32*, i32** %bar.addr, l2 c20, asm ln 21
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 2.20, live ln 3, enc None
Store to declared address of `bar` (decl src ln 1), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 1.0, live ln 2, enc None
Store to declared address of `arg` (decl src ln 1), asm ln 33
  %and = and i32 %6, %add, l4 c7, asm ln 32
  Added assignment asm ln 33, prod ln 4.7, live ln 6, enc None
Load from declared address of `arg` (decl src ln 1), asm ln 31
  %6 = load i32, i32* %arg.addr, l4 c7, asm ln 31
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 31, prod ln 4.7, live ln 5, enc None
Store to declared address of `arg` (decl src ln 1), asm ln 16
  arg 1
  Added assignment asm ln 16, prod ln 1.0, live ln 2, enc None
Load from declared address of `more` (decl src ln 1), asm ln 36
  %8 = load i32, i32* %more.addr, l8 c10, asm ln 36
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 8.10, live ln 9, enc None
Load from declared address of `more` (decl src ln 1), asm ln 28
  %4 = load i32, i32* %more.addr, l4 c10, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 4.10, live ln 5, enc None
Store to declared address of `more` (decl src ln 1), asm ln 18
  arg 2
  Added assignment asm ln 18, prod ln 1.0, live ln 2, enc None
Store to declared address of `redundant` (decl src ln 2), asm ln 23
  %1 = load i32, i32* %0, l2 c19, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 2.19, live ln 3, enc None
Load from declared address of `loaded` (decl src ln 3), asm ln 29
  %5 = load i32, i32* %loaded, l4 c17, asm ln 29
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 29, prod ln 4.17, live ln 5, enc None
Store to declared address of `loaded` (decl src ln 3), asm ln 27
  %3 = load i32, i32* %2, l3 c16, asm ln 26
  Added assignment asm ln 27, prod ln 3.16, live ln 4, enc None

#### After variables

Value produced for `bar` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 6, enc None
Value produced for `arg` (decl src ln 1), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 1.0, live ln 6, enc None
Value produced for `more` (decl src ln 1), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 1.0, live ln 6, enc None
After variable intrinsic with undef input, asm ln 12, ignoring undefined variable
  @dbg.value(i32 undef, !16)
Value produced for `arg` (decl src ln 1), asm ln 13
  const i32 undef
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 13, prod ln 1.0, live ln 6, enc None

#### Summary

❌ 5 before variables found, 4 after variables found, 1 mismatched

### Symbolic values

#### Before values

Collected value for `bar`
  Assignment asm ln 14, prod ln 1.0, live ln 2, enc 0
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
Collected value for `arg`
  Assignment asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Collected value for `more`
  Assignment asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `bar`
  Assignment asm ln 21, prod ln 2.20, live ln 3, enc 1
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %0 = load i32*, i32** %bar.addr, l2 c20
  (w64 0x6EA58956ADA4F3E)
Collected value for `redundant`
  Assignment asm ln 23, prod ln 2.19, live ln 3, enc 0
  %1 = load i32, i32* %0, l2 c19
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Collected value for `bar`
  Assignment asm ln 25, prod ln 3.17, live ln 4, enc 2
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %2 = load i32*, i32** %bar.addr, l3 c17
  (w64 0x6EA58956ADA4F3E)
Collected value for `loaded`
  Assignment asm ln 27, prod ln 3.16, live ln 4, enc 0
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Collected value for `more`
  Assignment asm ln 28, prod ln 4.10, live ln 5, enc 1
  %4 = load i32, i32* %more.addr, l4 c10
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `loaded`
  Assignment asm ln 29, prod ln 4.17, live ln 5, enc 1
  %5 = load i32, i32* %loaded, l4 c17
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Collected value for `arg`
  Assignment asm ln 31, prod ln 4.7, live ln 5, enc 1
  %6 = load i32, i32* %arg.addr, l4 c7
  (ReadLSB w32 (w32 0x0) foo.arg)
Collected value for `arg`
  Assignment asm ln 33, prod ln 4.7, live ln 6, enc 2
  %and = and i32 %6, %add, l4 c7
  (And w32 (ReadLSB w32 (w32 0x0) foo.arg)
          (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                   (ReadLSB w32 (w32 0x0) foo.bar.deref)))
Collected value for `bar`
  Assignment asm ln 34, prod ln 6.4, live ln 7, enc 3
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %7 = load i32*, i32** %bar.addr, l6 c4
  (w64 0x6EA58956ADA4F3E)
Collected value for `more`
  Assignment asm ln 36, prod ln 8.10, live ln 9, enc 2
  %8 = load i32, i32* %more.addr, l8 c10
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `bar`
  Assignment asm ln 37, prod ln 8.18, live ln 9, enc 4
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (Concat w64 (Read w8 (w32 0x7) foo.bar.deref)
             (Concat w56 (Read w8 (w32 0x6) foo.bar.deref)
                         (Concat w48 (Read w8 (w32 0x5) foo.bar.deref)
                                     (Concat w40 (Read w8 (w32 0x4) foo.bar.deref) (w32 0x0)))))
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  %9 = load i32*, i32** %bar.addr, l8 c18
  (w64 0x6EA58956ADA4F3E)

#### After values

Collected value for `bar`
  Assignment asm ln 9, prod ln 1.0, live ln 6, enc 0
  Concrete pointer resolves to foo.bar.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) foo.bar.deref)
  Replaced concrete pointer with hash (w64 0x6EA58956ADA4F3E)
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
Collected value for `arg`
  Assignment asm ln 10, prod ln 1.0, live ln 6, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Collected value for `more`
  Assignment asm ln 11, prod ln 1.0, live ln 6, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Collected value for `arg`
  Assignment asm ln 13, prod ln 1.0, live ln 6, enc 1
  i32 undef
  (w32 0x0)

### Assignments

#### Collation

Filtering before assignments: `bar` (decl src ln 1)

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 21, prod ln 2.20, live ln 3, enc 1
  %0 = load i32*, i32** %bar.addr, l2 c20
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 21, prod ln 2.20, live ln 3, enc 1

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 25, prod ln 3.17, live ln 4, enc 2
  %2 = load i32*, i32** %bar.addr, l3 c17
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 25, prod ln 3.17, live ln 4, enc 2

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 34, prod ln 6.4, live ln 7, enc 3
  %7 = load i32*, i32** %bar.addr, l6 c4
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 34, prod ln 6.4, live ln 7, enc 3

Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 37, prod ln 8.18, live ln 9, enc 4
  %9 = load i32*, i32** %bar.addr, l8 c18
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
🔔 Removing: asm ln 37, prod ln 8.18, live ln 9, enc 4

Filtering before assignments: `arg` (decl src ln 1)

Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 31, prod ln 4.7, live ln 5, enc 1
  %6 = load i32, i32* %arg.addr, l4 c7
  (ReadLSB w32 (w32 0x0) foo.arg)
and
  assn asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Query to parse
array foo.arg[4] : w32 -> w8 = symbolic
array foo.arg[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.arg)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.arg)
     N0)
🔔 Removing: asm ln 31, prod ln 4.7, live ln 5, enc 1

Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 33, prod ln 4.7, live ln 6, enc 2
  %and = and i32 %6, %add, l4 c7
  (And w32 (ReadLSB w32 (w32 0x0) foo.arg)
          (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                   (ReadLSB w32 (w32 0x0) foo.bar.deref)))
and
  assn asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Query to parse
array foo.arg[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
array foo.bar.deref[8] : w32 -> w8 = symbolic
array foo.arg[4] : w32 -> w8 = symbolic
(query [] (Eq (And w32 N0:(ReadLSB w32 (w32 0x0) foo.arg)
              (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                       (ReadLSB w32 (w32 0x0) foo.bar.deref)))
     N0))
Parsed query
(Eq (And w32 N0:(ReadLSB w32 (w32 0x0) foo.arg)
              (Add w32 (ReadLSB w32 (w32 0x0) foo.more)
                       (ReadLSB w32 (w32 0x0) foo.bar.deref)))
     N0)

Filtering before assignments: `more` (decl src ln 1)

Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 28, prod ln 4.10, live ln 5, enc 1
  %4 = load i32, i32* %more.addr, l4 c10
  (ReadLSB w32 (w32 0x0) foo.more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Query to parse
array foo.more[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0)
🔔 Removing: asm ln 28, prod ln 4.10, live ln 5, enc 1

Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 36, prod ln 8.10, live ln 9, enc 2
  %8 = load i32, i32* %more.addr, l8 c10
  (ReadLSB w32 (w32 0x0) foo.more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Query to parse
array foo.more[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0)
🔔 Removing: asm ln 36, prod ln 8.10, live ln 9, enc 2

Filtering before assignments: `loaded` (decl src ln 3)

Checking equivalence of `loaded` (decl src ln 3) from
  assn asm ln 29, prod ln 4.17, live ln 5, enc 1
  %5 = load i32, i32* %loaded, l4 c17
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
and
  assn asm ln 27, prod ln 3.16, live ln 4, enc 0
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 (w32 0x0) foo.bar.deref)
Query to parse
array foo.bar.deref[8] : w32 -> w8 = symbolic
array foo.bar.deref[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.bar.deref)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.bar.deref)
     N0)
🔔 Removing: asm ln 29, prod ln 4.17, live ln 5, enc 1

Filtering after assignments: `arg` (decl src ln 1)

Variable intrinsic with undef input
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 13, prod ln 1.0, live ln 6, enc 1
  i32 undef
and
  assn asm ln 10, prod ln 1.0, live ln 6, enc 0
  i32 %arg

Collating encountered before assignments: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, enc 0
  asm ln 33, prod ln 4.7, live ln 6, enc 1
Collating encountered before assignments: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, enc 0
Collating encountered before assignments: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, enc 0

Collating encountered after assignments: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 6, enc 0
Collating encountered after assignments: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.0, live ln 6, enc 0
Collating encountered after assignments: `more` (decl src ln 1)
  asm ln 11, prod ln 1.0, live ln 6, enc 0

#### Check after using before as reference

❌ Before encountered assns for `loaded` (decl src ln 3) not found in after
Assignments:         loaded
  Reference:         1
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
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

❌ Before encountered assn for `arg` (decl src ln 1) at asm ln 33, prod ln 4.7, live ln 6, enc 1 not found in after

❌ Before `arg` (decl src ln 1) assn asm ln 16, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 10, prod ln 1.0, live ln 6, enc 0
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 10, prod ln 1.0, live ln 6, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
and
  assn asm ln 16, prod ln 1.0, live ln 2, enc 0
  i32 %arg
  (ReadLSB w32 (w32 0x0) foo.arg)
Query to parse
array foo.arg[4] : w32 -> w8 = symbolic
array foo.arg[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo.arg)
     (ReadLSB w32 (w32 0x0) foo.arg)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.arg)
     N0)
✅ Before `arg` (decl src ln 1) assn asm ln 16, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 10, prod ln 1.0, live ln 6, enc 0

Variable intrinsic with undef input
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 13, prod ln 1.0, live ln 6, enc 1
  i32 undef
and
  assn asm ln 33, prod ln 4.7, live ln 6, enc 1
  %and = and i32 %6, %add, l4 c7
❌ Before `arg` (decl src ln 1) assn asm ln 33, prod ln 4.7, live ln 6, enc 1 symbolic value doesn't match after assn asm ln 13, prod ln 1.0, live ln 6, enc 1

❌ After `arg` assns checked using before as reference
Assignments:         arg
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  1
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
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

❌ Before `bar` (decl src ln 1) assn asm ln 14, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 9, prod ln 1.0, live ln 6, enc 0
Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 6, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
and
  assn asm ln 14, prod ln 1.0, live ln 2, enc 0
  i32* %bar
  (w64 0x6EA58956ADA4F3E)
✅ Before `bar` (decl src ln 1) assn asm ln 14, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 6, enc 0

❌ After `bar` assns checked using before as reference
Assignments:         bar
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
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

❌ Before `more` (decl src ln 1) assn asm ln 18, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 11, prod ln 1.0, live ln 6, enc 0
Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 11, prod ln 1.0, live ln 6, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, enc 0
  i32 %more
  (ReadLSB w32 (w32 0x0) foo.more)
Query to parse
array foo.more[4] : w32 -> w8 = symbolic
array foo.more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo.more)
     (ReadLSB w32 (w32 0x0) foo.more)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.more)
     N0)
✅ Before `more` (decl src ln 1) assn asm ln 18, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 11, prod ln 1.0, live ln 6, enc 0

❌ After `more` assns checked using before as reference
Assignments:         more
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
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

❌ Before encountered assn for `redundant` (decl src ln 2) at asm ln 23, prod ln 2.19, live ln 3, enc 0 not found in after

❌ After `redundant` assns checked using before as reference
Assignments:         redundant
  Reference:         1
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
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

## Summary

Assignments:
  Reference:                 6
  Test:                      4 ( 66.67% of ref )
Matching:
  Matching Coords:           1 ( 16.67% of ref )
  Matching Value:            3 ( 50.00% of ref )
Consistency Errors:
  Mismatched Coords:         3 ( 50.00% of ref )
  Mismatched Value:          1 ( 16.67% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           3 ( 50.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          5 ( 83.33% of ref )
  Complete:                  5 ( 83.33% of ref )
  Within Time Limit:         5 ( 83.33% of ref )
  Within Fork Limit:         5 ( 83.33% of ref )
Test Execution:
  Function Covered:          4 (100.00% of test)
  Complete:                  4 (100.00% of test)
  Within Time Limit:         4 (100.00% of test)
  Within Fork Limit:         4 (100.00% of test)

❌ Some consistency checks failed
