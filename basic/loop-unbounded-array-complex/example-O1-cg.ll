; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@__const.example.data = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16

; Function Attrs: nofree noinline nosync nounwind readnone ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  %data = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !29
  %0 = bitcast [4 x i32]* %data to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5, !dbg !30
  call void @llvm.dbg.declare(metadata [4 x i32]* %data, metadata !17, metadata !DIExpression()), !dbg !31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([4 x i32]* @__const.example.data to i8*), i64 16, i1 false), !dbg !31
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !32
  %cmp16 = icmp sgt i32 %n, 0, !dbg !33
  br i1 %cmp16, label %for.body.preheader, label %for.cond.cleanup, !dbg !34

for.body.preheader:                               ; preds = %entry
  %1 = sub i32 0, %n, !dbg !34
  br label %for.body, !dbg !34

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %2 = bitcast [4 x i32]* %data to i8*, !dbg !30
  %rem4 = srem i32 %n, 4, !dbg !35
  %idxprom5 = sext i32 %rem4 to i64, !dbg !36
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom5, !dbg !36
  %3 = load i32, i32* %arrayidx6, align 4, !dbg !36, !tbaa !37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !41
  ret i32 %3, !dbg !42

for.body:                                         ; preds = %for.body.preheader, %for.body
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i32 %lsr.iv, metadata !21, metadata !DIExpression(DW_OP_consts, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !32
  %rem = and i32 %lsr.iv, 3, !dbg !43
  call void @llvm.dbg.value(metadata i32 %rem, metadata !23, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata !DIArgList([4 x i32]* %data, i32 undef), metadata !26, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !44
  %idxprom1 = zext i32 %rem to i64, !dbg !45
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, !dbg !45
  call void @llvm.dbg.value(metadata i32* %arrayidx2, metadata !28, metadata !DIExpression()), !dbg !44
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !46, !tbaa !37
  %add3 = add nsw i32 %4, %n, !dbg !46
  store i32 %add3, i32* %arrayidx2, align 4, !dbg !46, !tbaa !37
  call void @llvm.dbg.value(metadata i32 %lsr.iv, metadata !21, metadata !DIExpression(DW_OP_consts, 2, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !32
  %lsr.iv.next = add nuw i32 %lsr.iv, 1, !dbg !33
  %5 = add i32 %1, %lsr.iv.next, !dbg !33
  %exitcond.not = icmp eq i32 %5, 2, !dbg !33
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !34, !llvm.loop !47
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree noinline nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded-array-complex")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !21, !23, !26, !28}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!17 = !DILocalVariable(name: "data", scope: !11, file: !8, line: 2, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DILocalVariable(name: "i", scope: !22, file: !8, line: 3, type: !14)
!22 = distinct !DILexicalBlock(scope: !11, file: !8, line: 3, column: 3)
!23 = !DILocalVariable(name: "i2", scope: !24, file: !8, line: 4, type: !14)
!24 = distinct !DILexicalBlock(scope: !25, file: !8, line: 3, column: 31)
!25 = distinct !DILexicalBlock(scope: !22, file: !8, line: 3, column: 3)
!26 = !DILocalVariable(name: "a", scope: !24, file: !8, line: 5, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!28 = !DILocalVariable(name: "b", scope: !24, file: !8, line: 6, type: !27)
!29 = !DILocation(line: 0, scope: !11)
!30 = !DILocation(line: 2, column: 3, scope: !11)
!31 = !DILocation(line: 2, column: 7, scope: !11)
!32 = !DILocation(line: 0, scope: !22)
!33 = !DILocation(line: 3, column: 21, scope: !25)
!34 = !DILocation(line: 3, column: 3, scope: !22)
!35 = !DILocation(line: 9, column: 17, scope: !11)
!36 = !DILocation(line: 9, column: 10, scope: !11)
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 10, column: 1, scope: !11)
!42 = !DILocation(line: 9, column: 3, scope: !11)
!43 = !DILocation(line: 4, column: 22, scope: !24)
!44 = !DILocation(line: 0, scope: !24)
!45 = !DILocation(line: 6, column: 15, scope: !24)
!46 = !DILocation(line: 7, column: 8, scope: !24)
!47 = distinct !{!47, !34, !48, !49, !50}
!48 = !DILocation(line: 8, column: 3, scope: !22)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
