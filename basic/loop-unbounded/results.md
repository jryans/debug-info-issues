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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O0.ll
Writing '.example.dot'...
++ mv .example.dot example-O0.dot
++ ./../../tools/filter-dot.js example-O0.dot
++ mkdir -p klee-out-O1-partial-good
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -mllvm -opt-bisect-limit=39 -o example-O1-partial-good.ll
BISECT: running pass (1) Annotation2MetadataPass on [module]
BISECT: running pass (2) ForceFunctionAttrsPass on [module]
BISECT: running pass (3) InferFunctionAttrsPass on [module]
BISECT: running pass (4) LowerExpectIntrinsicPass on example
BISECT: running pass (5) SimplifyCFGPass on example
BISECT: running pass (6) SROA on example
BISECT: running pass (7) EarlyCSEPass on example
BISECT: running pass (8) OpenMPOptPass on [module]
BISECT: running pass (9) IPSCCPPass on [module]
BISECT: running pass (10) CalledValuePropagationPass on [module]
BISECT: running pass (11) GlobalOptPass on [module]
BISECT: running pass (12) PromotePass on example
BISECT: running pass (13) DeadArgumentEliminationPass on [module]
BISECT: running pass (14) InstCombinePass on example
BISECT: running pass (15) SimplifyCFGPass on example
BISECT: running pass (16) InvalidateAnalysisPass<llvm::AAManager> on example
BISECT: running pass (17) InlinerPass on (example)
BISECT: running pass (18) InlinerPass on (example)
BISECT: running pass (19) PostOrderFunctionAttrsPass on (example)
BISECT: running pass (20) SROA on example
BISECT: running pass (21) EarlyCSEPass on example
BISECT: running pass (22) SimplifyCFGPass on example
BISECT: running pass (23) InstCombinePass on example
BISECT: running pass (24) LibCallsShrinkWrapPass on example
BISECT: running pass (25) SimplifyCFGPass on example
BISECT: running pass (26) ReassociatePass on example
BISECT: running pass (27) LoopSimplifyPass on example
BISECT: running pass (28) LCSSAPass on example
BISECT: running pass (29) LoopInstSimplifyPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (30) LoopSimplifyCFGPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (31) LICMPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (32) LoopRotatePass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (33) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (34) SimpleLoopUnswitchPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (35) SimplifyCFGPass on example
BISECT: running pass (36) InstCombinePass on example
BISECT: running pass (37) LoopSimplifyPass on example
BISECT: running pass (38) LCSSAPass on example
BISECT: running pass (39) LoopIdiomRecognizePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (40) IndVarSimplifyPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (41) LoopDeletionPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (42) LoopFullUnrollPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (43) SROA on example
BISECT: NOT running pass (44) MemCpyOptPass on example
BISECT: NOT running pass (45) SCCPPass on example
BISECT: NOT running pass (46) BDCEPass on example
BISECT: NOT running pass (47) InstCombinePass on example
BISECT: NOT running pass (48) ADCEPass on example
BISECT: NOT running pass (49) SimplifyCFGPass on example
BISECT: NOT running pass (50) InstCombinePass on example
BISECT: NOT running pass (51) GlobalOptPass on [module]
BISECT: NOT running pass (52) GlobalDCEPass on [module]
BISECT: NOT running pass (53) EliminateAvailableExternallyPass on [module]
BISECT: NOT running pass (54) ReversePostOrderFunctionAttrsPass on [module]
BISECT: NOT running pass (55) Float2IntPass on example
BISECT: NOT running pass (56) LowerConstantIntrinsicsPass on example
BISECT: NOT running pass (57) LoopSimplifyPass on example
BISECT: NOT running pass (58) LCSSAPass on example
BISECT: NOT running pass (59) LoopRotatePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (60) LoopDistributePass on example
BISECT: NOT running pass (61) InjectTLIMappings on example
BISECT: NOT running pass (62) LoopVectorizePass on example
BISECT: NOT running pass (63) LoopLoadEliminationPass on example
BISECT: NOT running pass (64) InstCombinePass on example
BISECT: NOT running pass (65) SimplifyCFGPass on example
BISECT: NOT running pass (66) VectorCombinePass on example
BISECT: NOT running pass (67) InstCombinePass on example
BISECT: NOT running pass (68) LoopUnrollPass on example
BISECT: NOT running pass (69) WarnMissedTransformationsPass on example
BISECT: NOT running pass (70) InstCombinePass on example
BISECT: NOT running pass (71) LoopSimplifyPass on example
BISECT: NOT running pass (72) LCSSAPass on example
BISECT: NOT running pass (73) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (74) AlignmentFromAssumptionsPass on example
BISECT: NOT running pass (75) LoopSinkPass on example
BISECT: NOT running pass (76) InstSimplifyPass on example
BISECT: NOT running pass (77) DivRemPairsPass on example
BISECT: NOT running pass (78) SimplifyCFGPass on example
BISECT: NOT running pass (79) CGProfilePass on [module]
BISECT: NOT running pass (80) GlobalDCEPass on [module]
BISECT: NOT running pass (81) ConstantMergePass on [module]
BISECT: NOT running pass (82) RelLookupTableConverterPass on [module]
BISECT: NOT running pass (83) AnnotationRemarksPass on example
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1-partial-good/final.bc example-O1-partial-good.ll
++ mkdir -p klee-out-O1-partial-bad
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -mllvm -opt-bisect-limit=40 -o example-O1-partial-bad.ll
BISECT: running pass (1) Annotation2MetadataPass on [module]
BISECT: running pass (2) ForceFunctionAttrsPass on [module]
BISECT: running pass (3) InferFunctionAttrsPass on [module]
BISECT: running pass (4) LowerExpectIntrinsicPass on example
BISECT: running pass (5) SimplifyCFGPass on example
BISECT: running pass (6) SROA on example
BISECT: running pass (7) EarlyCSEPass on example
BISECT: running pass (8) OpenMPOptPass on [module]
BISECT: running pass (9) IPSCCPPass on [module]
BISECT: running pass (10) CalledValuePropagationPass on [module]
BISECT: running pass (11) GlobalOptPass on [module]
BISECT: running pass (12) PromotePass on example
BISECT: running pass (13) DeadArgumentEliminationPass on [module]
BISECT: running pass (14) InstCombinePass on example
BISECT: running pass (15) SimplifyCFGPass on example
BISECT: running pass (16) InvalidateAnalysisPass<llvm::AAManager> on example
BISECT: running pass (17) InlinerPass on (example)
BISECT: running pass (18) InlinerPass on (example)
BISECT: running pass (19) PostOrderFunctionAttrsPass on (example)
BISECT: running pass (20) SROA on example
BISECT: running pass (21) EarlyCSEPass on example
BISECT: running pass (22) SimplifyCFGPass on example
BISECT: running pass (23) InstCombinePass on example
BISECT: running pass (24) LibCallsShrinkWrapPass on example
BISECT: running pass (25) SimplifyCFGPass on example
BISECT: running pass (26) ReassociatePass on example
BISECT: running pass (27) LoopSimplifyPass on example
BISECT: running pass (28) LCSSAPass on example
BISECT: running pass (29) LoopInstSimplifyPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (30) LoopSimplifyCFGPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (31) LICMPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (32) LoopRotatePass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (33) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (34) SimpleLoopUnswitchPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (35) SimplifyCFGPass on example
BISECT: running pass (36) InstCombinePass on example
BISECT: running pass (37) LoopSimplifyPass on example
BISECT: running pass (38) LCSSAPass on example
BISECT: running pass (39) LoopIdiomRecognizePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (40) IndVarSimplifyPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (41) LoopDeletionPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (42) LoopFullUnrollPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (43) SROA on example
BISECT: NOT running pass (44) MemCpyOptPass on example
BISECT: NOT running pass (45) SCCPPass on example
BISECT: NOT running pass (46) BDCEPass on example
BISECT: NOT running pass (47) InstCombinePass on example
BISECT: NOT running pass (48) ADCEPass on example
BISECT: NOT running pass (49) SimplifyCFGPass on example
BISECT: NOT running pass (50) InstCombinePass on example
BISECT: NOT running pass (51) GlobalOptPass on [module]
BISECT: NOT running pass (52) GlobalDCEPass on [module]
BISECT: NOT running pass (53) EliminateAvailableExternallyPass on [module]
BISECT: NOT running pass (54) ReversePostOrderFunctionAttrsPass on [module]
BISECT: NOT running pass (55) Float2IntPass on example
BISECT: NOT running pass (56) LowerConstantIntrinsicsPass on example
BISECT: NOT running pass (57) LoopSimplifyPass on example
BISECT: NOT running pass (58) LCSSAPass on example
BISECT: NOT running pass (59) LoopRotatePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (60) LoopDistributePass on example
BISECT: NOT running pass (61) InjectTLIMappings on example
BISECT: NOT running pass (62) LoopVectorizePass on example
BISECT: NOT running pass (63) LoopLoadEliminationPass on example
BISECT: NOT running pass (64) InstCombinePass on example
BISECT: NOT running pass (65) SimplifyCFGPass on example
BISECT: NOT running pass (66) VectorCombinePass on example
BISECT: NOT running pass (67) InstCombinePass on example
BISECT: NOT running pass (68) LoopUnrollPass on example
BISECT: NOT running pass (69) WarnMissedTransformationsPass on example
BISECT: NOT running pass (70) InstCombinePass on example
BISECT: NOT running pass (71) LoopSimplifyPass on example
BISECT: NOT running pass (72) LCSSAPass on example
BISECT: NOT running pass (73) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (74) AlignmentFromAssumptionsPass on example
BISECT: NOT running pass (75) LoopSinkPass on example
BISECT: NOT running pass (76) InstSimplifyPass on example
BISECT: NOT running pass (77) DivRemPairsPass on example
BISECT: NOT running pass (78) SimplifyCFGPass on example
BISECT: NOT running pass (79) CGProfilePass on [module]
BISECT: NOT running pass (80) GlobalDCEPass on [module]
BISECT: NOT running pass (81) ConstantMergePass on [module]
BISECT: NOT running pass (82) RelLookupTableConverterPass on [module]
BISECT: NOT running pass (83) AnnotationRemarksPass on example
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1-partial-bad/final.bc example-O1-partial-bad.ll
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
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O1-cg.ll
Writing '.example.dot'...
++ mv .example.dot example-O1-cg.dot
++ ./../../tools/filter-dot.js example-O1-cg.dot
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 1)
Store to declared address of `n` (decl src ln 1), asm ln 13
  arg 0
  Added assignment asm ln 13, prod ln 1.0, live ln 2, enc None
Before variable `x` (decl src ln 2)
Store to declared address of `x` (decl src ln 2), asm ln 18
  %mul = mul nsw i32 %0, 2, l2 c13, asm ln 17
  Added assignment asm ln 18, prod ln 2.13, live ln 3, enc None
Before variable `y` (decl src ln 3)
Store to declared address of `y` (decl src ln 3), asm ln 38
  %add2 = add nsw i32 %5, %add1, l5 c7, asm ln 37
🔔 Store to declared address of `y` (decl src ln 3): live ln too early, using produced ln + 1
  Added assignment asm ln 38, prod ln 5.7, live ln 6, enc None
Store to declared address of `y` (decl src ln 3), asm ln 20
  const i32 0
  Added assignment asm ln 20, prod ln 3.7, live ln 4, enc None
Before variable `i` (decl src ln 4)
Store to declared address of `i` (decl src ln 4), asm ln 41
  %inc = add i32 %6, 1, l4 c36, asm ln 40
🔔 Store to declared address of `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 41, prod ln 4.36, live ln 5, enc None
Store to declared address of `i` (decl src ln 4), asm ln 22
  const i32 0
🔔 Store to declared address of `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 4.21, live ln 5, enc None

After variable `n` (decl src ln 1)
Value produced for `n` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 4, enc None
After variable `x` (decl src ln 2)
Value produced for `x` (decl src ln 2), asm ln 10
  arg 0
  Added assignment asm ln 10, prod ln 2.0, live ln 4, enc None
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 11
  const i32 0
  Added assignment asm ln 11, prod ln 3.0, live ln 4, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 12
  const i32 0
🔔 Value produced for `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 12, prod ln 4.0, live ln 5, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 13
  const i32 0
🔔 Value produced for `i` (decl src ln 4): missing produced ln, using decl ln
🔔 Value produced for `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 13, prod ln 4.0, live ln 5, enc None
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 14
  const i32 0
🔔 Value produced for `y` (decl src ln 3): missing produced ln, using decl ln
  Added assignment asm ln 14, prod ln 3.0, live ln 4, enc None
After variable `x` (decl src ln 2)
Value produced for `x` (decl src ln 2), asm ln 19
  arg 0
  Added assignment asm ln 19, prod ln 2.0, live ln 4, enc None
After variable `x` (decl src ln 2)
Value produced for `x` (decl src ln 2), asm ln 23
  %mul = shl nsw i32 %n, 1, l2 c13, asm ln 22
  Added assignment asm ln 23, prod ln 2.13, live ln 4, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 28
  const i32 undef
🔔 Value produced for `i` (decl src ln 4): missing produced ln, using decl ln
🔔 Value produced for `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 4.0, live ln 5, enc None
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 29
  const i32 undef
🔔 Value produced for `y` (decl src ln 3): missing produced ln, using decl ln
  Added assignment asm ln 29, prod ln 3.0, live ln 4, enc None
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 30
  const i32 undef
🔔 Value produced for `y` (decl src ln 3): missing produced ln, using decl ln
  Added assignment asm ln 30, prod ln 3.0, live ln 4, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 31
  const i32 undef
🔔 Value produced for `i` (decl src ln 4): missing produced ln, using decl ln
🔔 Value produced for `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 31, prod ln 4.0, live ln 5, enc None

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = mul nsw i32 %0, 2, l2 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Collected value for `y`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `y`
  %add2 = add nsw i32 %5, %add1, l5 c7
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
Collected value for `i`
  %inc = add i32 %6, 1, l4 c36
  (w32 0x1)

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `y`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `y`
  i32 0
  (w32 0x0)
Collected value for `x`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = shl nsw i32 %n, 1, l2 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Collected value for `i`
  i32 undef
  (w32 0x0)
Collected value for `y`
  i32 undef
  (w32 0x0)
Collected value for `y`
  i32 undef
  (w32 0x0)
Collected value for `i`
  i32 undef
  (w32 0x0)

### Assignments

Filtering redundant before assignments: `y` (decl src ln 3)

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 20, prod ln 3.7, live ln 4, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 38, prod ln 5.7, live ln 6, enc 1
  %add2 = add nsw i32 %5, %add1, l5 c7
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (w32 0x0)
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N0:(ReadLSB w32 (w32 0x0) n))
                       N0))))
Parsed query
(Eq (w32 0x0)
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N0:(ReadLSB w32 (w32 0x0) n))
                       N0)))

Filtering redundant before assignments: `i` (decl src ln 4)

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 22, prod ln 4.21, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 41, prod ln 4.36, live ln 5, enc 1
  %inc = add i32 %6, 1, l4 c36
  (w32 0x1)

Filtering redundant after assignments: `x` (decl src ln 2)

Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) n)
constu/s: (w64 0x1)
shl: (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Result: (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) n)
constu/s: (w64 0x1)
shl: (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Result: (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 19, prod ln 2.0, live ln 4, enc 1
  i32 %n
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
and
  assn asm ln 10, prod ln 2.0, live ln 4, enc 0
  i32 %n
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Shl w32 (ReadLSB w32 (w32 0x0) n)
                 (Extract w32 0 (w64 0x1)))
     N0))
Parsed query
(Eq N0:(Shl w32 (ReadLSB w32 (w32 0x0) n)
                 (Extract w32 0 (w64 0x1)))
     N0)
🔔 Removing: asm ln 19, prod ln 2.0, live ln 4, enc 1

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 23, prod ln 2.13, live ln 4, enc 2
  %mul = shl nsw i32 %n, 1, l2 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
and
  assn asm ln 10, prod ln 2.0, live ln 4, enc 0
  i32 %n
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) n)
              (w32 0x1))
     (Shl w32 N0 (Extract w32 0 (w64 0x1)))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) n)
              (w32 0x1))
     (Shl w32 N0 (Extract w32 0 (w64 0x1))))
🔔 Removing: asm ln 23, prod ln 2.13, live ln 4, enc 2

Filtering redundant after assignments: `y` (decl src ln 3)

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 14, prod ln 3.0, live ln 4, enc 1
  i32 0
  (w32 0x0)
and
  assn asm ln 11, prod ln 3.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 14, prod ln 3.0, live ln 4, enc 1

Variable intrinsic with undef input
❌ After `y` (decl src ln 3) assn asm ln 29, prod ln 3.0, live ln 4, enc 2 has no symbolic value from i32 undef

Variable intrinsic with undef input
Variable intrinsic with undef input
❌ After `y` (decl src ln 3) assn asm ln 30, prod ln 3.0, live ln 4, enc 3 has no symbolic value from i32 undef

Filtering redundant after assignments: `i` (decl src ln 4)

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 13, prod ln 4.0, live ln 5, enc 1
  i32 0
  (w32 0x0)
and
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 13, prod ln 4.0, live ln 5, enc 1

Variable intrinsic with undef input
❌ After `i` (decl src ln 4) assn asm ln 28, prod ln 4.0, live ln 5, enc 2 has no symbolic value from i32 undef

Variable intrinsic with undef input
Variable intrinsic with undef input
❌ After `i` (decl src ln 4) assn asm ln 31, prod ln 4.0, live ln 5, enc 3 has no symbolic value from i32 undef

Collating encountered assignments: `n` (decl src ln 1)
  asm ln 13, prod ln 1.0, live ln 2, enc 0
Collating encountered assignments: `x` (decl src ln 2)
  asm ln 18, prod ln 2.13, live ln 3, enc 0
Collating encountered assignments: `y` (decl src ln 3)
  asm ln 20, prod ln 3.7, live ln 4, enc 0
  asm ln 38, prod ln 5.7, live ln 6, enc 1
Collating encountered assignments: `i` (decl src ln 4)
  asm ln 22, prod ln 4.21, live ln 5, enc 0
  asm ln 41, prod ln 4.36, live ln 5, enc 1

Collating encountered assignments: `n` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 4, enc 0
Collating encountered assignments: `x` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 4, enc 0
Collating encountered assignments: `y` (decl src ln 3)
  asm ln 11, prod ln 3.0, live ln 4, enc 0
Collating encountered assignments: `i` (decl src ln 4)
  asm ln 12, prod ln 4.0, live ln 5, enc 0


#### Check before using after as reference

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 22, prod ln 4.21, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ After `i` (decl src ln 4) assn asm ln 12, prod ln 4.0, live ln 5, enc 0 symbolic value matches before assn asm ln 22, prod ln 4.21, live ln 5, enc 0

❌ After encountered assn for `i` (decl src ln 4) at asm ln 41, prod ln 4.36, live ln 5, enc 1 not found

❌ Before `i` assns checked using after as reference
Variable:            i
  Assignments:       2
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Missing:           1
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ After `n` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 4, enc 0 coordinates don't match before assn asm ln 13, prod ln 1.0, live ln 2, enc 0
Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 13, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 9, prod ln 1.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ After `n` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 4, enc 0 symbolic value matches before assn asm ln 13, prod ln 1.0, live ln 2, enc 0

❌ Before `n` assns checked using after as reference
Variable:            n
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ After `x` (decl src ln 2) assn asm ln 10, prod ln 2.0, live ln 4, enc 0 coordinates don't match before assn asm ln 18, prod ln 2.13, live ln 3, enc 0
Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 18, prod ln 2.13, live ln 3, enc 0
  %mul = mul nsw i32 %0, 2, l2 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
and
  assn asm ln 10, prod ln 2.0, live ln 4, enc 0
  i32 %n
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) n))
     (Shl w32 (ReadLSB w32 (w32 0x0) n)
              (Extract w32 0 (w64 0x1)))))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) n))
     (Shl w32 N0 (Extract w32 0 (w64 0x1))))
✅ After `x` (decl src ln 2) assn asm ln 10, prod ln 2.0, live ln 4, enc 0 symbolic value matches before assn asm ln 18, prod ln 2.13, live ln 3, enc 0

❌ Before `x` assns checked using after as reference
Variable:            x
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 20, prod ln 3.7, live ln 4, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 11, prod ln 3.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
✅ After `y` (decl src ln 3) assn asm ln 11, prod ln 3.0, live ln 4, enc 0 symbolic value matches before assn asm ln 20, prod ln 3.7, live ln 4, enc 0

❌ After encountered assn for `y` (decl src ln 3) at asm ln 38, prod ln 5.7, live ln 6, enc 1 not found

❌ Before `y` assns checked using after as reference
Variable:            y
  Assignments:       2
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Missing:           1
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 22, prod ln 4.21, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 4) assn asm ln 22, prod ln 4.21, live ln 5, enc 0 symbolic value matches after assn asm ln 12, prod ln 4.0, live ln 5, enc 0

❌ Before encountered assn for `i` (decl src ln 4) at asm ln 28, prod ln 4.0, live ln 5, enc 2 not found

❌ Before encountered assn for `i` (decl src ln 4) at asm ln 31, prod ln 4.0, live ln 5, enc 3 not found

❌ After `i` assns checked using before as reference
Variable:            i
  Assignments:       3
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Missing:           2
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ Before `n` (decl src ln 1) assn asm ln 13, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 9, prod ln 1.0, live ln 4, enc 0
Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 13, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ Before `n` (decl src ln 1) assn asm ln 13, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 4, enc 0

❌ After `n` assns checked using before as reference
Variable:            n
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ Before `x` (decl src ln 2) assn asm ln 18, prod ln 2.13, live ln 3, enc 0 coordinates don't match after assn asm ln 10, prod ln 2.0, live ln 4, enc 0
Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 10, prod ln 2.0, live ln 4, enc 0
  i32 %n
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (Extract w32 0 (w64 0x1)))
and
  assn asm ln 18, prod ln 2.13, live ln 3, enc 0
  %mul = mul nsw i32 %0, 2, l2 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 (w32 0x0) n)
              (Extract w32 0 (w64 0x1)))
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) n))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) n)
              (Extract w32 0 (w64 0x1)))
     (Mul w32 (w32 0x2) N0))
✅ Before `x` (decl src ln 2) assn asm ln 18, prod ln 2.13, live ln 3, enc 0 symbolic value matches after assn asm ln 10, prod ln 2.0, live ln 4, enc 0

❌ After `x` assns checked using before as reference
Variable:            x
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 11, prod ln 3.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 20, prod ln 3.7, live ln 4, enc 0
  i32 0
  (w32 0x0)
✅ Before `y` (decl src ln 3) assn asm ln 20, prod ln 3.7, live ln 4, enc 0 symbolic value matches after assn asm ln 11, prod ln 3.0, live ln 4, enc 0

❌ Before encountered assn for `y` (decl src ln 3) at asm ln 29, prod ln 3.0, live ln 4, enc 2 not found

❌ Before encountered assn for `y` (decl src ln 3) at asm ln 30, prod ln 3.0, live ln 4, enc 3 not found

❌ After `y` assns checked using before as reference
Variable:            y
  Assignments:       3
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Missing:           2
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Summary

❌ Some consistency checks failed
