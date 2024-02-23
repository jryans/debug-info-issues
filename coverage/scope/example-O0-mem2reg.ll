; ModuleID = 'example-O0.ll'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [17 x i8] c"Enter a number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Sum is %d.\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @example() #0 !dbg !11 {
entry:
  %number = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %number, metadata !14, metadata !DIExpression()), !dbg !16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !17
  %call1 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %number), !dbg !18
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 1, metadata !21, metadata !DIExpression()), !dbg !20
  br label %while.cond, !dbg !22

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %while.body ], !dbg !20
  %sum.0 = phi i32 [ 0, %entry ], [ %add, %while.body ], !dbg !20
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !21, metadata !DIExpression()), !dbg !20
  %0 = load i32, i32* %number, align 4, !dbg !23
  %cmp = icmp sle i32 %i.0, %0, !dbg !24
  br i1 %cmp, label %while.body, label %while.end, !dbg !22

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %sum.0, %i.0, !dbg !25
  call void @llvm.dbg.value(metadata i32 %add, metadata !19, metadata !DIExpression()), !dbg !20
  %inc = add nsw i32 %i.0, 1, !dbg !27
  call void @llvm.dbg.value(metadata i32 %inc, metadata !21, metadata !DIExpression()), !dbg !20
  br label %while.cond, !dbg !22, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %sum.0), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/coverage/scope")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !DILocalVariable(name: "number", scope: !11, file: !8, line: 4, type: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocation(line: 4, column: 7, scope: !11)
!17 = !DILocation(line: 6, column: 3, scope: !11)
!18 = !DILocation(line: 7, column: 3, scope: !11)
!19 = !DILocalVariable(name: "sum", scope: !11, file: !8, line: 9, type: !15)
!20 = !DILocation(line: 0, scope: !11)
!21 = !DILocalVariable(name: "i", scope: !11, file: !8, line: 10, type: !15)
!22 = !DILocation(line: 11, column: 3, scope: !11)
!23 = !DILocation(line: 11, column: 15, scope: !11)
!24 = !DILocation(line: 11, column: 12, scope: !11)
!25 = !DILocation(line: 12, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !11, file: !8, line: 11, column: 23)
!27 = !DILocation(line: 13, column: 6, scope: !26)
!28 = distinct !{!28, !22, !29, !30}
!29 = !DILocation(line: 14, column: 3, scope: !11)
!30 = !{!"llvm.loop.mustprogress"}
!31 = !DILocation(line: 16, column: 3, scope: !11)
!32 = !DILocation(line: 17, column: 1, scope: !11)
