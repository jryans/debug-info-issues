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

## Function `baz`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `p` (decl src ln 3), asm ln 41
  %6 = load i32, i32* %p.addr, l13 c13, asm ln 41
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 41, prod ln 13.13, live ln 14, enc None
Load from declared address of `p` (decl src ln 3), asm ln 34
  %4 = load i32, i32* %p.addr, l10 c10, asm ln 34
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 10.10, live ln 11, enc None
Load from declared address of `p` (decl src ln 3), asm ln 20
  %0 = load i32, i32* %p.addr, l6 c11, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 6.11, live ln 7, enc None
Store to declared address of `p` (decl src ln 3), asm ln 15
  arg 0
  Added assignment asm ln 15, prod ln 3.0, live ln 6, enc None
Load from declared address of `q` (decl src ln 3), asm ln 58
  %11 = load i32, i32* %q.addr, l21 c14, asm ln 58
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 58, prod ln 21.14, live ln 22, enc None
Load from declared address of `q` (decl src ln 3), asm ln 50
  %9 = load i32, i32* %q.addr, l16 c13, asm ln 50
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 50, prod ln 16.13, live ln 17, enc None
Store to declared address of `q` (decl src ln 3), asm ln 17
  arg 1
  Added assignment asm ln 17, prod ln 3.0, live ln 6, enc None
Store to declared address of `local` (decl src ln 4), asm ln 51
  %9 = load i32, i32* %q.addr, l16 c13, asm ln 50
  Added assignment asm ln 51, prod ln 16.13, live ln 17, enc None
Load from declared address of `local` (decl src ln 4), asm ln 30
  %2 = load i32, i32* %local, l9 c12, asm ln 30
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 30, prod ln 9.12, live ln 10, enc None
Store to declared address of `local` (decl src ln 4), asm ln 21
  %0 = load i32, i32* %p.addr, l6 c11, asm ln 20
  Added assignment asm ln 21, prod ln 6.11, live ln 7, enc None

#### After variables

Value produced for `p` (decl src ln 3), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 3.0, live ln 7, enc None
Value produced for `q` (decl src ln 3), asm ln 13
  arg 1
  Added assignment asm ln 13, prod ln 3.0, live ln 7, enc None
Value produced for `local` (decl src ln 4), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 4.0, live ln 7, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `p`
  Assignment asm ln 15, prod ln 3.0, live ln 6, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
Collected value for `q`
  Assignment asm ln 17, prod ln 3.0, live ln 6, enc 0
  i32 %q
  (ReadLSB w32 (w32 0x0) baz.q)
Collected value for `p`
  Assignment asm ln 20, prod ln 6.11, live ln 7, enc 1
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) baz.p)
Collected value for `local`
  Assignment asm ln 21, prod ln 6.11, live ln 7, enc 0
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) baz.p)
Collected value for `q`
  Assignment asm ln 58, prod ln 21.14, live ln 22, enc 1
  %11 = load i32, i32* %q.addr, l21 c14
  (ReadLSB w32 (w32 0x0) baz.q)
Collected value for `local`
  Assignment asm ln 30, prod ln 9.12, live ln 10, enc 1
  %2 = load i32, i32* %local, l9 c12
  (ReadLSB w32 (w32 0x0) baz.p)
Collected value for `p`
  Assignment asm ln 41, prod ln 13.13, live ln 14, enc 2
  %6 = load i32, i32* %p.addr, l13 c13
  (ReadLSB w32 (w32 0x0) baz.p)
Collected value for `q`
  Assignment asm ln 50, prod ln 16.13, live ln 17, enc 2
  %9 = load i32, i32* %q.addr, l16 c13
  (ReadLSB w32 (w32 0x0) baz.q)
Collected value for `local`
  Assignment asm ln 51, prod ln 16.13, live ln 17, enc 2
  %9 = load i32, i32* %q.addr, l16 c13
  (ReadLSB w32 (w32 0x0) baz.q)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:13: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `p`
  Assignment asm ln 12, prod ln 3.0, live ln 7, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
Collected value for `q`
  Assignment asm ln 13, prod ln 3.0, live ln 7, enc 0
  i32 %q
  (ReadLSB w32 (w32 0x0) baz.q)
Collected value for `local`
  Assignment asm ln 14, prod ln 4.0, live ln 7, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:7: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering before assignments: `p` (decl src ln 3)

Expected 1 symbolic value(s), got 0
Checking equivalence of `p` (decl src ln 3) from
  assn asm ln 15, prod ln 3.0, live ln 6, enc 0
  i32 %p
and
  assn asm ln 34, prod ln 10.10, live ln 11, enc None
  %4 = load i32, i32* %p.addr, l10 c10

Checking equivalence of `p` (decl src ln 3) from
  assn asm ln 20, prod ln 6.11, live ln 7, enc 1
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) baz.p)
and
  assn asm ln 15, prod ln 3.0, live ln 6, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
Query to parse
array baz.p[4] : w32 -> w8 = symbolic
array baz.p[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0)
🔔 Removing: asm ln 20, prod ln 6.11, live ln 7, enc 1

Checking equivalence of `p` (decl src ln 3) from
  assn asm ln 41, prod ln 13.13, live ln 14, enc 2
  %6 = load i32, i32* %p.addr, l13 c13
  (ReadLSB w32 (w32 0x0) baz.p)
and
  assn asm ln 15, prod ln 3.0, live ln 6, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
Query to parse
array baz.p[4] : w32 -> w8 = symbolic
array baz.p[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0)
🔔 Removing: asm ln 41, prod ln 13.13, live ln 14, enc 2

Filtering before assignments: `q` (decl src ln 3)

Checking equivalence of `q` (decl src ln 3) from
  assn asm ln 58, prod ln 21.14, live ln 22, enc 1
  %11 = load i32, i32* %q.addr, l21 c14
  (ReadLSB w32 (w32 0x0) baz.q)
and
  assn asm ln 17, prod ln 3.0, live ln 6, enc 0
  i32 %q
  (ReadLSB w32 (w32 0x0) baz.q)
Query to parse
array baz.q[4] : w32 -> w8 = symbolic
array baz.q[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) baz.q)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.q)
     N0)
🔔 Removing: asm ln 58, prod ln 21.14, live ln 22, enc 1

Checking equivalence of `q` (decl src ln 3) from
  assn asm ln 50, prod ln 16.13, live ln 17, enc 2
  %9 = load i32, i32* %q.addr, l16 c13
  (ReadLSB w32 (w32 0x0) baz.q)
and
  assn asm ln 17, prod ln 3.0, live ln 6, enc 0
  i32 %q
  (ReadLSB w32 (w32 0x0) baz.q)
Query to parse
array baz.q[4] : w32 -> w8 = symbolic
array baz.q[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) baz.q)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.q)
     N0)
🔔 Removing: asm ln 50, prod ln 16.13, live ln 17, enc 2

Filtering before assignments: `local` (decl src ln 4)

Checking equivalence of `local` (decl src ln 4) from
  assn asm ln 30, prod ln 9.12, live ln 10, enc 1
  %2 = load i32, i32* %local, l9 c12
  (ReadLSB w32 (w32 0x0) baz.p)
and
  assn asm ln 21, prod ln 6.11, live ln 7, enc 0
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) baz.p)
Query to parse
array baz.p[4] : w32 -> w8 = symbolic
array baz.p[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0)
🔔 Removing: asm ln 30, prod ln 9.12, live ln 10, enc 1

Checking equivalence of `local` (decl src ln 4) from
  assn asm ln 51, prod ln 16.13, live ln 17, enc 2
  %9 = load i32, i32* %q.addr, l16 c13
  (ReadLSB w32 (w32 0x0) baz.q)
and
  assn asm ln 21, prod ln 6.11, live ln 7, enc 0
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) baz.p)
Query to parse
array baz.q[4] : w32 -> w8 = symbolic
array baz.p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) baz.q)
     (ReadLSB w32 (w32 0x0) baz.p)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) baz.q)
     (ReadLSB w32 (w32 0x0) baz.p))

Collating encountered before assignments: `p` (decl src ln 3)
❌ Assignment asm ln 34, prod ln 10.10, live ln 11, enc None for `p` (decl src ln 3) was not encountered during execution
  asm ln 15, prod ln 3.0, live ln 6, enc 0
Collating encountered before assignments: `q` (decl src ln 3)
  asm ln 17, prod ln 3.0, live ln 6, enc 0
Collating encountered before assignments: `local` (decl src ln 4)
  asm ln 21, prod ln 6.11, live ln 7, enc 0
  asm ln 51, prod ln 16.13, live ln 17, enc 1

Collating encountered after assignments: `p` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 7, enc 0
Collating encountered after assignments: `q` (decl src ln 3)
  asm ln 13, prod ln 3.0, live ln 7, enc 0
Collating encountered after assignments: `local` (decl src ln 4)
  asm ln 14, prod ln 4.0, live ln 7, enc 0

#### Check after using before as reference

❌ Before encountered assn for `local` (decl src ln 4) at asm ln 51, prod ln 16.13, live ln 17, enc 1 not found in after

Checking equivalence of `local` (decl src ln 4) from
  assn asm ln 14, prod ln 4.0, live ln 7, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
and
  assn asm ln 21, prod ln 6.11, live ln 7, enc 0
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) baz.p)
Query to parse
array baz.p[4] : w32 -> w8 = symbolic
array baz.p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) baz.p)
     (ReadLSB w32 (w32 0x0) baz.p)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0)
✅ Before `local` (decl src ln 4) assn asm ln 21, prod ln 6.11, live ln 7, enc 0 symbolic value matches after assn asm ln 14, prod ln 4.0, live ln 7, enc 0

❌ After `local` assns checked using before as reference
Assignments:         local
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 34, prod ln 10.10, live ln 11, enc None for `p` (decl src ln 3) was not encountered during execution

❌ Before `p` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 6, enc 0 coordinates don't match after assn asm ln 12, prod ln 3.0, live ln 7, enc 0
Checking equivalence of `p` (decl src ln 3) from
  assn asm ln 12, prod ln 3.0, live ln 7, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
and
  assn asm ln 15, prod ln 3.0, live ln 6, enc 0
  i32 %p
  (ReadLSB w32 (w32 0x0) baz.p)
Query to parse
array baz.p[4] : w32 -> w8 = symbolic
array baz.p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) baz.p)
     (ReadLSB w32 (w32 0x0) baz.p)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.p)
     N0)
✅ Before `p` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 6, enc 0 symbolic value matches after assn asm ln 12, prod ln 3.0, live ln 7, enc 0

❌ After `p` assns checked using before as reference
Assignments:         p
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before `q` (decl src ln 3) assn asm ln 17, prod ln 3.0, live ln 6, enc 0 coordinates don't match after assn asm ln 13, prod ln 3.0, live ln 7, enc 0
Checking equivalence of `q` (decl src ln 3) from
  assn asm ln 13, prod ln 3.0, live ln 7, enc 0
  i32 %q
  (ReadLSB w32 (w32 0x0) baz.q)
and
  assn asm ln 17, prod ln 3.0, live ln 6, enc 0
  i32 %q
  (ReadLSB w32 (w32 0x0) baz.q)
Query to parse
array baz.q[4] : w32 -> w8 = symbolic
array baz.q[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) baz.q)
     (ReadLSB w32 (w32 0x0) baz.q)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) baz.q)
     N0)
✅ Before `q` (decl src ln 3) assn asm ln 17, prod ln 3.0, live ln 6, enc 0 symbolic value matches after assn asm ln 13, prod ln 3.0, live ln 7, enc 0

❌ After `q` assns checked using before as reference
Assignments:         q
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Summary

Assignments:
  Reference:                 5
  Test:                      3 ( 60.00% of ref )
Matching:
  Matching Coords:           1 ( 20.00% of ref )
  Matching Value:            3 ( 60.00% of ref )
Consistency Errors:
  Mismatched Coords:         2 ( 40.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          1 ( 20.00% of ref )
  Ref Not in Test:           1 ( 20.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          0 (  0.00% of ref )
  Complete:                  0 (  0.00% of ref )
  Within Time Limit:         5 (100.00% of ref )
  Within Fork Limit:         5 (100.00% of ref )
Test Execution:
  Function Covered:          0 (  0.00% of test)
  Complete:                  0 (  0.00% of test)
  Within Time Limit:         3 (100.00% of test)
  Within Fork Limit:         3 (100.00% of test)

❌ Some consistency checks failed
