; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %n.addr, align 4, !dbg !19
  %mul = mul nsw i32 %0, 2, !dbg !20
  store i32 %mul, i32* %x, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %y, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %y, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !26
  br label %for.cond, !dbg !27

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !28
  %2 = load i32, i32* %n.addr, align 4, !dbg !30
  %cmp = icmp ult i32 %1, %2, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4, !dbg !33
  %add = add nsw i32 %3, 4, !dbg !35
  %4 = load i32, i32* %n.addr, align 4, !dbg !36
  %add1 = add nsw i32 %add, %4, !dbg !37
  %5 = load i32, i32* %y, align 4, !dbg !38
  %add2 = add nsw i32 %5, %add1, !dbg !38
  store i32 %add2, i32* %y, align 4, !dbg !38
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !40
  %inc = add i32 %6, 1, !dbg !40
  store i32 %inc, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !41, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %y, align 4, !dbg !45
  ret i32 %7, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!16 = !DILocation(line: 1, column: 17, scope: !11)
!17 = !DILocalVariable(name: "x", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocation(line: 2, column: 7, scope: !11)
!19 = !DILocation(line: 2, column: 11, scope: !11)
!20 = !DILocation(line: 2, column: 13, scope: !11)
!21 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 3, type: !14)
!22 = !DILocation(line: 3, column: 7, scope: !11)
!23 = !DILocalVariable(name: "i", scope: !24, file: !8, line: 4, type: !25)
!24 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 3)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DILocation(line: 4, column: 21, scope: !24)
!27 = !DILocation(line: 4, column: 8, scope: !24)
!28 = !DILocation(line: 4, column: 28, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !8, line: 4, column: 3)
!30 = !DILocation(line: 4, column: 32, scope: !29)
!31 = !DILocation(line: 4, column: 30, scope: !29)
!32 = !DILocation(line: 4, column: 3, scope: !24)
!33 = !DILocation(line: 5, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !8, line: 4, column: 40)
!35 = !DILocation(line: 5, column: 12, scope: !34)
!36 = !DILocation(line: 5, column: 18, scope: !34)
!37 = !DILocation(line: 5, column: 16, scope: !34)
!38 = !DILocation(line: 5, column: 7, scope: !34)
!39 = !DILocation(line: 6, column: 3, scope: !34)
!40 = !DILocation(line: 4, column: 36, scope: !29)
!41 = !DILocation(line: 4, column: 3, scope: !29)
!42 = distinct !{!42, !32, !43, !44}
!43 = !DILocation(line: 6, column: 3, scope: !24)
!44 = !{!"llvm.loop.mustprogress"}
!45 = !DILocation(line: 7, column: 10, scope: !11)
!46 = !DILocation(line: 7, column: 3, scope: !11)
