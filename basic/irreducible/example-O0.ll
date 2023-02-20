; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %y, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %y, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %i, align 4, !dbg !21
  %0 = load i32, i32* %n.addr, align 4, !dbg !22
  %cmp = icmp slt i32 %0, 10, !dbg !24
  br i1 %cmp, label %if.then, label %if.end, !dbg !25

if.then:                                          ; preds = %entry
  br label %inside, !dbg !26

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !30
  %2 = load i32, i32* %n.addr, align 4, !dbg !32
  %cmp1 = icmp ult i32 %1, %2, !dbg !33
  br i1 %cmp1, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  br label %inside, !dbg !35

inside:                                           ; preds = %for.body, %if.then
  call void @llvm.dbg.label(metadata !36), !dbg !38
  %3 = load i32, i32* %i, align 4, !dbg !39
  %add = add i32 %3, 4, !dbg !40
  %4 = load i32, i32* %n.addr, align 4, !dbg !41
  %add2 = add i32 %add, %4, !dbg !42
  %5 = load i32, i32* %y, align 4, !dbg !43
  %add3 = add i32 %5, %add2, !dbg !43
  store i32 %add3, i32* %y, align 4, !dbg !43
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %inside
  %6 = load i32, i32* %i, align 4, !dbg !45
  %inc = add i32 %6, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %y, align 4, !dbg !50
  ret i32 %7, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/irreducible")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!16 = !DILocation(line: 1, column: 17, scope: !11)
!17 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocation(line: 2, column: 7, scope: !11)
!19 = !DILocalVariable(name: "i", scope: !11, file: !8, line: 3, type: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 3, column: 16, scope: !11)
!22 = !DILocation(line: 4, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 7)
!24 = !DILocation(line: 4, column: 9, scope: !23)
!25 = !DILocation(line: 4, column: 7, scope: !11)
!26 = !DILocation(line: 5, column: 5, scope: !23)
!27 = !DILocation(line: 6, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !11, file: !8, line: 6, column: 3)
!29 = !DILocation(line: 6, column: 8, scope: !28)
!30 = !DILocation(line: 6, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !8, line: 6, column: 3)
!32 = !DILocation(line: 6, column: 19, scope: !31)
!33 = !DILocation(line: 6, column: 17, scope: !31)
!34 = !DILocation(line: 6, column: 3, scope: !28)
!35 = !DILocation(line: 6, column: 27, scope: !31)
!36 = !DILabel(scope: !37, name: "inside", file: !8, line: 7)
!37 = distinct !DILexicalBlock(scope: !31, file: !8, line: 6, column: 27)
!38 = !DILocation(line: 7, column: 1, scope: !37)
!39 = !DILocation(line: 8, column: 10, scope: !37)
!40 = !DILocation(line: 8, column: 12, scope: !37)
!41 = !DILocation(line: 8, column: 18, scope: !37)
!42 = !DILocation(line: 8, column: 16, scope: !37)
!43 = !DILocation(line: 8, column: 7, scope: !37)
!44 = !DILocation(line: 9, column: 3, scope: !37)
!45 = !DILocation(line: 6, column: 23, scope: !31)
!46 = !DILocation(line: 6, column: 3, scope: !31)
!47 = distinct !{!47, !34, !48, !49}
!48 = !DILocation(line: 9, column: 3, scope: !28)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 10, column: 10, scope: !11)
!51 = !DILocation(line: 10, column: 3, scope: !11)
