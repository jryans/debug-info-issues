; $(brew --prefix llvm)/bin/clang example.c -I ~/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm -O1 -o example-O1.ll

; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !15, metadata !DIExpression()), !dbg !18
  %mul = shl nsw i32 %n, 1, !dbg !19
  call void @llvm.dbg.value(metadata i32 %mul, metadata !16, metadata !DIExpression()), !dbg !18
  %add = add i32 %n, 4, !dbg !20
  %add1 = add i32 %add, %mul, !dbg !21
  call void @llvm.dbg.value(metadata i32 %add1, metadata !17, metadata !DIExpression()), !dbg !18
  ret i32 %add1, !dbg !22
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #2 !dbg !23 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5, !dbg !29
  call void @llvm.dbg.value(metadata i32* %n, metadata !27, metadata !DIExpression(DW_OP_deref)), !dbg !30
  call void @klee_make_symbolic(i8* nonnull %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !31
  %1 = load i32, i32* %n, align 4, !dbg !32, !tbaa !33
  call void @llvm.dbg.value(metadata i32 %1, metadata !27, metadata !DIExpression()), !dbg !30
  %call = call i32 @example(i32 %1), !dbg !37
  call void @llvm.dbg.value(metadata i32 %call, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5, !dbg !38
  ret i32 %call, !dbg !39
}

declare !dbg !40 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/single-path")
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
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 4, type: !13)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocation(line: 4, column: 13, scope: !10)
!20 = !DILocation(line: 5, column: 13, scope: !10)
!21 = !DILocation(line: 5, column: 17, scope: !10)
!22 = !DILocation(line: 6, column: 3, scope: !10)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !24, scopeLine: 9, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!13}
!26 = !{!27, !28}
!27 = !DILocalVariable(name: "n", scope: !23, file: !1, line: 10, type: !13)
!28 = !DILocalVariable(name: "result", scope: !23, file: !1, line: 12, type: !13)
!29 = !DILocation(line: 10, column: 3, scope: !23)
!30 = !DILocation(line: 0, scope: !23)
!31 = !DILocation(line: 11, column: 3, scope: !23)
!32 = !DILocation(line: 12, column: 24, scope: !23)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 12, column: 16, scope: !23)
!38 = !DILocation(line: 14, column: 1, scope: !23)
!39 = !DILocation(line: 13, column: 3, scope: !23)
!40 = !DISubprogram(name: "klee_make_symbolic", scope: !41, file: !41, line: 37, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!41 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !45, !46}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
