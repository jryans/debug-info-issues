; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !19
  %mul = shl i32 %n, 3, !dbg !20
  call void @llvm.dbg.value(metadata i32 %mul, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata !DIArgList(i32 %mul, i32 %n), metadata !18, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !19
  call void @llvm.dbg.value(metadata i32 %mul, metadata !17, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !19
  %mul3 = add i32 %mul, 8, !dbg !21
  call void @llvm.dbg.value(metadata i32 %mul3, metadata !18, metadata !DIExpression()), !dbg !19
  ret i32 %mul3, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/single-path-multiple-assignments")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!17 = !DILocalVariable(name: "x", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 3, type: !14)
!19 = !DILocation(line: 0, scope: !11)
!20 = !DILocation(line: 2, column: 13, scope: !11)
!21 = !DILocation(line: 5, column: 9, scope: !11)
!22 = !DILocation(line: 6, column: 3, scope: !11)
