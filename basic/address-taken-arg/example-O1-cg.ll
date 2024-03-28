; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !18
  %0 = bitcast i32* %x to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %x, align 4, !dbg !20, !tbaa !21
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression(DW_OP_deref)), !dbg !18
  call void @modify(i32* nonnull %x) #4, !dbg !25
  %1 = load i32, i32* %x, align 4, !dbg !26, !tbaa !21
  call void @llvm.dbg.value(metadata i32 %1, metadata !17, metadata !DIExpression()), !dbg !18
  %inc = add nsw i32 %1, 1, !dbg !26
  call void @llvm.dbg.value(metadata i32 %inc, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 %inc, i32* %x, align 4, !dbg !26, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !27
  ret i32 %inc, !dbg !28
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare !dbg !29 void @modify(i32*) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example_return(i32 %n) local_unnamed_addr #0 !dbg !33 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !35, metadata !DIExpression()), !dbg !38
  %0 = bitcast i32* %x to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %x, align 4, !dbg !40, !tbaa !21
  call void @llvm.dbg.value(metadata i32* %x, metadata !36, metadata !DIExpression(DW_OP_deref)), !dbg !38
  %call = call i32 @modify_return(i32* nonnull %x) #4, !dbg !41
  call void @llvm.dbg.value(metadata i32 %call, metadata !37, metadata !DIExpression()), !dbg !38
  %1 = load i32, i32* %x, align 4, !dbg !42, !tbaa !21
  call void @llvm.dbg.value(metadata i32 %1, metadata !36, metadata !DIExpression()), !dbg !38
  %inc = add nsw i32 %1, 1, !dbg !42
  call void @llvm.dbg.value(metadata i32 %inc, metadata !36, metadata !DIExpression()), !dbg !38
  store i32 %inc, i32* %x, align 4, !dbg !42, !tbaa !21
  %add = add nsw i32 %inc, %call, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !44
  ret i32 %add, !dbg !45
}

declare !dbg !46 i32 @modify_return(i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/address-taken-arg")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 3, type: !14)
!17 = !DILocalVariable(name: "x", scope: !11, file: !8, line: 4, type: !14)
!18 = !DILocation(line: 0, scope: !11)
!19 = !DILocation(line: 4, column: 3, scope: !11)
!20 = !DILocation(line: 4, column: 7, scope: !11)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 5, column: 3, scope: !11)
!26 = !DILocation(line: 6, column: 4, scope: !11)
!27 = !DILocation(line: 8, column: 1, scope: !11)
!28 = !DILocation(line: 7, column: 3, scope: !11)
!29 = !DISubprogram(name: "modify", scope: !8, file: !8, line: 1, type: !30, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!33 = distinct !DISubprogram(name: "example_return", scope: !8, file: !8, line: 12, type: !12, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !34)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(name: "n", arg: 1, scope: !33, file: !8, line: 12, type: !14)
!36 = !DILocalVariable(name: "x", scope: !33, file: !8, line: 13, type: !14)
!37 = !DILocalVariable(name: "y", scope: !33, file: !8, line: 14, type: !14)
!38 = !DILocation(line: 0, scope: !33)
!39 = !DILocation(line: 13, column: 3, scope: !33)
!40 = !DILocation(line: 13, column: 7, scope: !33)
!41 = !DILocation(line: 14, column: 11, scope: !33)
!42 = !DILocation(line: 15, column: 4, scope: !33)
!43 = !DILocation(line: 16, column: 12, scope: !33)
!44 = !DILocation(line: 17, column: 1, scope: !33)
!45 = !DILocation(line: 16, column: 3, scope: !33)
!46 = !DISubprogram(name: "modify_return", scope: !8, file: !8, line: 10, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!47 = !DISubroutineType(types: !48)
!48 = !{!14, !32}
