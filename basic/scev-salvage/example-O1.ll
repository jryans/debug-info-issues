; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind ssp uwtable writeonly
define void @example(i32 %n, i32 %size, i32* nocapture %data) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %size, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %data, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !23
  %cmp7.not = icmp eq i32 %size, 0, !dbg !24
  br i1 %cmp7.not, label %while.end, label %while.body.preheader, !dbg !25

while.body.preheader:                             ; preds = %entry
  %wide.trip.count = zext i32 %size to i64, !dbg !24
  br label %while.body, !dbg !25

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ 0, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !19, metadata !DIExpression()), !dbg !23
  %0 = trunc i64 %indvars.iv to i32, !dbg !26
  %mul = shl nsw i32 %0, 2, !dbg !26
  %add = add i32 %mul, %n, !dbg !27
  call void @llvm.dbg.value(metadata i32 %add, metadata !21, metadata !DIExpression()), !dbg !28
  %arrayidx = getelementptr inbounds i32, i32* %data, i64 %indvars.iv, !dbg !29
  store i32 %add, i32* %arrayidx, align 4, !dbg !30, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !19, metadata !DIExpression()), !dbg !23
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !24
  br i1 %exitcond.not, label %while.end, label %while.body, !dbg !25, !llvm.loop !36

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !41
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #2 !dbg !42 {
entry:
  %n = alloca i32, align 4
  %size = alloca i32, align 4
  %data = alloca i32*, align 8
  %0 = bitcast i32* %n to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5, !dbg !49
  %1 = bitcast i32* %size to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5, !dbg !50
  %2 = bitcast i32** %data to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !51
  call void @llvm.dbg.value(metadata i32* %n, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !52
  call void @klee_make_symbolic(i8* nonnull %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !53
  call void @llvm.dbg.value(metadata i32* %size, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !52
  call void @klee_make_symbolic(i8* nonnull %1, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !54
  call void @llvm.dbg.value(metadata i32** %data, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !52
  call void @klee_make_symbolic(i8* nonnull %2, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !55
  %3 = load i32, i32* %n, align 4, !dbg !56, !tbaa !31
  call void @llvm.dbg.value(metadata i32 %3, metadata !46, metadata !DIExpression()), !dbg !52
  %4 = load i32, i32* %size, align 4, !dbg !57, !tbaa !31
  call void @llvm.dbg.value(metadata i32 %4, metadata !47, metadata !DIExpression()), !dbg !52
  %5 = load i32*, i32** %data, align 8, !dbg !58, !tbaa !59
  call void @llvm.dbg.value(metadata i32* %5, metadata !48, metadata !DIExpression()), !dbg !52
  call void @example(i32 %3, i32 %4, i32* %5), !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5, !dbg !62
  ret i32 0, !dbg !62
}

declare !dbg !63 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree noinline norecurse nosync nounwind ssp uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/scev-salvage")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !14}
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!15 = !{!16, !17, !18, !19, !21}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!17 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !1, line: 1, type: !13)
!18 = !DILocalVariable(name: "data", arg: 3, scope: !10, file: !1, line: 1, type: !14)
!19 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 2, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "comp", scope: !22, file: !1, line: 5, type: !20)
!22 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 20)
!23 = !DILocation(line: 0, scope: !10)
!24 = !DILocation(line: 4, column: 12, scope: !10)
!25 = !DILocation(line: 4, column: 3, scope: !10)
!26 = !DILocation(line: 5, column: 19, scope: !22)
!27 = !DILocation(line: 5, column: 24, scope: !22)
!28 = !DILocation(line: 0, scope: !22)
!29 = !DILocation(line: 6, column: 5, scope: !22)
!30 = !DILocation(line: 6, column: 13, scope: !22)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 7, column: 7, scope: !22)
!36 = distinct !{!36, !25, !37, !38, !39, !40}
!37 = !DILocation(line: 8, column: 3, scope: !10)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!"llvm.loop.vectorize.width", i32 1}
!41 = !DILocation(line: 9, column: 1, scope: !10)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !43, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{!20}
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(name: "n", scope: !42, file: !1, line: 16, type: !13)
!47 = !DILocalVariable(name: "size", scope: !42, file: !1, line: 17, type: !13)
!48 = !DILocalVariable(name: "data", scope: !42, file: !1, line: 18, type: !14)
!49 = !DILocation(line: 16, column: 3, scope: !42)
!50 = !DILocation(line: 17, column: 3, scope: !42)
!51 = !DILocation(line: 18, column: 3, scope: !42)
!52 = !DILocation(line: 0, scope: !42)
!53 = !DILocation(line: 20, column: 3, scope: !42)
!54 = !DILocation(line: 21, column: 3, scope: !42)
!55 = !DILocation(line: 22, column: 3, scope: !42)
!56 = !DILocation(line: 24, column: 11, scope: !42)
!57 = !DILocation(line: 24, column: 14, scope: !42)
!58 = !DILocation(line: 24, column: 20, scope: !42)
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !33, i64 0}
!61 = !DILocation(line: 24, column: 3, scope: !42)
!62 = !DILocation(line: 25, column: 1, scope: !42)
!63 = !DISubprogram(name: "klee_make_symbolic", scope: !64, file: !64, line: 37, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!64 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
