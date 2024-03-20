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
Assertion failed: (matchCount <= 1 && "Multiple matching assignments found"), function recordValue, file ValuesCollector.cpp, line 201.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.      Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000106331e2d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x000000010633232b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x00000001063303c3 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x00000001063335cf SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
5  libsystem_platform.dylib 0x0000000000000001 _sigtramp + 18446603370568663105
6  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
7  libsystem_c.dylib        0x00007ff800aa9d1c err + 0
8  check-debug-info         0x000000010360a443 VCHandler::recordValue(klee::ExecutionState&, klee::ExecutionEvent&, llvm::Instruction const*, llvm::Value const*, klee::ref<klee::Expr>) + 2323
9  check-debug-info         0x0000000103609886 VCHandler::visitBeforeExecution(klee::ExecutionState&, klee::ExecutionEvent&, klee::KInstruction*) + 246
10 check-debug-info         0x0000000103661a0a klee::Executor::run(klee::ExecutionState&) + 1834
11 check-debug-info         0x0000000103666bbd klee::Executor::runFunction(llvm::Function*) + 205
12 check-debug-info         0x000000010360beac ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 252
13 check-debug-info         0x00000001035d700b checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3243
14 check-debug-info         0x00000001035d87d8 main + 2376
15 dyld                     0x00007ff8007f9366 start + 1942
./check-issue.sh: line 6: 39959 Abort trap: 6           ${CHECK} ${O0_BC} ${O2_BC} ${CHECK_OPTS}
