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
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
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

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `foo` (decl src ln 2), asm ln 18
  %1 = load volatile i32, i32* %foo, l4 c16, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 4.16, live ln 5, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 15
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 15
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 3.15, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 2.16, live ln 3, enc None
Load from declared address of `read1` (decl src ln 3), asm ln 20
  %2 = load i32, i32* %read1, l6 c7, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 6.7, live ln 7, enc None
Store to declared address of `read1` (decl src ln 3), asm ln 16
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 15
  Added assignment asm ln 16, prod ln 3.15, live ln 4, enc None
Load from declared address of `brains` (decl src ln 4), asm ln 34
  %5 = load i32, i32* %brains, l11 c10, asm ln 34
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 11.10, live ln 12, enc None
Store to declared address of `brains` (decl src ln 4), asm ln 30
  %add = add nsw i32 %4, 1, l8 c12, asm ln 29
  Added assignment asm ln 30, prod ln 8.12, live ln 9, enc None
Load from declared address of `brains` (decl src ln 4), asm ln 28
  %4 = load i32, i32* %brains, l8 c12, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 8.12, live ln 9, enc None
Store to declared address of `brains` (decl src ln 4), asm ln 27
  %mul = mul nsw i32 %3, 2, l7 c12, asm ln 26
  Added assignment asm ln 27, prod ln 7.12, live ln 8, enc None
Load from declared address of `brains` (decl src ln 4), asm ln 25
  %3 = load i32, i32* %brains, l7 c12, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 7.12, live ln 8, enc None
Store to declared address of `brains` (decl src ln 4), asm ln 19
  %1 = load volatile i32, i32* %foo, l4 c16, asm ln 18
  Added assignment asm ln 19, prod ln 4.16, live ln 6, enc None

#### After variables

Load from declared address of `foo` (decl src ln 2), asm ln 15
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16, asm ln 15
  Added assignment asm ln 15, prod ln 4.16, live ln 6, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 13
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15, asm ln 13
  Added assignment asm ln 13, prod ln 3.15, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 0
  Added assignment asm ln 12, prod ln 2.16, live ln 3, enc None
Value produced for `read1` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15, asm ln 13
  Added assignment asm ln 14, prod ln 3.15, live ln 4, enc None
Value produced for `brains` (decl src ln 4), asm ln 16
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16, asm ln 15
  Added assignment asm ln 16, prod ln 4.16, live ln 6, enc None
Value produced for `brains` (decl src ln 4), asm ln 19
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12, asm ln 18
  Added assignment asm ln 19, prod ln 7.12, live ln 8, enc None
Value produced for `brains` (decl src ln 4), asm ln 21
  %add = or i32 %mul, 1, l8 c12, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 8.12, live ln 9, enc None
Value produced for `brains` (decl src ln 4), asm ln 23
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7, asm ln 22
  Added assignment asm ln 23, prod ln 6.7, live ln 11, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  Assignment asm ln 13, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 16, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 18, prod ln 4.16, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read1`
  Assignment asm ln 20, prod ln 6.7, live ln 7, enc 1
  %2 = load i32, i32* %read1, l6 c7
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `brains`
  Assignment asm ln 25, prod ln 7.12, live ln 8, enc 1
  %3 = load i32, i32* %brains, l7 c12
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 34, prod ln 11.10, live ln 12, enc 2
  %5 = load i32, i32* %brains, l11 c10
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `brains`
  Assignment asm ln 28, prod ln 8.12, live ln 9, enc 4
  %4 = load i32, i32* %brains, l8 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `brains`
  Assignment asm ln 30, prod ln 8.12, live ln 9, enc 5
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))

#### After values

Collected value for `foo`
  Assignment asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 14, prod ln 3.15, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 15, prod ln 4.16, live ln 6, enc 2
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 16, prod ln 4.16, live ln 6, enc 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 19, prod ln 7.12, live ln 8, enc 1
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
Collected value for `brains`
  Assignment asm ln 21, prod ln 8.12, live ln 9, enc 2
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
Collected value for `brains`
  Assignment asm ln 23, prod ln 6.7, live ln 11, enc 3
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)

### Assignments

#### Collation

Filtering before assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 13, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 18, prod ln 4.16, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Filtering before assignments: `read1` (decl src ln 3)

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 20, prod ln 6.7, live ln 7, enc 1
  %2 = load i32, i32* %read1, l6 c7
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 16, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
🔔 Removing: asm ln 20, prod ln 6.7, live ln 7, enc 1

Filtering before assignments: `brains` (decl src ln 4)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 25, prod ln 7.12, live ln 8, enc 1
  %3 = load i32, i32* %brains, l7 c12
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
🔔 Removing: asm ln 25, prod ln 7.12, live ln 8, enc 1

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 34, prod ln 11.10, live ln 12, enc 2
  %5 = load i32, i32* %brains, l11 c10
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
🔔 Removing: asm ln 34, prod ln 11.10, live ln 12, enc 2

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     N0)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 28, prod ln 8.12, live ln 9, enc 4
  %4 = load i32, i32* %brains, l8 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0)
🔔 Removing: asm ln 28, prod ln 8.12, live ln 9, enc 4

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 30, prod ln 8.12, live ln 9, enc 5
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))
and
  assn asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(Mul w32 (w32 0x2)
                          (ReadLSB w32 (w32 0x0) foo_1)))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(Mul w32 (w32 0x2)
                          (ReadLSB w32 (w32 0x0) foo_1)))
     N0)

Filtering after assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.16, live ln 6, enc 2
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Filtering after assignments: `brains` (decl src ln 4)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 19, prod ln 7.12, live ln 8, enc 1
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
and
  assn asm ln 16, prod ln 4.16, live ln 6, enc 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))
     N0))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))
     N0)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 21, prod ln 8.12, live ln 9, enc 2
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
and
  assn asm ln 19, prod ln 7.12, live ln 8, enc 1
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Or w32 N0:(Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                         (w32 0x1))
             (w32 0x1))
     N0))
Parsed query
(Eq (Or w32 N0:(Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                         (w32 0x1))
             (w32 0x1))
     N0)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 23, prod ln 6.7, live ln 11, enc 3
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)
and
  assn asm ln 21, prod ln 8.12, live ln 9, enc 2
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 N0:(Or w32 (Shl w32 N1:(ReadLSB w32 (w32 0x0) foo_1)
                                     (w32 0x1))
                            (w32 0x1))
                 N1)
     N0))
Parsed query
(Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 N0:(Or w32 (Shl w32 N1:(ReadLSB w32 (w32 0x0) foo_1)
                                     (w32 0x1))
                            (w32 0x1))
                 N1)
     N0)

Collating encountered before assignments: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, enc 0
  asm ln 15, prod ln 3.15, live ln 4, enc 1
  asm ln 18, prod ln 4.16, live ln 5, enc 2
Collating encountered before assignments: `read1` (decl src ln 3)
  asm ln 16, prod ln 3.15, live ln 4, enc 0
Collating encountered before assignments: `brains` (decl src ln 4)
  asm ln 19, prod ln 4.16, live ln 6, enc 0
  asm ln 27, prod ln 7.12, live ln 8, enc 1
  asm ln 30, prod ln 8.12, live ln 9, enc 2

Collating encountered after assignments: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, enc 0
  asm ln 13, prod ln 3.15, live ln 4, enc 1
  asm ln 15, prod ln 4.16, live ln 6, enc 2
Collating encountered after assignments: `read1` (decl src ln 3)
  asm ln 14, prod ln 3.15, live ln 4, enc 0
Collating encountered after assignments: `brains` (decl src ln 4)
  asm ln 16, prod ln 4.16, live ln 6, enc 0
  asm ln 19, prod ln 7.12, live ln 8, enc 1
  asm ln 21, prod ln 8.12, live ln 9, enc 2
  asm ln 23, prod ln 6.7, live ln 11, enc 3

#### Check after using before as reference

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 16, prod ln 4.16, live ln 6, enc 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `brains` (decl src ln 4) assn asm ln 19, prod ln 4.16, live ln 6, enc 0 symbolic value matches after assn asm ln 16, prod ln 4.16, live ln 6, enc 0

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 19, prod ln 7.12, live ln 8, enc 1
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
and
  assn asm ln 27, prod ln 7.12, live ln 8, enc 1
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))
     (Mul w32 (w32 0x2) N0))
✅ Before `brains` (decl src ln 4) assn asm ln 27, prod ln 7.12, live ln 8, enc 1 symbolic value matches after assn asm ln 19, prod ln 7.12, live ln 8, enc 1

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 21, prod ln 8.12, live ln 9, enc 2
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
and
  assn asm ln 30, prod ln 8.12, live ln 9, enc 2
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                      (w32 0x1))
             (w32 0x1))
     (Add w32 (w32 0x1)
              (Mul w32 (w32 0x2)
                       (ReadLSB w32 (w32 0x0) foo_1)))))
Parsed query
(Eq (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                      (w32 0x1))
             (w32 0x1))
     (Add w32 (w32 0x1) (Mul w32 (w32 0x2) N0)))
✅ Before `brains` (decl src ln 4) assn asm ln 30, prod ln 8.12, live ln 9, enc 2 symbolic value matches after assn asm ln 21, prod ln 8.12, live ln 9, enc 2

❌ After encountered assn for `brains` (decl src ln 4) at asm ln 23, prod ln 6.7, live ln 11, enc 3 not found in before

❌ After `brains` assns checked using before as reference
Assignments:         brains
  Reference:         3
  Test:              4
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
  Test Not in Ref:   1
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

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 13, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
✅ Before `foo` (decl src ln 2) assn asm ln 13, prod ln 2.16, live ln 3, enc 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, enc 0

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 15, prod ln 3.15, live ln 4, enc 1 symbolic value matches after assn asm ln 13, prod ln 3.15, live ln 4, enc 1

❌ Before `foo` (decl src ln 2) assn asm ln 18, prod ln 4.16, live ln 5, enc 2 coordinates don't match after assn asm ln 15, prod ln 4.16, live ln 6, enc 2
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.16, live ln 6, enc 2
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 18, prod ln 4.16, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 18, prod ln 4.16, live ln 5, enc 2 symbolic value matches after assn asm ln 15, prod ln 4.16, live ln 6, enc 2

❌ After `foo` assns checked using before as reference
Assignments:         foo
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   2
  Matching Value:    3
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

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 14, prod ln 3.15, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 16, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `read1` (decl src ln 3) assn asm ln 16, prod ln 3.15, live ln 4, enc 0 symbolic value matches after assn asm ln 14, prod ln 3.15, live ln 4, enc 0

✅ After `read1` assns checked using before as reference
Assignments:         read1
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

## Summary

Assignments:
  Reference:                 7
  Test:                      8 (114.29% of ref )
Matching:
  Matching Coords:           6 ( 85.71% of ref )
  Matching Value:            7 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         1 ( 14.29% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           0 (  0.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           1 ( 12.50% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          7 (100.00% of ref )
  Complete:                  7 (100.00% of ref )
  Within Time Limit:         7 (100.00% of ref )
  Within Fork Limit:         7 (100.00% of ref )
Test Execution:
  Function Covered:          8 (100.00% of test)
  Complete:                  8 (100.00% of test)
  Within Time Limit:         8 (100.00% of test)
  Within Fork Limit:         8 (100.00% of test)

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

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `foo` (decl src ln 2), asm ln 18
  %1 = load volatile i32, i32* %foo, l4 c16, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 4.16, live ln 5, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 15
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 15
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 3.15, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 2.16, live ln 3, enc None
Load from declared address of `read1` (decl src ln 3), asm ln 20
  %2 = load i32, i32* %read1, l6 c7, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 6.7, live ln 7, enc None
Store to declared address of `read1` (decl src ln 3), asm ln 16
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 15
  Added assignment asm ln 16, prod ln 3.15, live ln 4, enc None
Load from declared address of `brains` (decl src ln 4), asm ln 34
  %5 = load i32, i32* %brains, l11 c10, asm ln 34
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 11.10, live ln 12, enc None
Store to declared address of `brains` (decl src ln 4), asm ln 30
  %add = add nsw i32 %4, 1, l8 c12, asm ln 29
  Added assignment asm ln 30, prod ln 8.12, live ln 9, enc None
Load from declared address of `brains` (decl src ln 4), asm ln 28
  %4 = load i32, i32* %brains, l8 c12, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 8.12, live ln 9, enc None
Store to declared address of `brains` (decl src ln 4), asm ln 27
  %mul = mul nsw i32 %3, 2, l7 c12, asm ln 26
  Added assignment asm ln 27, prod ln 7.12, live ln 8, enc None
Load from declared address of `brains` (decl src ln 4), asm ln 25
  %3 = load i32, i32* %brains, l7 c12, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 7.12, live ln 8, enc None
Store to declared address of `brains` (decl src ln 4), asm ln 19
  %1 = load volatile i32, i32* %foo, l4 c16, asm ln 18
  Added assignment asm ln 19, prod ln 4.16, live ln 6, enc None

#### After variables

Load from declared address of `foo` (decl src ln 2), asm ln 15
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16, asm ln 15
  Added assignment asm ln 15, prod ln 4.16, live ln 6, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 13
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15, asm ln 13
  Added assignment asm ln 13, prod ln 3.15, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 0
  Added assignment asm ln 12, prod ln 2.16, live ln 3, enc None
Value produced for `read1` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15, asm ln 13
  Added assignment asm ln 14, prod ln 3.15, live ln 4, enc None
Value produced for `brains` (decl src ln 4), asm ln 16
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16, asm ln 15
  Added assignment asm ln 16, prod ln 4.16, live ln 6, enc None
Value produced for `brains` (decl src ln 4), asm ln 21
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7, asm ln 20
  Added assignment asm ln 21, prod ln 6.7, live ln 11, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  Assignment asm ln 13, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 16, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 18, prod ln 4.16, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read1`
  Assignment asm ln 20, prod ln 6.7, live ln 7, enc 1
  %2 = load i32, i32* %read1, l6 c7
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `brains`
  Assignment asm ln 25, prod ln 7.12, live ln 8, enc 1
  %3 = load i32, i32* %brains, l7 c12
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 34, prod ln 11.10, live ln 12, enc 2
  %5 = load i32, i32* %brains, l11 c10
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `brains`
  Assignment asm ln 28, prod ln 8.12, live ln 9, enc 4
  %4 = load i32, i32* %brains, l8 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `brains`
  Assignment asm ln 30, prod ln 8.12, live ln 9, enc 5
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))

#### After values

Collected value for `foo`
  Assignment asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 14, prod ln 3.15, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 15, prod ln 4.16, live ln 6, enc 2
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 16, prod ln 4.16, live ln 6, enc 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  Assignment asm ln 21, prod ln 6.7, live ln 11, enc 1
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)

### Assignments

#### Collation

Filtering before assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 13, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 18, prod ln 4.16, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Filtering before assignments: `read1` (decl src ln 3)

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 20, prod ln 6.7, live ln 7, enc 1
  %2 = load i32, i32* %read1, l6 c7
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 16, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
🔔 Removing: asm ln 20, prod ln 6.7, live ln 7, enc 1

Filtering before assignments: `brains` (decl src ln 4)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 25, prod ln 7.12, live ln 8, enc 1
  %3 = load i32, i32* %brains, l7 c12
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
🔔 Removing: asm ln 25, prod ln 7.12, live ln 8, enc 1

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 34, prod ln 11.10, live ln 12, enc 2
  %5 = load i32, i32* %brains, l11 c10
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
🔔 Removing: asm ln 34, prod ln 11.10, live ln 12, enc 2

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     N0)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 28, prod ln 8.12, live ln 9, enc 4
  %4 = load i32, i32* %brains, l8 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0)
🔔 Removing: asm ln 28, prod ln 8.12, live ln 9, enc 4

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 30, prod ln 8.12, live ln 9, enc 5
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))
and
  assn asm ln 27, prod ln 7.12, live ln 8, enc 3
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(Mul w32 (w32 0x2)
                          (ReadLSB w32 (w32 0x0) foo_1)))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(Mul w32 (w32 0x2)
                          (ReadLSB w32 (w32 0x0) foo_1)))
     N0)

Filtering after assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x0))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.16, live ln 6, enc 2
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Filtering after assignments: `brains` (decl src ln 4)

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 21, prod ln 6.7, live ln 11, enc 1
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)
and
  assn asm ln 16, prod ln 4.16, live ln 6, enc 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                                  (w32 0x1))
                         (w32 0x1))
                 N0)
     N0))
Parsed query
(Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                                  (w32 0x1))
                         (w32 0x1))
                 N0)
     N0)

Collating encountered before assignments: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, enc 0
  asm ln 15, prod ln 3.15, live ln 4, enc 1
  asm ln 18, prod ln 4.16, live ln 5, enc 2
Collating encountered before assignments: `read1` (decl src ln 3)
  asm ln 16, prod ln 3.15, live ln 4, enc 0
Collating encountered before assignments: `brains` (decl src ln 4)
  asm ln 19, prod ln 4.16, live ln 6, enc 0
  asm ln 27, prod ln 7.12, live ln 8, enc 1
  asm ln 30, prod ln 8.12, live ln 9, enc 2

Collating encountered after assignments: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, enc 0
  asm ln 13, prod ln 3.15, live ln 4, enc 1
  asm ln 15, prod ln 4.16, live ln 6, enc 2
Collating encountered after assignments: `read1` (decl src ln 3)
  asm ln 14, prod ln 3.15, live ln 4, enc 0
Collating encountered after assignments: `brains` (decl src ln 4)
  asm ln 16, prod ln 4.16, live ln 6, enc 0
  asm ln 21, prod ln 6.7, live ln 11, enc 1

#### Check after using before as reference

❌ Before encountered assn for `brains` (decl src ln 4) at asm ln 30, prod ln 8.12, live ln 9, enc 2 not found in after

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 16, prod ln 4.16, live ln 6, enc 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `brains` (decl src ln 4) assn asm ln 19, prod ln 4.16, live ln 6, enc 0 symbolic value matches after assn asm ln 16, prod ln 4.16, live ln 6, enc 0

❌ Before `brains` (decl src ln 4) assn asm ln 27, prod ln 7.12, live ln 8, enc 1 coordinates don't match after assn asm ln 21, prod ln 6.7, live ln 11, enc 1
Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 21, prod ln 6.7, live ln 11, enc 1
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)
and
  assn asm ln 27, prod ln 7.12, live ln 8, enc 1
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                                  (w32 0x1))
                         (w32 0x1))
                 N0)
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                                  (w32 0x1))
                         (w32 0x1))
                 N0)
     (Mul w32 (w32 0x2) N0))
❌ Before `brains` (decl src ln 4) assn asm ln 27, prod ln 7.12, live ln 8, enc 1 symbolic value doesn't match after assn asm ln 21, prod ln 6.7, live ln 11, enc 1

❌ After `brains` assns checked using before as reference
Assignments:         brains
  Reference:         3
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

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 13, prod ln 2.16, live ln 3, enc 0
  i32 0
  (w32 0x0)
✅ Before `foo` (decl src ln 2) assn asm ln 13, prod ln 2.16, live ln 3, enc 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, enc 0

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 15, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 15, prod ln 3.15, live ln 4, enc 1 symbolic value matches after assn asm ln 13, prod ln 3.15, live ln 4, enc 1

❌ Before `foo` (decl src ln 2) assn asm ln 18, prod ln 4.16, live ln 5, enc 2 coordinates don't match after assn asm ln 15, prod ln 4.16, live ln 6, enc 2
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.16, live ln 6, enc 2
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 18, prod ln 4.16, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 18, prod ln 4.16, live ln 5, enc 2 symbolic value matches after assn asm ln 15, prod ln 4.16, live ln 6, enc 2

❌ After `foo` assns checked using before as reference
Assignments:         foo
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   2
  Matching Value:    3
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

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 14, prod ln 3.15, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 16, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `read1` (decl src ln 3) assn asm ln 16, prod ln 3.15, live ln 4, enc 0 symbolic value matches after assn asm ln 14, prod ln 3.15, live ln 4, enc 0

✅ After `read1` assns checked using before as reference
Assignments:         read1
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

## Summary

Assignments:
  Reference:                 7
  Test:                      6 ( 85.71% of ref )
Matching:
  Matching Coords:           4 ( 57.14% of ref )
  Matching Value:            5 ( 71.43% of ref )
Consistency Errors:
  Mismatched Coords:         2 ( 28.57% of ref )
  Mismatched Value:          1 ( 14.29% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           1 ( 14.29% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          7 (100.00% of ref )
  Complete:                  7 (100.00% of ref )
  Within Time Limit:         7 (100.00% of ref )
  Within Fork Limit:         7 (100.00% of ref )
Test Execution:
  Function Covered:          6 (100.00% of test)
  Complete:                  6 (100.00% of test)
  Within Time Limit:         6 (100.00% of test)
  Within Fork Limit:         6 (100.00% of test)

❌ Some consistency checks failed
