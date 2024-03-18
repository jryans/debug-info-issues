; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @example(i32 noundef %n) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !15, metadata !DIExpression()), !dbg !18
  %mul = shl i32 %n, 3, !dbg !19
  call void @llvm.dbg.value(metadata i32 %mul, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata !DIArgList(i32 %mul, i32 %n), metadata !17, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !18
  call void @llvm.dbg.value(metadata i32 %mul, metadata !16, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !18
  %mul3 = add i32 %mul, 8, !dbg !20
  call void @llvm.dbg.value(metadata i32 %mul3, metadata !17, metadata !DIExpression()), !dbg !18
  ret i32 %mul3, !dbg !21
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 15.0.0 (git@github.com:llvm/llvm-project.git b153bb8430593cfc63089897d1665d001c5de04b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/single-path-multiple-assignments")
!9 = !{!"clang version 15.0.0 (git@github.com:llvm/llvm-project.git b153bb8430593cfc63089897d1665d001c5de04b)"}
!10 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !8, line: 1, type: !13)
!16 = !DILocalVariable(name: "x", scope: !10, file: !8, line: 2, type: !13)
!17 = !DILocalVariable(name: "y", scope: !10, file: !8, line: 3, type: !13)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocation(line: 2, column: 13, scope: !10)
!20 = !DILocation(line: 5, column: 9, scope: !10)
!21 = !DILocation(line: 6, column: 3, scope: !10)
