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
  %n = alloca i64, align 8
  %0 = bitcast i64* %n to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5, !dbg !31
  call void @llvm.dbg.value(metadata i64* %n, metadata !28, metadata !DIExpression(DW_OP_deref)), !dbg !32
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !33
  %1 = load i64, i64* %n, align 8, !dbg !34, !tbaa !35
  call void @llvm.dbg.value(metadata i64 %1, metadata !28, metadata !DIExpression()), !dbg !32
  %conv = trunc i64 %1 to i32, !dbg !34
  %call = call i32 @example(i32 %conv), !dbg !39
  call void @llvm.dbg.value(metadata i32 %call, metadata !30, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5, !dbg !40
  ret i32 %call, !dbg !41
}

declare !dbg !42 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #3

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
!10 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 2, type: !13)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocation(line: 2, column: 13, scope: !10)
!20 = !DILocation(line: 3, column: 13, scope: !10)
!21 = !DILocation(line: 3, column: 17, scope: !10)
!22 = !DILocation(line: 4, column: 3, scope: !10)
!23 = distinct !DISubprogram(name: "main", scope: !24, file: !24, line: 3, type: !25, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!24 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/single-path")
!25 = !DISubroutineType(types: !26)
!26 = !{!13}
!27 = !{!28, !30}
!28 = !DILocalVariable(name: "n", scope: !23, file: !24, line: 4, type: !29)
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocalVariable(name: "result", scope: !23, file: !24, line: 6, type: !29)
!31 = !DILocation(line: 4, column: 3, scope: !23)
!32 = !DILocation(line: 0, scope: !23)
!33 = !DILocation(line: 5, column: 3, scope: !23)
!34 = !DILocation(line: 6, column: 34, scope: !23)
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 6, column: 26, scope: !23)
!40 = !DILocation(line: 8, column: 1, scope: !23)
!41 = !DILocation(line: 7, column: 3, scope: !23)
!42 = !DISubprogram(name: "klee_make_symbolic", scope: !43, file: !43, line: 37, type: !44, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!43 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !29, !47}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
