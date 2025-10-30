; ModuleID = '../callee.cpp'
source_filename = "../callee.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_Z9nonmemberi(i32 noundef %n) local_unnamed_addr #0 !dbg !12 {
entry:
    #dbg_value(i32 %n, !17, !DIExpression(), !18)
  %add = shl nsw i32 %n, 1, !dbg !19
  ret i32 %add, !dbg !20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZN1S6memberEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %this, i32 noundef %n) local_unnamed_addr #1 align 2 !dbg !21 {
entry:
    #dbg_value(ptr %this, !30, !DIExpression(), !34)
    #dbg_value(i32 %n, !32, !DIExpression(), !34)
  %0 = load i32, ptr %this, align 4, !dbg !35, !tbaa !36
  %add = add nsw i32 %0, %n, !dbg !38
    #dbg_value(i32 %add, !33, !DIExpression(), !34)
  %call = tail call noundef i32 @_Z9nonmemberi(i32 noundef %add), !dbg !39
    #dbg_value(i32 %call, !33, !DIExpression(), !34)
  ret i32 %call, !dbg !40
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.0.0git (git@github.com:llvm/llvm-project.git 34a34888152388c91dd66c10eefd600b3200e779)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../callee.cpp", directory: "/home/jryans/Projects/Debug Info/Issues/LLVM/declared-member-call-site/O1-fixed", checksumkind: CSK_MD5, checksum: "12b563c057dfdfe7f0a7c1c9874f3213")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 34a34888152388c91dd66c10eefd600b3200e779)"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !DISubprogram(name: "nonmember", linkageName: "_Z9nonmemberi", scope: !1, file: !1, line: 1, type: !13, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16, keyInstructions: true)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DILocalVariable(name: "n", arg: 1, scope: !12, file: !1, line: 1, type: !15)
!18 = !DILocation(line: 0, scope: !12)
!19 = !DILocation(line: 1, column: 33, scope: !12, atomGroup: 1, atomRank: 2)
!20 = !DILocation(line: 1, column: 24, scope: !12, atomGroup: 1, atomRank: 1)
!21 = distinct !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !22, file: !1, line: 8, type: !26, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !25, retainedNodes: !29, keyInstructions: true)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 3, size: 32, flags: DIFlagTypePassByValue, elements: !23, identifier: "_ZTS1S")
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !22, file: !1, line: 4, baseType: !15, size: 32)
!25 = !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !22, file: !1, line: 5, type: !26, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!26 = !DISubroutineType(types: !27)
!27 = !{!15, !28, !15}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!29 = !{!30, !32, !33}
!30 = !DILocalVariable(name: "this", arg: 1, scope: !21, type: !31, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!32 = !DILocalVariable(name: "n", arg: 2, scope: !21, file: !1, line: 8, type: !15)
!33 = !DILocalVariable(name: "result", scope: !21, file: !1, line: 9, type: !15)
!34 = !DILocation(line: 0, scope: !21)
!35 = !DILocation(line: 9, column: 20, scope: !21)
!36 = !{!37, !9, i64 0}
!37 = !{!"_ZTS1S", !9, i64 0}
!38 = !DILocation(line: 9, column: 18, scope: !21, atomGroup: 1, atomRank: 2)
!39 = !DILocation(line: 10, column: 12, scope: !21, atomGroup: 2, atomRank: 2)
!40 = !DILocation(line: 11, column: 3, scope: !21, atomGroup: 4, atomRank: 1)
