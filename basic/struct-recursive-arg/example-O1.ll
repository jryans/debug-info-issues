; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.S = type { i32, %struct.S* }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  %s = alloca %struct.S, align 8
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !23
  %0 = bitcast %struct.S* %s to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5, !dbg !24
  call void @llvm.dbg.declare(metadata %struct.S* %s, metadata !17, metadata !DIExpression()), !dbg !25
  %id = getelementptr inbounds %struct.S, %struct.S* %s, i64 0, i32 0, !dbg !26
  store i32 %n, i32* %id, align 8, !dbg !26, !tbaa !27
  %next = getelementptr inbounds %struct.S, %struct.S* %s, i64 0, i32 1, !dbg !26
  store %struct.S* null, %struct.S** %next, align 8, !dbg !26, !tbaa !33
  call void @modify(%struct.S* nonnull %s) #5, !dbg !34
  %1 = load %struct.S*, %struct.S** %next, align 8, !dbg !35, !tbaa !33
  %tobool.not = icmp eq %struct.S* %1, null, !dbg !37
  br i1 %tobool.not, label %if.end13, label %land.lhs.true, !dbg !38

land.lhs.true:                                    ; preds = %entry
  %next3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1, !dbg !39
  %2 = load %struct.S*, %struct.S** %next3, align 8, !dbg !39, !tbaa !33
  %tobool4.not = icmp eq %struct.S* %2, null, !dbg !40
  br i1 %tobool4.not, label %if.end, label %if.then, !dbg !41

if.then:                                          ; preds = %land.lhs.true
  %id7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, !dbg !42
  %3 = load i32, i32* %id7, align 8, !dbg !42, !tbaa !27
  br label %cleanup, !dbg !43

if.end:                                           ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.end13, label %if.then10, !dbg !44

if.then10:                                        ; preds = %if.end
  %id12 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, !dbg !45
  %4 = load i32, i32* %id12, align 8, !dbg !45, !tbaa !27
  br label %cleanup, !dbg !47

if.end13:                                         ; preds = %entry, %if.end
  %5 = load i32, i32* %id, align 8, !dbg !48, !tbaa !27
  br label %cleanup, !dbg !49

cleanup:                                          ; preds = %if.end13, %if.then10, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %4, %if.then10 ], [ %5, %if.end13 ], !dbg !23
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5, !dbg !50
  ret i32 %retval.0, !dbg !50
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !51 void @modify(%struct.S*) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/struct-recursive-arg")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 8, type: !12, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 8, type: !14)
!17 = !DILocalVariable(name: "s", scope: !11, file: !8, line: 10, type: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !8, line: 1, size: 128, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !8, line: 2, baseType: !14, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !8, line: 3, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!23 = !DILocation(line: 0, scope: !11)
!24 = !DILocation(line: 10, column: 3, scope: !11)
!25 = !DILocation(line: 10, column: 12, scope: !11)
!26 = !DILocation(line: 10, column: 16, scope: !11)
!27 = !{!28, !29, i64 0}
!28 = !{!"S", !29, i64 0, !32, i64 8}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!"any pointer", !30, i64 0}
!33 = !{!28, !32, i64 8}
!34 = !DILocation(line: 11, column: 3, scope: !11)
!35 = !DILocation(line: 12, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !11, file: !8, line: 12, column: 7)
!37 = !DILocation(line: 12, column: 7, scope: !36)
!38 = !DILocation(line: 12, column: 14, scope: !36)
!39 = !DILocation(line: 12, column: 25, scope: !36)
!40 = !DILocation(line: 12, column: 17, scope: !36)
!41 = !DILocation(line: 12, column: 7, scope: !11)
!42 = !DILocation(line: 13, column: 26, scope: !36)
!43 = !DILocation(line: 13, column: 5, scope: !36)
!44 = !DILocation(line: 14, column: 7, scope: !11)
!45 = !DILocation(line: 15, column: 20, scope: !46)
!46 = distinct !DILexicalBlock(scope: !11, file: !8, line: 14, column: 7)
!47 = !DILocation(line: 15, column: 5, scope: !46)
!48 = !DILocation(line: 16, column: 12, scope: !11)
!49 = !DILocation(line: 16, column: 3, scope: !11)
!50 = !DILocation(line: 17, column: 1, scope: !11)
!51 = !DISubprogram(name: "modify", scope: !8, file: !8, line: 6, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !22}
