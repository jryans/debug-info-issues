; ModuleID = '../caller.cpp'
source_filename = "../caller.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !8 {
entry:
  %s = alloca %struct.S, align 4, !DIAssignID !28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !18, metadata !DIExpression(), metadata !28, metadata ptr %s, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 %argc, metadata !16, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata ptr %argv, metadata !17, metadata !DIExpression()), !dbg !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #5, !dbg !30
  store i32 0, ptr %s, align 4, !dbg !31, !DIAssignID !32
  call void @llvm.dbg.assign(metadata i32 0, metadata !18, metadata !DIExpression(), metadata !32, metadata ptr %s, metadata !DIExpression()), !dbg !29
  %call = call noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4) %s, i32 noundef %argc), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 %call, metadata !26, metadata !DIExpression()), !dbg !29
  %call1 = call noundef i32 @_Z9nonmemberi(i32 noundef %argc), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 %call1, metadata !27, metadata !DIExpression()), !dbg !29
  %add = add nsw i32 %call1, %call, !dbg !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #5, !dbg !36
  ret i32 %add, !dbg !37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare !dbg !38 dso_local noundef i32 @_Z9nonmemberi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress noinline norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../caller.cpp", directory: "/home/jryans/Projects/Debug Info/Issues/LLVM/declared-member-call-site/O1", checksumkind: CSK_MD5, checksum: "78528cf120834b61d35d4848f796a377")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)"}
!8 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !9, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !17, !18, !26, !27}
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !8, file: !1, line: 8, type: !11)
!17 = !DILocalVariable(name: "argv", arg: 2, scope: !8, file: !1, line: 8, type: !12)
!18 = !DILocalVariable(name: "s", scope: !8, file: !1, line: 9, type: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 3, size: 32, flags: DIFlagTypePassByValue, elements: !20, identifier: "_ZTS1S")
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !19, file: !1, line: 4, baseType: !11, size: 32)
!22 = !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !19, file: !1, line: 5, type: !23, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !25, !11}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!26 = !DILocalVariable(name: "a", scope: !8, file: !1, line: 10, type: !11)
!27 = !DILocalVariable(name: "b", scope: !8, file: !1, line: 11, type: !11)
!28 = distinct !DIAssignID()
!29 = !DILocation(line: 0, scope: !8)
!30 = !DILocation(line: 9, column: 3, scope: !8)
!31 = !DILocation(line: 9, column: 12, scope: !8)
!32 = distinct !DIAssignID()
!33 = !DILocation(line: 10, column: 13, scope: !8)
!34 = !DILocation(line: 11, column: 11, scope: !8)
!35 = !DILocation(line: 12, column: 12, scope: !8)
!36 = !DILocation(line: 13, column: 1, scope: !8)
!37 = !DILocation(line: 12, column: 3, scope: !8)
!38 = !DISubprogram(name: "nonmember", linkageName: "_Z9nonmemberi", scope: !1, file: !1, line: 1, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!39 = !DISubroutineType(types: !40)
!40 = !{!11, !11}
