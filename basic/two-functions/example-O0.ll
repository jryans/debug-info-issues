; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example1(i32 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %n.addr, align 4, !dbg !19
  %mul = mul nsw i32 %0, 2, !dbg !20
  store i32 %mul, i32* %x, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %y, metadata !21, metadata !DIExpression()), !dbg !22
  %1 = load i32, i32* %x, align 4, !dbg !23
  %add = add nsw i32 %1, 4, !dbg !24
  %2 = load i32, i32* %n.addr, align 4, !dbg !25
  %add1 = add nsw i32 %add, %2, !dbg !26
  store i32 %add1, i32* %y, align 4, !dbg !22
  %3 = load i32, i32* %y, align 4, !dbg !27
  ret i32 %3, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example2(i32 %n) #0 !dbg !29 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %x, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i32, i32* %n.addr, align 4, !dbg !34
  %mul = mul nsw i32 %0, 2, !dbg !35
  store i32 %mul, i32* %x, align 4, !dbg !33
  %1 = load i32, i32* %x, align 4, !dbg !36
  call void @read(i32 %1), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %y, metadata !38, metadata !DIExpression()), !dbg !39
  %2 = load i32, i32* %x, align 4, !dbg !40
  %add = add nsw i32 %2, 4, !dbg !41
  %3 = load i32, i32* %n.addr, align 4, !dbg !42
  %add1 = add nsw i32 %add, %3, !dbg !43
  store i32 %add1, i32* %y, align 4, !dbg !39
  %4 = load i32, i32* %y, align 4, !dbg !44
  call void @read(i32 %4), !dbg !45
  %5 = load i32, i32* %y, align 4, !dbg !46
  %6 = load i32, i32* %n.addr, align 4, !dbg !47
  %add2 = add nsw i32 %5, %6, !dbg !48
  store i32 %add2, i32* %x, align 4, !dbg !49
  %7 = load i32, i32* %x, align 4, !dbg !50
  %mul3 = mul nsw i32 %7, 2, !dbg !51
  store i32 %mul3, i32* %y, align 4, !dbg !52
  %8 = load i32, i32* %y, align 4, !dbg !53
  ret i32 %8, !dbg !54
}

declare void @read(i32) #2

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/two-functions")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example1", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 3, type: !14)
!16 = !DILocation(line: 3, column: 18, scope: !11)
!17 = !DILocalVariable(name: "x", scope: !11, file: !8, line: 4, type: !14)
!18 = !DILocation(line: 4, column: 7, scope: !11)
!19 = !DILocation(line: 4, column: 11, scope: !11)
!20 = !DILocation(line: 4, column: 13, scope: !11)
!21 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 5, type: !14)
!22 = !DILocation(line: 5, column: 7, scope: !11)
!23 = !DILocation(line: 5, column: 11, scope: !11)
!24 = !DILocation(line: 5, column: 13, scope: !11)
!25 = !DILocation(line: 5, column: 19, scope: !11)
!26 = !DILocation(line: 5, column: 17, scope: !11)
!27 = !DILocation(line: 6, column: 10, scope: !11)
!28 = !DILocation(line: 6, column: 3, scope: !11)
!29 = distinct !DISubprogram(name: "example2", scope: !8, file: !8, line: 9, type: !12, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!30 = !DILocalVariable(name: "n", arg: 1, scope: !29, file: !8, line: 9, type: !14)
!31 = !DILocation(line: 9, column: 18, scope: !29)
!32 = !DILocalVariable(name: "x", scope: !29, file: !8, line: 10, type: !14)
!33 = !DILocation(line: 10, column: 7, scope: !29)
!34 = !DILocation(line: 10, column: 11, scope: !29)
!35 = !DILocation(line: 10, column: 13, scope: !29)
!36 = !DILocation(line: 10, column: 23, scope: !29)
!37 = !DILocation(line: 10, column: 18, scope: !29)
!38 = !DILocalVariable(name: "y", scope: !29, file: !8, line: 11, type: !14)
!39 = !DILocation(line: 11, column: 7, scope: !29)
!40 = !DILocation(line: 11, column: 11, scope: !29)
!41 = !DILocation(line: 11, column: 13, scope: !29)
!42 = !DILocation(line: 11, column: 19, scope: !29)
!43 = !DILocation(line: 11, column: 17, scope: !29)
!44 = !DILocation(line: 11, column: 27, scope: !29)
!45 = !DILocation(line: 11, column: 22, scope: !29)
!46 = !DILocation(line: 12, column: 7, scope: !29)
!47 = !DILocation(line: 12, column: 11, scope: !29)
!48 = !DILocation(line: 12, column: 9, scope: !29)
!49 = !DILocation(line: 12, column: 5, scope: !29)
!50 = !DILocation(line: 13, column: 7, scope: !29)
!51 = !DILocation(line: 13, column: 9, scope: !29)
!52 = !DILocation(line: 13, column: 5, scope: !29)
!53 = !DILocation(line: 14, column: 10, scope: !29)
!54 = !DILocation(line: 14, column: 3, scope: !29)
