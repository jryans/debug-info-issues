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
  %0 = zext i32 %n to i64, !dbg !25
  %1 = shl nuw nsw i64 %wide.trip.count, 2, !dbg !25
  br label %while.body, !dbg !25

while.body:                                       ; preds = %while.body.preheader, %while.body
  %lsr.iv = phi i64 [ 0, %while.body.preheader ], [ %lsr.iv.next, %while.body ]
  %2 = bitcast i32* %data to i8*, !dbg !24
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !19, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_stack_value)), !dbg !23
  call void @llvm.dbg.value(metadata !DIArgList(i64 %lsr.iv, i32 %n), metadata !21, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 4, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !26
  %3 = add i64 %0, %lsr.iv, !dbg !27
  %uglygep = getelementptr i8, i8* %2, i64 %lsr.iv
  %uglygep10 = bitcast i8* %uglygep to i32*
  %tmp = trunc i64 %3 to i32
  store i32 %tmp, i32* %uglygep10, align 4, !dbg !28, !tbaa !29
  %lsr.iv.copy = add nuw nsw i64 %lsr.iv, 0, !dbg !24 ; Workaround poor phi handling with a noop
  call void @llvm.dbg.value(metadata i64 %lsr.iv.copy, metadata !19, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !23
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4, !dbg !24
  %exitcond.not = icmp eq i64 %1, %lsr.iv.next, !dbg !24
  br i1 %exitcond.not, label %while.end, label %while.body, !dbg !25, !llvm.loop !33

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !38
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #2 !dbg !39 {
entry:
  %n = alloca i32, align 4
  %size = alloca i32, align 4
  %data = alloca i32*, align 8
  %0 = bitcast i32* %n to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5, !dbg !46
  %1 = bitcast i32* %size to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5, !dbg !47
  %2 = bitcast i32** %data to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !48
  call void @llvm.dbg.value(metadata i32* %n, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !49
  call void @klee_make_symbolic(i8* nonnull %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !50
  call void @llvm.dbg.value(metadata i32* %size, metadata !44, metadata !DIExpression(DW_OP_deref)), !dbg !49
  call void @klee_make_symbolic(i8* nonnull %1, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !51
  call void @llvm.dbg.value(metadata i32** %data, metadata !45, metadata !DIExpression(DW_OP_deref)), !dbg !49
  call void @klee_make_symbolic(i8* nonnull %2, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !52
  %3 = load i32, i32* %n, align 4, !dbg !53, !tbaa !29
  call void @llvm.dbg.value(metadata i32 %3, metadata !43, metadata !DIExpression()), !dbg !49
  %4 = load i32, i32* %size, align 4, !dbg !54, !tbaa !29
  call void @llvm.dbg.value(metadata i32 %4, metadata !44, metadata !DIExpression()), !dbg !49
  %5 = load i32*, i32** %data, align 8, !dbg !55, !tbaa !56
  call void @llvm.dbg.value(metadata i32* %5, metadata !45, metadata !DIExpression()), !dbg !49
  call void @example(i32 %3, i32 %4, i32* %5), !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5, !dbg !59
  ret i32 0, !dbg !59
}

declare !dbg !60 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #3

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
!26 = !DILocation(line: 0, scope: !22)
!27 = !DILocation(line: 6, column: 5, scope: !22)
!28 = !DILocation(line: 6, column: 13, scope: !22)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = distinct !{!33, !25, !34, !35, !36, !37}
!34 = !DILocation(line: 8, column: 3, scope: !10)
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"llvm.loop.vectorize.width", i32 1}
!38 = !DILocation(line: 9, column: 1, scope: !10)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !40, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!20}
!42 = !{!43, !44, !45}
!43 = !DILocalVariable(name: "n", scope: !39, file: !1, line: 16, type: !13)
!44 = !DILocalVariable(name: "size", scope: !39, file: !1, line: 17, type: !13)
!45 = !DILocalVariable(name: "data", scope: !39, file: !1, line: 18, type: !14)
!46 = !DILocation(line: 16, column: 3, scope: !39)
!47 = !DILocation(line: 17, column: 3, scope: !39)
!48 = !DILocation(line: 18, column: 3, scope: !39)
!49 = !DILocation(line: 0, scope: !39)
!50 = !DILocation(line: 20, column: 3, scope: !39)
!51 = !DILocation(line: 21, column: 3, scope: !39)
!52 = !DILocation(line: 22, column: 3, scope: !39)
!53 = !DILocation(line: 24, column: 11, scope: !39)
!54 = !DILocation(line: 24, column: 14, scope: !39)
!55 = !DILocation(line: 24, column: 20, scope: !39)
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !31, i64 0}
!58 = !DILocation(line: 24, column: 3, scope: !39)
!59 = !DILocation(line: 25, column: 1, scope: !39)
!60 = !DISubprogram(name: "klee_make_symbolic", scope: !61, file: !61, line: 37, type: !62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!61 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
