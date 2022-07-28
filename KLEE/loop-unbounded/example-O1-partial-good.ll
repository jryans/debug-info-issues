; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !15, metadata !DIExpression()), !dbg !21
  %mul = shl nsw i32 %n, 1, !dbg !22
  call void @llvm.dbg.value(metadata i32 %mul, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !23
  %add = add i32 %n, 4
  %add1 = add i32 %add, %mul
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !21
  %cmp10.not = icmp eq i32 %n, 0, !dbg !24
  br i1 %cmp10.not, label %for.cond.cleanup, label %for.body.preheader, !dbg !26

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !26

for.cond.cleanup.loopexit:                        ; preds = %for.body
  %add2.lcssa = phi i32 [ %add2, %for.body ], !dbg !27
  br label %for.cond.cleanup, !dbg !29

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %add2.lcssa, %for.cond.cleanup.loopexit ], !dbg !21
  ret i32 %y.0.lcssa, !dbg !29

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.012 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %y.011 = phi i32 [ %add2, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.012, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %y.011, metadata !17, metadata !DIExpression()), !dbg !21
  %add2 = add i32 %add1, %y.011, !dbg !27
  call void @llvm.dbg.value(metadata i32 %add2, metadata !17, metadata !DIExpression()), !dbg !21
  %inc = add i32 %i.012, 1, !dbg !30
  call void @llvm.dbg.value(metadata i32 %inc, metadata !18, metadata !DIExpression()), !dbg !23
  %cmp = icmp ult i32 %inc, %n, !dbg !24
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit, !dbg !26, !llvm.loop !31
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #3 !dbg !35 {
entry:
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !43
  call void @llvm.dbg.value(metadata i64* %n, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !45
  %1 = load i64, i64* %n, align 8, !dbg !46, !tbaa !47
  call void @llvm.dbg.value(metadata i64 %1, metadata !40, metadata !DIExpression()), !dbg !44
  %conv = trunc i64 %1 to i32, !dbg !46
  %call = call i32 @example(i32 %conv), !dbg !51
  call void @llvm.dbg.value(metadata i32 %call, metadata !42, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !52
  ret i32 %call, !dbg !53
}

declare !dbg !54 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nofree noinline norecurse nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 2, type: !13)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 4, type: !20)
!19 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 3)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 0, scope: !10)
!22 = !DILocation(line: 2, column: 13, scope: !10)
!23 = !DILocation(line: 0, scope: !19)
!24 = !DILocation(line: 4, column: 30, scope: !25)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 3)
!26 = !DILocation(line: 4, column: 3, scope: !19)
!27 = !DILocation(line: 5, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 4, column: 40)
!29 = !DILocation(line: 7, column: 3, scope: !10)
!30 = !DILocation(line: 4, column: 36, scope: !25)
!31 = distinct !{!31, !26, !32, !33, !34}
!32 = !DILocation(line: 6, column: 3, scope: !19)
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !DISubprogram(name: "main", scope: !36, file: !36, line: 3, type: !37, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!36 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded")
!37 = !DISubroutineType(types: !38)
!38 = !{!13}
!39 = !{!40, !42}
!40 = !DILocalVariable(name: "n", scope: !35, file: !36, line: 4, type: !41)
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DILocalVariable(name: "result", scope: !35, file: !36, line: 6, type: !41)
!43 = !DILocation(line: 4, column: 3, scope: !35)
!44 = !DILocation(line: 0, scope: !35)
!45 = !DILocation(line: 5, column: 3, scope: !35)
!46 = !DILocation(line: 6, column: 34, scope: !35)
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 6, column: 26, scope: !35)
!52 = !DILocation(line: 8, column: 1, scope: !35)
!53 = !DILocation(line: 7, column: 3, scope: !35)
!54 = !DISubprogram(name: "klee_make_symbolic", scope: !55, file: !55, line: 37, type: !56, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!55 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !41, !59}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
