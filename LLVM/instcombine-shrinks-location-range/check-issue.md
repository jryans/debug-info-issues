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
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
+++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
+++ DIAGNOSTICS_FILE=diagnostics.yaml
+++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
++++ llvm release-clang-lldb-13.0.0 clang
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
+++ CLANG=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
++++ llvm release-clang-lldb-13.0.0 llvm-as
++++ local build=release-clang-lldb-13.0.0
++++ local program=llvm-as
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
+++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
+++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
++++ llvm release-clang-lldb-13.0.0 llc
++++ local build=release-clang-lldb-13.0.0
++++ local program=llc
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc
+++ LLC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc
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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-before/final.bc klee-out-after/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-before/final.bc and klee-out-after/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, gen 0
Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0

After variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, gen 0
Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `a.c`
[0mCollected value for `h`
Assertion failed: (state.addressSpace.resolveOne(address, op) && "Concrete pointer not bound to MemoryObject"), function resolvePointers, file ValuesCollector.cpp, line 167.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-before/final.bc klee-out-after/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x000000010949db0d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x000000010949e08b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x000000010949bed3 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x000000010949fa8f SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff80fa635ed _sigtramp + 29
5  libtcmalloc.4.dylib      0x0000000111b79039 tc_free + 57
6  libsystem_c.dylib        0x00007ff80f95cb45 abort + 123
7  libsystem_c.dylib        0x00007ff80f95be5e err + 0
8  check-debug-info         0x00000001067c58c3 VCHandler::resolvePointers(klee::ExecutionState&, llvm::Value const*, klee::ref<klee::Expr>, llvm::DbgVariableIntrinsic const*) + 323
9  check-debug-info         0x00000001067c5326 VCHandler::recordValue(klee::ExecutionState&, klee::ExecutionEvent&, llvm::Instruction const*, llvm::Value const*, klee::ref<klee::Expr>) + 1046
10 check-debug-info         0x00000001067c4e3c VCHandler::visitBeforeExecution(klee::ExecutionState&, klee::ExecutionEvent&, klee::KInstruction*) + 540
11 check-debug-info         0x000000010680b85a klee::Executor::run(klee::ExecutionState&) + 1834
12 check-debug-info         0x00000001068105bd klee::Executor::runFunction(llvm::Function*) + 205
13 check-debug-info         0x00000001067c69a7 ValuesCollector::collect(llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 71
14 check-debug-info         0x0000000106792ae0 checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 2816
15 check-debug-info         0x0000000106794d08 main + 1768
16 dyld                     0x00007ff80f6dc41f start + 1903
./check-issue.sh: line 6:  2472 Abort trap: 6           ${CHECK} ${BEFORE_BC} ${AFTER_BC} ${CHECK_OPTS}
