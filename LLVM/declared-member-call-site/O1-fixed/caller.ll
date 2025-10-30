; ModuleID = '../caller.cpp'
source_filename = "../caller.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 !dbg !12 {
entry:
  %s = alloca %struct.S, align 4, !DIAssignID !32
    #dbg_assign(i1 poison, !22, !DIExpression(), !32, ptr %s, !DIExpression(), !33)
    #dbg_value(i32 %argc, !20, !DIExpression(), !33)
    #dbg_value(ptr %argv, !21, !DIExpression(), !33)
  call void @llvm.lifetime.start.p0(ptr nonnull %s) #3, !dbg !34
  store i32 0, ptr %s, align 4, !dbg !35, !DIAssignID !36
    #dbg_assign(i32 0, !22, !DIExpression(), !36, ptr %s, !DIExpression(), !33)
  %call = call noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4) %s, i32 noundef %argc), !dbg !37
    #dbg_value(i32 %call, !30, !DIExpression(), !33)
  %call1 = call noundef i32 @_Z9nonmemberi(i32 noundef %argc), !dbg !38
    #dbg_value(i32 %call1, !31, !DIExpression(), !33)
  %add = add nsw i32 %call1, %call, !dbg !39
  call void @llvm.lifetime.end.p0(ptr nonnull %s) #3, !dbg !40
  ret i32 %add, !dbg !41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare !dbg !26 dso_local noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare !dbg !42 dso_local noundef i32 @_Z9nonmemberi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.0.0git (git@github.com:llvm/llvm-project.git 34a34888152388c91dd66c10eefd600b3200e779)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../caller.cpp", directory: "/home/jryans/Projects/Debug Info/Issues/LLVM/declared-member-call-site/O1-fixed", checksumkind: CSK_MD5, checksum: "78528cf120834b61d35d4848f796a377")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !13, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19, keyInstructions: true)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20, !21, !22, !30, !31}
!20 = !DILocalVariable(name: "argc", arg: 1, scope: !12, file: !1, line: 8, type: !15)
!21 = !DILocalVariable(name: "argv", arg: 2, scope: !12, file: !1, line: 8, type: !16)
!22 = !DILocalVariable(name: "s", scope: !12, file: !1, line: 9, type: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 3, size: 32, flags: DIFlagTypePassByValue, elements: !24, identifier: "_ZTS1S")
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !23, file: !1, line: 4, baseType: !15, size: 32)
!26 = !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !23, file: !1, line: 5, type: !27, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!27 = !DISubroutineType(types: !28)
!28 = !{!15, !29, !15}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !DILocalVariable(name: "a", scope: !12, file: !1, line: 10, type: !15)
!31 = !DILocalVariable(name: "b", scope: !12, file: !1, line: 11, type: !15)
!32 = distinct !DIAssignID()
!33 = !DILocation(line: 0, scope: !12)
!34 = !DILocation(line: 9, column: 3, scope: !12)
!35 = !DILocation(line: 9, column: 12, scope: !12, atomGroup: 1, atomRank: 1)
!36 = distinct !DIAssignID()
!37 = !DILocation(line: 10, column: 13, scope: !12, atomGroup: 2, atomRank: 2)
!38 = !DILocation(line: 11, column: 11, scope: !12, atomGroup: 3, atomRank: 2)
!39 = !DILocation(line: 12, column: 12, scope: !12, atomGroup: 5, atomRank: 2)
!40 = !DILocation(line: 13, column: 1, scope: !12)
!41 = !DILocation(line: 12, column: 3, scope: !12, atomGroup: 5, atomRank: 1)
!42 = !DISubprogram(name: "nonmember", linkageName: "_Z9nonmemberi", scope: !1, file: !1, line: 1, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!43 = !DISubroutineType(types: !44)
!44 = !{!15, !15}
