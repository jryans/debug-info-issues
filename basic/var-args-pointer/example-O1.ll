; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @example(i8* nocapture readonly %str) local_unnamed_addr #0 !dbg !11 {
entry:
  %t = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %str, metadata !19, metadata !DIExpression()), !dbg !24
  %0 = bitcast i32* %t to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !25
  call void @llvm.dbg.value(metadata i32* %t, metadata !20, metadata !DIExpression(DW_OP_deref)), !dbg !24
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %t), !dbg !26
  %cmp.not = icmp eq i32 %call, 2, !dbg !28
  br i1 %cmp.not, label %for.cond.preheader, label %cleanup, !dbg !29

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, i32* %t, align 4, !tbaa !30
  call void @llvm.dbg.value(metadata i32 0, metadata !22, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %1, metadata !20, metadata !DIExpression()), !dbg !24
  %cmp17 = icmp sgt i32 %1, 0, !dbg !35
  br i1 %cmp17, label %for.body, label %cleanup, !dbg !37

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.09 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %sum.08 = phi i32 [ %add, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.09, metadata !22, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 %sum.08, metadata !21, metadata !DIExpression()), !dbg !24
  %rem = and i32 %i.09, 3, !dbg !38
  %add = add nuw nsw i32 %rem, %sum.08, !dbg !39
  call void @llvm.dbg.value(metadata i32 %add, metadata !21, metadata !DIExpression()), !dbg !24
  %inc = add nuw nsw i32 %i.09, 1, !dbg !40
  call void @llvm.dbg.value(metadata i32 %inc, metadata !22, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 %1, metadata !20, metadata !DIExpression()), !dbg !24
  %exitcond.not = icmp eq i32 %inc, %1, !dbg !35
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !37, !llvm.loop !41

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %add, %for.body ], !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !45
  ret i32 %retval.0, !dbg !45
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 5]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/var-args-pointer")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 5, type: !12, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22}
!19 = !DILocalVariable(name: "str", arg: 1, scope: !11, file: !8, line: 5, type: !15)
!20 = !DILocalVariable(name: "t", scope: !11, file: !8, line: 6, type: !14)
!21 = !DILocalVariable(name: "sum", scope: !11, file: !8, line: 9, type: !14)
!22 = !DILocalVariable(name: "i", scope: !23, file: !8, line: 10, type: !14)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 10, column: 3)
!24 = !DILocation(line: 0, scope: !11)
!25 = !DILocation(line: 6, column: 3, scope: !11)
!26 = !DILocation(line: 7, column: 6, scope: !27)
!27 = distinct !DILexicalBlock(scope: !11, file: !8, line: 7, column: 6)
!28 = !DILocation(line: 7, column: 28, scope: !27)
!29 = !DILocation(line: 7, column: 6, scope: !11)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 0, scope: !23)
!35 = !DILocation(line: 10, column: 21, scope: !36)
!36 = distinct !DILexicalBlock(scope: !23, file: !8, line: 10, column: 3)
!37 = !DILocation(line: 10, column: 3, scope: !23)
!38 = !DILocation(line: 11, column: 14, scope: !36)
!39 = !DILocation(line: 11, column: 9, scope: !36)
!40 = !DILocation(line: 10, column: 27, scope: !36)
!41 = distinct !{!41, !37, !42, !43, !44}
!42 = !DILocation(line: 11, column: 16, scope: !23)
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !DILocation(line: 13, column: 1, scope: !11)
