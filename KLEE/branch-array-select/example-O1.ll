; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@__const.example.data = private unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 3], align 16
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i64 @example(i64 %n) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [4 x i64]* @__const.example.data, metadata !16, metadata !DIExpression()), !dbg !22
  %cmp = icmp ult i64 %n, 4, !dbg !23
  %add = add i64 %n, 2, !dbg !25
  %rem = and i64 %add, 3, !dbg !25
  %mul = shl i64 %n, 1, !dbg !25
  %rem1 = and i64 %mul, 2, !dbg !25
  %i.0 = select i1 %cmp, i64 %rem, i64 %rem1, !dbg !25
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !20, metadata !DIExpression()), !dbg !21
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* @__const.example.data, i64 0, i64 %i.0, !dbg !26
  %0 = load i64, i64* %arrayidx, align 8, !dbg !26, !tbaa !27
  ret i64 %0, !dbg !31
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
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !39
  call void @llvm.dbg.value(metadata i64* %n, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !40
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !41
  %1 = load i64, i64* %n, align 8, !dbg !42, !tbaa !27
  call void @llvm.dbg.value(metadata i64 %1, metadata !37, metadata !DIExpression()), !dbg !40
  %call = call i64 @example(i64 %1), !dbg !43
  call void @llvm.dbg.value(metadata i64 %call, metadata !38, metadata !DIExpression()), !dbg !40
  %conv = trunc i64 %call to i32, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !45
  ret i32 %conv, !dbg !46
}

declare !dbg !47 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
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
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/branch-array-select")
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
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !20}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 4, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 4)
!20 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 5, type: !13)
!21 = !DILocation(line: 0, scope: !10)
!22 = !DILocation(line: 4, column: 17, scope: !10)
!23 = !DILocation(line: 6, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 7)
!25 = !DILocation(line: 6, column: 7, scope: !10)
!26 = !DILocation(line: 11, column: 10, scope: !10)
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 11, column: 3, scope: !10)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !33, scopeLine: 14, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{!35}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "n", scope: !32, file: !1, line: 15, type: !13)
!38 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 17, type: !13)
!39 = !DILocation(line: 15, column: 3, scope: !32)
!40 = !DILocation(line: 0, scope: !32)
!41 = !DILocation(line: 16, column: 3, scope: !32)
!42 = !DILocation(line: 17, column: 34, scope: !32)
!43 = !DILocation(line: 17, column: 26, scope: !32)
!44 = !DILocation(line: 18, column: 10, scope: !32)
!45 = !DILocation(line: 19, column: 1, scope: !32)
!46 = !DILocation(line: 18, column: 3, scope: !32)
!47 = !DISubprogram(name: "klee_make_symbolic", scope: !48, file: !48, line: 37, type: !49, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!48 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !13, !52}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
