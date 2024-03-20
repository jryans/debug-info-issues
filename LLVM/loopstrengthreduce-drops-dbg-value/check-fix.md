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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1-fixed/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O1-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `blah` (decl src ln 1), asm ln 21
  %2 = load i32, i32* %blah.addr, l3 c26, asm ln 21
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 3.26, live ln 4, enc None
Load from declared address of `blah` (decl src ln 1), asm ln 15
  %0 = load i32, i32* %blah.addr, l3 c14, asm ln 15
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 3.14, live ln 4, enc None
Store to declared address of `blah` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 3, enc None
Store to declared address of `bob` (decl src ln 2), asm ln 38
  %inc = add nsw i32 %4, 1, l3 c37, asm ln 37
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 38, prod ln 3.37, live ln 4, enc None
Load from declared address of `bob` (decl src ln 2), asm ln 36
  %4 = load i32, i32* %bob, l3 c37, asm ln 36
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 3.37, live ln 4, enc None
Load from declared address of `bob` (decl src ln 2), asm ln 27
  %3 = load i32, i32* %bob, l4 c9, asm ln 27
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 27, prod ln 4.9, live ln 5, enc None
Load from declared address of `bob` (decl src ln 2), asm ln 20
  %1 = load i32, i32* %bob, l3 c20, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 3.20, live ln 4, enc None
Store to declared address of `bob` (decl src ln 2), asm ln 16
  %0 = load i32, i32* %blah.addr, l3 c14, asm ln 15
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.14, live ln 4, enc None

#### After variables

Value produced for `blah` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 3, enc None
Value produced for `bob` (decl src ln 2), asm ln 10
  arg 0
  Added assignment asm ln 10, prod ln 2.0, live ln 3, enc None
Value produced for `bob` (decl src ln 2), asm ln 15
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 3.24, live ln 4, enc None
Value produced for `bob` (decl src ln 2), asm ln 16
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.24, live ln 4, enc None
Value produced for `bob` (decl src ln 2), asm ln 24
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Added assignment asm ln 24, prod ln 3.24, live ln 4, enc None
Value produced for `bob` (decl src ln 2), asm ln 26
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Added assignment asm ln 26, prod ln 3.24, live ln 4, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `blah`
  Assignment asm ln 12, prod ln 1.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `blah`
  Assignment asm ln 15, prod ln 3.14, live ln 4, enc 1
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 16, prod ln 3.14, live ln 4, enc 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 20, prod ln 3.20, live ln 4, enc 1
  %1 = load i32, i32* %bob, l3 c20
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `blah`
  Assignment asm ln 21, prod ln 3.26, live ln 4, enc 2
  %2 = load i32, i32* %blah.addr, l3 c26
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 27, prod ln 4.9, live ln 5, enc 2
  %3 = load i32, i32* %bob, l4 c9
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 36, prod ln 3.37, live ln 4, enc 3
  %4 = load i32, i32* %bob, l3 c37
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 38, prod ln 3.37, live ln 4, enc 4
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) foo.blah))

#### After values

Collected value for `blah`
  Assignment asm ln 9, prod ln 1.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 10, prod ln 2.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Collected value for `bob`
  Assignment asm ln 24, prod ln 3.24, live ln 4, enc 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
Collected value for `bob`
  Assignment asm ln 26, prod ln 3.24, live ln 4, enc 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
Collected value for `bob`
  Assignment asm ln 15, prod ln 3.24, live ln 4, enc 3
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
Collected value for `bob`
  Assignment asm ln 16, prod ln 3.24, live ln 4, enc 4
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))

### Assignments

#### Collation

Filtering before assignments: `blah` (decl src ln 1)

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 15, prod ln 3.14, live ln 4, enc 1
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 12, prod ln 1.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
🔔 Removing: asm ln 15, prod ln 3.14, live ln 4, enc 1

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 21, prod ln 3.26, live ln 4, enc 2
  %2 = load i32, i32* %blah.addr, l3 c26
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 12, prod ln 1.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
🔔 Removing: asm ln 21, prod ln 3.26, live ln 4, enc 2

Filtering before assignments: `bob` (decl src ln 2)

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 20, prod ln 3.20, live ln 4, enc 1
  %1 = load i32, i32* %bob, l3 c20
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 16, prod ln 3.14, live ln 4, enc 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
🔔 Removing: asm ln 20, prod ln 3.20, live ln 4, enc 1

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 27, prod ln 4.9, live ln 5, enc 2
  %3 = load i32, i32* %bob, l4 c9
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 16, prod ln 3.14, live ln 4, enc 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
🔔 Removing: asm ln 27, prod ln 4.9, live ln 5, enc 2

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 36, prod ln 3.37, live ln 4, enc 3
  %4 = load i32, i32* %bob, l3 c37
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 16, prod ln 3.14, live ln 4, enc 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
🔔 Removing: asm ln 36, prod ln 3.37, live ln 4, enc 3

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 38, prod ln 3.37, live ln 4, enc 4
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) foo.blah))
and
  assn asm ln 16, prod ln 3.14, live ln 4, enc 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) foo.blah))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) foo.blah))
     N0)

Filtering after assignments: `bob` (decl src ln 2)

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x1)))
Result: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x1)))
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 24, prod ln 3.24, live ln 4, enc 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x1)))
and
  assn asm ln 10, prod ln 2.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (w32 0xFFFFFFFF)
                       N0:(ReadLSB w32 (w32 0x0) foo.blah))
              (Extract w32 0 (w64 0x1)))
     N0))
Parsed query
(Eq (Add w32 (Add w32 (w32 0xFFFFFFFF)
                       N0:(ReadLSB w32 (w32 0x0) foo.blah))
              (Extract w32 0 (w64 0x1)))
     N0)
🔔 Removing: asm ln 24, prod ln 3.24, live ln 4, enc 1

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x1)))
plus_uconst: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Result: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 26, prod ln 3.24, live ln 4, enc 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
and
  assn asm ln 10, prod ln 2.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                N0:(ReadLSB w32 (w32 0x0) foo.blah))
                       N1:(Extract w32 0 (w64 0x1)))
              N1)
     N0))
Parsed query
(Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                N0:(ReadLSB w32 (w32 0x0) foo.blah))
                       N1:(Extract w32 0 (w64 0x1)))
              N1)
     N0)

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x2)))
Result: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x2)))
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 15, prod ln 3.24, live ln 4, enc 3
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 26, prod ln 3.24, live ln 4, enc 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 N0:(Add w32 (w32 0xFFFFFFFF)
                          (ReadLSB w32 (w32 0x0) foo.blah))
              (Extract w32 0 (w64 0x2)))
     (Add w32 (Add w32 N0 N1:(Extract w32 0 (w64 0x1)))
              N1)))
Parsed query
(Eq (Add w32 N0:(Add w32 (w32 0xFFFFFFFF)
                          (ReadLSB w32 (w32 0x0) foo.blah))
              (Extract w32 0 (w64 0x2)))
     (Add w32 (Add w32 N0 N1:(Extract w32 0 (w64 0x1)))
              N1))
🔔 Removing: asm ln 15, prod ln 3.24, live ln 4, enc 3

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) foo.blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) foo.blah))
          (Extract w32 0 (w64 0x1)))
plus_uconst: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Result: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 16, prod ln 3.24, live ln 4, enc 4
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
and
  assn asm ln 26, prod ln 3.24, live ln 4, enc 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                   (ReadLSB w32 (w32 0x0) foo.blah))
                          N1:(Extract w32 0 (w64 0x1)))
                 N1)
     N0))
Parsed query
(Eq N0:(Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                   (ReadLSB w32 (w32 0x0) foo.blah))
                          N1:(Extract w32 0 (w64 0x1)))
                 N1)
     N0)
🔔 Removing: asm ln 16, prod ln 3.24, live ln 4, enc 4

Collating encountered before assignments: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, enc 0
Collating encountered before assignments: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, enc 0
  asm ln 38, prod ln 3.37, live ln 4, enc 1

Collating encountered after assignments: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, enc 0
Collating encountered after assignments: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, enc 0
  asm ln 26, prod ln 3.24, live ln 4, enc 1

#### Check after using before as reference

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 12, prod ln 1.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo.blah)
     (ReadLSB w32 (w32 0x0) foo.blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
✅ Before `blah` (decl src ln 1) assn asm ln 12, prod ln 1.0, live ln 3, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 3, enc 0

✅ After `blah` assns checked using before as reference
Assignments:         blah
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

❌ Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, enc 0 coordinates don't match after assn asm ln 10, prod ln 2.0, live ln 3, enc 0
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 10, prod ln 2.0, live ln 3, enc 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) foo.blah)
and
  assn asm ln 16, prod ln 3.14, live ln 4, enc 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) foo.blah)
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo.blah)
     (ReadLSB w32 (w32 0x0) foo.blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo.blah)
     N0)
✅ Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, enc 0 symbolic value matches after assn asm ln 10, prod ln 2.0, live ln 3, enc 0

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 26, prod ln 3.24, live ln 4, enc 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) foo.blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
and
  assn asm ln 38, prod ln 3.37, live ln 4, enc 1
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) foo.blah))
Query to parse
array foo.blah[4] : w32 -> w8 = symbolic
array foo.blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                (ReadLSB w32 (w32 0x0) foo.blah))
                       N0:(Extract w32 0 (w64 0x1)))
              N0)
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) foo.blah))))
Parsed query
(Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                N0:(ReadLSB w32 (w32 0x0) foo.blah))
                       N1:(Extract w32 0 (w64 0x1)))
              N1)
     (Add w32 (w32 0x1) N0))
✅ Before `bob` (decl src ln 2) assn asm ln 38, prod ln 3.37, live ln 4, enc 1 symbolic value matches after assn asm ln 26, prod ln 3.24, live ln 4, enc 1

❌ After `bob` assns checked using before as reference
Assignments:         bob
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    2
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

## Summary

Assignments:
  Reference:                 3
  Test:                      3 (100.00% of ref )
Matching:
  Matching Coords:           2 ( 66.67% of ref )
  Matching Value:            3 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         1 ( 33.33% of ref )
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
  Function Covered:          3 (100.00% of ref )
  Complete:                  3 (100.00% of ref )
  Within Time Limit:         3 (100.00% of ref )
  Within Fork Limit:         3 (100.00% of ref )
Test Execution:
  Function Covered:          3 (100.00% of test)
  Complete:                  3 (100.00% of test)
  Within Time Limit:         3 (100.00% of test)
  Within Fork Limit:         3 (100.00% of test)

❌ Some consistency checks failed
