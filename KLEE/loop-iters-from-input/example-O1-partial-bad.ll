; $(brew --prefix llvm)/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -O1 -mllvm -opt-bisect-limit=48 -o example-O1-partial-bad.ll

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
  %0 = add i32 %n, -1, !dbg !26
  %1 = mul i32 %0, %add1, !dbg !26
  %2 = sub i32 %add1, 4, !dbg !26
  %3 = add i32 %1, %2, !dbg !26
  br label %for.body, !dbg !26

for.cond.cleanup.loopexit:                        ; preds = %for.body
  %4 = add i32 %3, 4, !dbg !26
  br label %for.cond.cleanup, !dbg !27

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %4, %for.cond.cleanup.loopexit ], !dbg !21
  ret i32 %y.0.lcssa, !dbg !27

for.body:                                         ; preds = %for.body.preheader, %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 undef, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata !DIArgList(i32 %add1, i32 undef), metadata !17, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  br i1 false, label %for.body, label %for.cond.cleanup.loopexit, !dbg !26, !llvm.loop !28
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #3 !dbg !32 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6, !dbg !38
  call void @llvm.dbg.value(metadata i32* %n, metadata !36, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @klee_make_symbolic(i8* nonnull %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !40
  %1 = load i32, i32* %n, align 4, !dbg !41, !tbaa !42
  call void @llvm.dbg.value(metadata i32 %1, metadata !36, metadata !DIExpression()), !dbg !39
  %call = call i32 @example(i32 %1), !dbg !46
  call void @llvm.dbg.value(metadata i32 %call, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6, !dbg !47
  ret i32 %call, !dbg !48
}

declare !dbg !49 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #4

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
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-iters-from-input")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 4, type: !13)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 6, type: !20)
!19 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 3)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 0, scope: !10)
!22 = !DILocation(line: 4, column: 13, scope: !10)
!23 = !DILocation(line: 0, scope: !19)
!24 = !DILocation(line: 6, column: 30, scope: !25)
!25 = distinct !DILexicalBlock(scope: !19, file: !1, line: 6, column: 3)
!26 = !DILocation(line: 6, column: 3, scope: !19)
!27 = !DILocation(line: 9, column: 3, scope: !10)
!28 = distinct !{!28, !26, !29, !30, !31}
!29 = !DILocation(line: 8, column: 3, scope: !19)
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !33, scopeLine: 12, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!13}
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "n", scope: !32, file: !1, line: 13, type: !13)
!37 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 15, type: !13)
!38 = !DILocation(line: 13, column: 3, scope: !32)
!39 = !DILocation(line: 0, scope: !32)
!40 = !DILocation(line: 14, column: 3, scope: !32)
!41 = !DILocation(line: 15, column: 24, scope: !32)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 15, column: 16, scope: !32)
!47 = !DILocation(line: 17, column: 1, scope: !32)
!48 = !DILocation(line: 16, column: 3, scope: !32)
!49 = !DISubprogram(name: "klee_make_symbolic", scope: !50, file: !50, line: 37, type: !51, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!50 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !54, !55}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
