; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

; Function Attrs: nofree noinline nosync nounwind ssp uwtable writeonly
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  %s = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !21
  %0 = bitcast [2 x i32]* %s to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !17, metadata !DIExpression()), !dbg !23
  %arrayinit.begin3 = bitcast [2 x i32]* %s to i32*, !dbg !24
  store i32 %n, i32* %arrayinit.begin3, align 4, !dbg !24, !tbaa !25
  %arrayinit.start = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !24
  store i32 0, i32* %arrayinit.start, align 4, !dbg !24, !tbaa !25
  %idxprom = sext i32 %n to i64, !dbg !29
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 %idxprom, !dbg !29
  %1 = load i32, i32* %arrayidx, align 4, !dbg !29, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4, !dbg !30
  ret i32 %1, !dbg !31
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree noinline nosync nounwind ssp uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/array-symbolic-access")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 2, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!17 = !DILocalVariable(name: "s", scope: !11, file: !8, line: 3, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 2)
!21 = !DILocation(line: 0, scope: !11)
!22 = !DILocation(line: 3, column: 3, scope: !11)
!23 = !DILocation(line: 3, column: 7, scope: !11)
!24 = !DILocation(line: 3, column: 14, scope: !11)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 4, column: 10, scope: !11)
!30 = !DILocation(line: 5, column: 1, scope: !11)
!31 = !DILocation(line: 4, column: 3, scope: !11)
