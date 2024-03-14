; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@__const.example.data = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32, align 4
  %data = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [4 x i32]* %data, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [4 x i32]* %data to i8*, !dbg !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.example.data to i8*), i64 16, i1 false), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %i, align 4, !dbg !24
  br label %for.cond, !dbg !25

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !26
  %2 = load i32, i32* %n.addr, align 4, !dbg !28
  %cmp = icmp slt i32 %1, %2, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !31, metadata !DIExpression()), !dbg !33
  %3 = load i32, i32* %i, align 4, !dbg !34
  %add = add nsw i32 %3, 2, !dbg !35
  %rem = srem i32 %add, 4, !dbg !36
  store i32 %rem, i32* %i2, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32** %a, metadata !37, metadata !DIExpression()), !dbg !39
  %4 = load i32, i32* %i, align 4, !dbg !40
  %idxprom = sext i32 %4 to i64, !dbg !41
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom, !dbg !41
  store i32* %arrayidx, i32** %a, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i32** %b, metadata !42, metadata !DIExpression()), !dbg !43
  %5 = load i32, i32* %i2, align 4, !dbg !44
  %idxprom1 = sext i32 %5 to i64, !dbg !45
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, !dbg !45
  store i32* %arrayidx2, i32** %b, align 8, !dbg !43
  %6 = load i32, i32* %n.addr, align 4, !dbg !46
  %7 = load i32*, i32** %b, align 8, !dbg !47
  %8 = load i32, i32* %7, align 4, !dbg !48
  %add3 = add nsw i32 %8, %6, !dbg !48
  store i32 %add3, i32* %7, align 4, !dbg !48
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !50
  %inc = add nsw i32 %9, 1, !dbg !50
  store i32 %inc, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n.addr, align 4, !dbg !55
  %rem4 = srem i32 %10, 4, !dbg !56
  %idxprom5 = sext i32 %rem4 to i64, !dbg !57
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom5, !dbg !57
  %11 = load i32, i32* %arrayidx6, align 4, !dbg !57
  ret i32 %11, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded-array-complex")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!16 = !DILocation(line: 1, column: 17, scope: !11)
!17 = !DILocalVariable(name: "data", scope: !11, file: !8, line: 2, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DILocation(line: 2, column: 7, scope: !11)
!22 = !DILocalVariable(name: "i", scope: !23, file: !8, line: 3, type: !14)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 3, column: 3)
!24 = !DILocation(line: 3, column: 12, scope: !23)
!25 = !DILocation(line: 3, column: 8, scope: !23)
!26 = !DILocation(line: 3, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !8, line: 3, column: 3)
!28 = !DILocation(line: 3, column: 23, scope: !27)
!29 = !DILocation(line: 3, column: 21, scope: !27)
!30 = !DILocation(line: 3, column: 3, scope: !23)
!31 = !DILocalVariable(name: "i2", scope: !32, file: !8, line: 4, type: !14)
!32 = distinct !DILexicalBlock(scope: !27, file: !8, line: 3, column: 31)
!33 = !DILocation(line: 4, column: 9, scope: !32)
!34 = !DILocation(line: 4, column: 15, scope: !32)
!35 = !DILocation(line: 4, column: 17, scope: !32)
!36 = !DILocation(line: 4, column: 22, scope: !32)
!37 = !DILocalVariable(name: "a", scope: !32, file: !8, line: 5, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!39 = !DILocation(line: 5, column: 10, scope: !32)
!40 = !DILocation(line: 5, column: 20, scope: !32)
!41 = !DILocation(line: 5, column: 15, scope: !32)
!42 = !DILocalVariable(name: "b", scope: !32, file: !8, line: 6, type: !38)
!43 = !DILocation(line: 6, column: 10, scope: !32)
!44 = !DILocation(line: 6, column: 20, scope: !32)
!45 = !DILocation(line: 6, column: 15, scope: !32)
!46 = !DILocation(line: 7, column: 11, scope: !32)
!47 = !DILocation(line: 7, column: 6, scope: !32)
!48 = !DILocation(line: 7, column: 8, scope: !32)
!49 = !DILocation(line: 8, column: 3, scope: !32)
!50 = !DILocation(line: 3, column: 27, scope: !27)
!51 = !DILocation(line: 3, column: 3, scope: !27)
!52 = distinct !{!52, !30, !53, !54}
!53 = !DILocation(line: 8, column: 3, scope: !23)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 9, column: 15, scope: !11)
!56 = !DILocation(line: 9, column: 17, scope: !11)
!57 = !DILocation(line: 9, column: 10, scope: !11)
!58 = !DILocation(line: 9, column: 3, scope: !11)
