; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 %n, metadata !17, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !22
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !22
  %cmp10.not = icmp eq i32 %n, 0, !dbg !24
  br i1 %cmp10.not, label %for.cond.cleanup, label %for.cond.cleanup.loopexit, !dbg !26

for.cond.cleanup.loopexit:                        ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %n, metadata !17, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !22
  %0 = add i32 %n, -1, !dbg !26
  %add = add i32 %n, 4
  %mul = shl nsw i32 %n, 1, !dbg !27
  call void @llvm.dbg.value(metadata i32 %mul, metadata !17, metadata !DIExpression()), !dbg !22
  %add1 = add i32 %add, %mul
  %1 = mul i32 %0, %add1, !dbg !26
  %2 = mul i32 %n, 3, !dbg !26
  %3 = add i32 %1, %2, !dbg !26
  call void @llvm.dbg.value(metadata i32 undef, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !22
  call void @llvm.dbg.value(metadata i32 undef, metadata !19, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %4 = add i32 %3, 4, !dbg !26
  br label %for.cond.cleanup, !dbg !28

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %4, %for.cond.cleanup.loopexit ], !dbg !22
  ret i32 %y.0.lcssa, !dbg !28
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #2 !dbg !29 {
entry:
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5, !dbg !37
  call void @llvm.dbg.value(metadata i64* %n, metadata !34, metadata !DIExpression(DW_OP_deref)), !dbg !38
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !39
  %1 = load i64, i64* %n, align 8, !dbg !40, !tbaa !41
  call void @llvm.dbg.value(metadata i64 %1, metadata !34, metadata !DIExpression()), !dbg !38
  %conv = trunc i64 %1 to i32, !dbg !40
  %call = call i32 @example(i32 %conv), !dbg !45
  call void @llvm.dbg.value(metadata i32 %call, metadata !36, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5, !dbg !46
  ret i32 %call, !dbg !47
}

declare !dbg !48 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree noinline norecurse nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!17 = !DILocalVariable(name: "x", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 3, type: !14)
!19 = !DILocalVariable(name: "i", scope: !20, file: !8, line: 4, type: !21)
!20 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 3)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 0, scope: !11)
!23 = !DILocation(line: 0, scope: !20)
!24 = !DILocation(line: 4, column: 30, scope: !25)
!25 = distinct !DILexicalBlock(scope: !20, file: !8, line: 4, column: 3)
!26 = !DILocation(line: 4, column: 3, scope: !20)
!27 = !DILocation(line: 2, column: 13, scope: !11)
!28 = !DILocation(line: 7, column: 3, scope: !11)
!29 = distinct !DISubprogram(name: "main", scope: !30, file: !30, line: 5, type: !31, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !33)
!30 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded")
!31 = !DISubroutineType(types: !32)
!32 = !{!14}
!33 = !{!34, !36}
!34 = !DILocalVariable(name: "n", scope: !29, file: !30, line: 6, type: !35)
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocalVariable(name: "result", scope: !29, file: !30, line: 10, type: !35)
!37 = !DILocation(line: 6, column: 3, scope: !29)
!38 = !DILocation(line: 0, scope: !29)
!39 = !DILocation(line: 8, column: 3, scope: !29)
!40 = !DILocation(line: 10, column: 34, scope: !29)
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 10, column: 26, scope: !29)
!46 = !DILocation(line: 12, column: 1, scope: !29)
!47 = !DILocation(line: 11, column: 3, scope: !29)
!48 = !DISubprogram(name: "klee_make_symbolic", scope: !49, file: !49, line: 37, type: !50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!49 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !35, !53}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
