; ModuleID = '../callee.cpp'
source_filename = "../callee.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z9nonmemberi(i32 noundef %n) local_unnamed_addr #0 !dbg !8 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %n, metadata !13, metadata !DIExpression()), !dbg !14
  %add = shl nsw i32 %n, 1, !dbg !15
  ret i32 %add, !dbg !16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN1S6memberEi(ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %this, i32 noundef %n) local_unnamed_addr #1 align 2 !dbg !17 {
entry:
  tail call void @llvm.dbg.value(metadata ptr %this, metadata !26, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata i32 %n, metadata !28, metadata !DIExpression()), !dbg !30
  %0 = load i32, ptr %this, align 4, !dbg !31, !tbaa !32
  %add = add nsw i32 %0, %n, !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %add, metadata !29, metadata !DIExpression()), !dbg !30
  %call = tail call noundef i32 @_Z9nonmemberi(i32 noundef %add), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 %call, metadata !29, metadata !DIExpression()), !dbg !30
  ret i32 %call, !dbg !39
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../callee.cpp", directory: "/home/jryans/Projects/Debug Info/Issues/LLVM/declared-member-call-site/O1", checksumkind: CSK_MD5, checksum: "12b563c057dfdfe7f0a7c1c9874f3213")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)"}
!8 = distinct !DISubprogram(name: "nonmember", linkageName: "_Z9nonmemberi", scope: !1, file: !1, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "n", arg: 1, scope: !8, file: !1, line: 1, type: !11)
!14 = !DILocation(line: 0, scope: !8)
!15 = !DILocation(line: 1, column: 33, scope: !8)
!16 = !DILocation(line: 1, column: 24, scope: !8)
!17 = distinct !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !18, file: !1, line: 8, type: !22, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !21, retainedNodes: !25)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 3, size: 32, flags: DIFlagTypePassByValue, elements: !19, identifier: "_ZTS1S")
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !18, file: !1, line: 4, baseType: !11, size: 32)
!21 = !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !18, file: !1, line: 5, type: !22, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !24, !11}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!25 = !{!26, !28, !29}
!26 = !DILocalVariable(name: "this", arg: 1, scope: !17, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!28 = !DILocalVariable(name: "n", arg: 2, scope: !17, file: !1, line: 8, type: !11)
!29 = !DILocalVariable(name: "result", scope: !17, file: !1, line: 9, type: !11)
!30 = !DILocation(line: 0, scope: !17)
!31 = !DILocation(line: 9, column: 20, scope: !17)
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTS1S", !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !DILocation(line: 9, column: 18, scope: !17)
!38 = !DILocation(line: 10, column: 12, scope: !17)
!39 = !DILocation(line: 11, column: 3, scope: !17)
