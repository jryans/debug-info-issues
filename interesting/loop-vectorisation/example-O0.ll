; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32* %x, i32 %len) #0 !dbg !11 {
entry:
  %x.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %r, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %r, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %i, align 4, !dbg !24
  br label %for.cond, !dbg !25

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !26
  %1 = load i32, i32* %len.addr, align 4, !dbg !28
  %cmp = icmp slt i32 %0, %1, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %x.addr, align 8, !dbg !31
  %3 = load i32, i32* %i, align 4, !dbg !33
  %idxprom = sext i32 %3 to i64, !dbg !31
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !31
  %4 = load i32, i32* %arrayidx, align 4, !dbg !31
  %5 = load i32, i32* %r, align 4, !dbg !34
  %add = add nsw i32 %5, %4, !dbg !34
  store i32 %add, i32* %r, align 4, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !36
  %inc = add nsw i32 %6, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36
  br label %for.cond, !dbg !37, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %r, align 4, !dbg !42
  ret i32 %7, !dbg !43
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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/interesting/loop-vectorisation")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = !DILocalVariable(name: "x", arg: 1, scope: !11, file: !8, line: 1, type: !15)
!17 = !DILocation(line: 1, column: 18, scope: !11)
!18 = !DILocalVariable(name: "len", arg: 2, scope: !11, file: !8, line: 1, type: !14)
!19 = !DILocation(line: 1, column: 25, scope: !11)
!20 = !DILocalVariable(name: "r", scope: !11, file: !8, line: 2, type: !14)
!21 = !DILocation(line: 2, column: 7, scope: !11)
!22 = !DILocalVariable(name: "i", scope: !23, file: !8, line: 4, type: !14)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 3)
!24 = !DILocation(line: 4, column: 12, scope: !23)
!25 = !DILocation(line: 4, column: 8, scope: !23)
!26 = !DILocation(line: 4, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !8, line: 4, column: 3)
!28 = !DILocation(line: 4, column: 23, scope: !27)
!29 = !DILocation(line: 4, column: 21, scope: !27)
!30 = !DILocation(line: 4, column: 3, scope: !23)
!31 = !DILocation(line: 5, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !8, line: 4, column: 33)
!33 = !DILocation(line: 5, column: 12, scope: !32)
!34 = !DILocation(line: 5, column: 7, scope: !32)
!35 = !DILocation(line: 6, column: 3, scope: !32)
!36 = !DILocation(line: 4, column: 29, scope: !27)
!37 = !DILocation(line: 4, column: 3, scope: !27)
!38 = distinct !{!38, !30, !39, !40, !41}
!39 = !DILocation(line: 6, column: 3, scope: !23)
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !DILocation(line: 7, column: 10, scope: !11)
!43 = !DILocation(line: 7, column: 3, scope: !11)
