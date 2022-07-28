; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@__const.example.data = private unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 3], align 16
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: nofree noinline nosync nounwind readnone ssp uwtable
define i64 @example(i64 %n) local_unnamed_addr #0 !dbg !10 {
entry:
  %data = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata i64 %n, metadata !15, metadata !DIExpression()), !dbg !28
  %0 = bitcast [4 x i64]* %data to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !29
  call void @llvm.dbg.declare(metadata [4 x i64]* %data, metadata !16, metadata !DIExpression()), !dbg !30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__const.example.data to i8*), i64 32, i1 false), !dbg !30
  call void @llvm.dbg.value(metadata i64 0, metadata !20, metadata !DIExpression()), !dbg !31
  %cmp14.not = icmp eq i64 %n, 0, !dbg !32
  br i1 %cmp14.not, label %for.cond.cleanup, label %for.body, !dbg !33

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %rem3 = and i64 %n, 3, !dbg !34
  %arrayidx4 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %rem3, !dbg !35
  %1 = load i64, i64* %arrayidx4, align 8, !dbg !35, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !40
  ret i64 %1, !dbg !41

for.body:                                         ; preds = %entry, %for.body
  %i.015 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.015, metadata !20, metadata !DIExpression()), !dbg !31
  %add = add i64 %i.015, 2, !dbg !42
  %rem = and i64 %add, 3, !dbg !43
  call void @llvm.dbg.value(metadata i64 %rem, metadata !22, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata !DIArgList([4 x i64]* %data, i64 %i.015), metadata !25, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !44
  %arrayidx1 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %rem, !dbg !45
  call void @llvm.dbg.value(metadata i64* %arrayidx1, metadata !27, metadata !DIExpression()), !dbg !44
  %2 = load i64, i64* %arrayidx1, align 8, !dbg !46, !tbaa !36
  %add2 = add i64 %2, %n, !dbg !46
  store i64 %add2, i64* %arrayidx1, align 8, !dbg !46, !tbaa !36
  %inc = add nuw i64 %i.015, 1, !dbg !47
  call void @llvm.dbg.value(metadata i64 %inc, metadata !20, metadata !DIExpression()), !dbg !31
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !32
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !33, !llvm.loop !48
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 !dbg !52 {
entry:
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !60
  call void @llvm.dbg.value(metadata i64* %n, metadata !58, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !62
  %1 = load i64, i64* %n, align 8, !dbg !63, !tbaa !36
  call void @llvm.dbg.value(metadata i64 %1, metadata !58, metadata !DIExpression()), !dbg !61
  %call = call i64 @example(i64 %1), !dbg !64
  call void @llvm.dbg.value(metadata i64 %call, metadata !59, metadata !DIExpression()), !dbg !61
  %conv = trunc i64 %call to i32, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !66
  ret i32 %conv, !dbg !67
}

declare !dbg !68 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nofree noinline nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded-array-complex")
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
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !20, !22, !25, !27}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 2, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 4)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 3, type: !13)
!21 = distinct !DILexicalBlock(scope: !10, file: !1, line: 3, column: 3)
!22 = !DILocalVariable(name: "i2", scope: !23, file: !1, line: 4, type: !13)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 3, column: 41)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 3, column: 3)
!25 = !DILocalVariable(name: "a", scope: !23, file: !1, line: 5, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!27 = !DILocalVariable(name: "b", scope: !23, file: !1, line: 6, type: !26)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 2, column: 3, scope: !10)
!30 = !DILocation(line: 2, column: 17, scope: !10)
!31 = !DILocation(line: 0, scope: !21)
!32 = !DILocation(line: 3, column: 31, scope: !24)
!33 = !DILocation(line: 3, column: 3, scope: !21)
!34 = !DILocation(line: 9, column: 17, scope: !10)
!35 = !DILocation(line: 9, column: 10, scope: !10)
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 10, column: 1, scope: !10)
!41 = !DILocation(line: 9, column: 3, scope: !10)
!42 = !DILocation(line: 4, column: 27, scope: !23)
!43 = !DILocation(line: 4, column: 32, scope: !23)
!44 = !DILocation(line: 0, scope: !23)
!45 = !DILocation(line: 6, column: 25, scope: !23)
!46 = !DILocation(line: 7, column: 8, scope: !23)
!47 = !DILocation(line: 3, column: 37, scope: !24)
!48 = distinct !{!48, !33, !49, !50, !51}
!49 = !DILocation(line: 8, column: 3, scope: !21)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !DISubprogram(name: "main", scope: !53, file: !53, line: 3, type: !54, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!53 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded-array-complex")
!54 = !DISubroutineType(types: !55)
!55 = !{!56}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !{!58, !59}
!58 = !DILocalVariable(name: "n", scope: !52, file: !53, line: 4, type: !13)
!59 = !DILocalVariable(name: "result", scope: !52, file: !53, line: 6, type: !13)
!60 = !DILocation(line: 4, column: 3, scope: !52)
!61 = !DILocation(line: 0, scope: !52)
!62 = !DILocation(line: 5, column: 3, scope: !52)
!63 = !DILocation(line: 6, column: 34, scope: !52)
!64 = !DILocation(line: 6, column: 26, scope: !52)
!65 = !DILocation(line: 7, column: 10, scope: !52)
!66 = !DILocation(line: 8, column: 1, scope: !52)
!67 = !DILocation(line: 7, column: 3, scope: !52)
!68 = !DISubprogram(name: "klee_make_symbolic", scope: !69, file: !69, line: 37, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!69 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !13, !73}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
