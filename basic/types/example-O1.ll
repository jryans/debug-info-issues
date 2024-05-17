; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s204 = type { i32, [0 x i32] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex101Int(i32 returned %a) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !18, metadata !DIExpression()), !dbg !19
  ret i32 %a, !dbg !20
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex102Struct(i32 returned %s.coerce) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i32 %s.coerce, metadata !28, metadata !DIExpression()), !dbg !29
  ret i32 %s.coerce, !dbg !30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex105PointerSingleElementValue(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load i32, i32* %a, align 4, !dbg !38, !tbaa !39
  ret i32 %0, !dbg !43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex106PointerSingleElementInstances(i32* readnone %a, i32* readnone %b) local_unnamed_addr #0 !dbg !44 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !48, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32* %b, metadata !49, metadata !DIExpression()), !dbg !50
  %cmp = icmp eq i32* %a, null, !dbg !51
  %cmp1 = icmp eq i32* %b, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1, !dbg !53
  %cmp2.not = icmp eq i32* %a, %b, !dbg !53
  %spec.select = select i1 %cmp2.not, i32 3, i32 2, !dbg !53
  %retval.0 = select i1 %or.cond, i32 1, i32 %spec.select, !dbg !53
  ret i32 %retval.0, !dbg !54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex107PointerMultipleElementValues(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32, i32* %a, align 4, !dbg !59, !tbaa !39
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 1, !dbg !60
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !60, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !61
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 2, !dbg !62
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !62, !tbaa !39
  %add3 = add nsw i32 %add, %2, !dbg !63
  %arrayidx4 = getelementptr inbounds i32, i32* %a, i64 3, !dbg !64
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !64, !tbaa !39
  %add5 = add nsw i32 %add3, %3, !dbg !65
  ret i32 %add5, !dbg !66
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !67 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !74, metadata !DIExpression()), !dbg !75
  %call = call i32 (...) %a() #5, !dbg !76
  ret i32 %call, !dbg !77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex201StructFieldInt(i32 returned %s.coerce) local_unnamed_addr #0 !dbg !78 {
entry:
  call void @llvm.dbg.value(metadata i32 %s.coerce, metadata !85, metadata !DIExpression()), !dbg !86
  ret i32 %s.coerce, !dbg !87
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex202StructFieldStruct(i32 returned %s.coerce) local_unnamed_addr #0 !dbg !88 {
entry:
  call void @llvm.dbg.value(metadata i32 %s.coerce, metadata !98, metadata !DIExpression()), !dbg !99
  ret i32 %s.coerce, !dbg !100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex203StructFieldArrayFixedLength(i64 %s.coerce0, i64 %s.coerce1) local_unnamed_addr #0 !dbg !101 {
entry:
  %s.sroa.0.0.extract.trunc = trunc i64 %s.coerce0 to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.0.0.extract.trunc, metadata !111, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !112
  call void @llvm.dbg.value(metadata i64 %s.coerce0, metadata !111, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !112
  call void @llvm.dbg.value(metadata i64 %s.coerce1, metadata !111, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32)), !dbg !112
  %s.sroa.3.8.extract.shift = lshr i64 %s.coerce1, 32
  %s.sroa.3.8.extract.trunc = trunc i64 %s.sroa.3.8.extract.shift to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.3.8.extract.trunc, metadata !111, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !112
  %add = add nsw i32 %s.sroa.3.8.extract.trunc, %s.sroa.0.0.extract.trunc, !dbg !113
  ret i32 %add, !dbg !114
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* nocapture readonly byval(%struct.s204) align 8 %s) local_unnamed_addr #2 !dbg !115 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !126, metadata !DIExpression()), !dbg !127
  %arrayidx = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 0, !dbg !128
  %0 = load i32, i32* %arrayidx, align 4, !dbg !128, !tbaa !39
  %arrayidx2 = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 3, !dbg !129
  %1 = load i32, i32* %arrayidx2, align 8, !dbg !129, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !130
  ret i32 %add, !dbg !131
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex205StructFieldPointerSingleElementValue(i32* nocapture readonly %s.coerce) local_unnamed_addr #2 !dbg !132 {
entry:
  call void @llvm.dbg.value(metadata i32* %s.coerce, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i32, i32* %s.coerce, align 4, !dbg !141, !tbaa !39
  ret i32 %0, !dbg !142
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex206StructFieldPointerSingleElementInstances(i32* readnone %s.coerce0, i32* readnone %s.coerce1) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32* %s.coerce0, metadata !151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !152
  call void @llvm.dbg.value(metadata i32* %s.coerce1, metadata !151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !152
  %cmp = icmp eq i32* %s.coerce0, null, !dbg !153
  %cmp1 = icmp eq i32* %s.coerce1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1, !dbg !155
  %cmp4.not = icmp eq i32* %s.coerce0, %s.coerce1, !dbg !155
  %spec.select = select i1 %cmp4.not, i32 3, i32 2, !dbg !155
  %retval.0 = select i1 %or.cond, i32 1, i32 %spec.select, !dbg !155
  ret i32 %retval.0, !dbg !156
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex207StructFieldPointerMultipleElementValues(i32* nocapture readonly %s.coerce) local_unnamed_addr #2 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata i32* %s.coerce, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i32, i32* %s.coerce, align 4, !dbg !166, !tbaa !39
  %arrayidx2 = getelementptr inbounds i32, i32* %s.coerce, i64 1, !dbg !167
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !167, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !168
  %arrayidx4 = getelementptr inbounds i32, i32* %s.coerce, i64 2, !dbg !169
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !169, !tbaa !39
  %add5 = add nsw i32 %add, %2, !dbg !170
  %arrayidx7 = getelementptr inbounds i32, i32* %s.coerce, i64 3, !dbg !171
  %3 = load i32, i32* %arrayidx7, align 4, !dbg !171, !tbaa !39
  %add8 = add nsw i32 %add5, %3, !dbg !172
  ret i32 %add8, !dbg !173
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(i32 (...)* nocapture %s.coerce) local_unnamed_addr #3 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %s.coerce, metadata !181, metadata !DIExpression()), !dbg !182
  %call = call i32 (...) %s.coerce() #5, !dbg !183
  ret i32 %call, !dbg !184
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types")
!9 = !{}
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "ex101Int", scope: !8, file: !8, line: 7, type: !14, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18}
!18 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !8, line: 7, type: !16)
!19 = !DILocation(line: 0, scope: !13)
!20 = !DILocation(line: 8, column: 3, scope: !13)
!21 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 14, type: !22, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !27)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !24, file: !8, line: 12, baseType: !16, size: 32)
!27 = !{!28}
!28 = !DILocalVariable(name: "s", arg: 1, scope: !21, file: !8, line: 14, type: !24)
!29 = !DILocation(line: 0, scope: !21)
!30 = !DILocation(line: 15, column: 3, scope: !21)
!31 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 20, type: !32, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{!16, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !{!36}
!36 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !8, line: 20, type: !34)
!37 = !DILocation(line: 0, scope: !31)
!38 = !DILocation(line: 21, column: 10, scope: !31)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 21, column: 3, scope: !31)
!44 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 24, type: !45, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!16, !34, !34}
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "a", arg: 1, scope: !44, file: !8, line: 24, type: !34)
!49 = !DILocalVariable(name: "b", arg: 2, scope: !44, file: !8, line: 24, type: !34)
!50 = !DILocation(line: 0, scope: !44)
!51 = !DILocation(line: 25, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !8, line: 25, column: 7)
!53 = !DILocation(line: 25, column: 17, scope: !52)
!54 = !DILocation(line: 37, column: 1, scope: !44)
!55 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 39, type: !32, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !56)
!56 = !{!57}
!57 = !DILocalVariable(name: "a", arg: 1, scope: !55, file: !8, line: 39, type: !34)
!58 = !DILocation(line: 0, scope: !55)
!59 = !DILocation(line: 41, column: 10, scope: !55)
!60 = !DILocation(line: 41, column: 17, scope: !55)
!61 = !DILocation(line: 41, column: 15, scope: !55)
!62 = !DILocation(line: 41, column: 24, scope: !55)
!63 = !DILocation(line: 41, column: 22, scope: !55)
!64 = !DILocation(line: 41, column: 31, scope: !55)
!65 = !DILocation(line: 41, column: 29, scope: !55)
!66 = !DILocation(line: 41, column: 3, scope: !55)
!67 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 44, type: !68, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !73)
!68 = !DISubroutineType(types: !69)
!69 = !{!16, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!16, null}
!73 = !{!74}
!74 = !DILocalVariable(name: "a", arg: 1, scope: !67, file: !8, line: 44, type: !70)
!75 = !DILocation(line: 0, scope: !67)
!76 = !DILocation(line: 45, column: 10, scope: !67)
!77 = !DILocation(line: 45, column: 3, scope: !67)
!78 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !79, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !84)
!79 = !DISubroutineType(types: !80)
!80 = !{!16, !81}
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 50, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !81, file: !8, line: 51, baseType: !16, size: 32)
!84 = !{!85}
!85 = !DILocalVariable(name: "s", arg: 1, scope: !78, file: !8, line: 53, type: !81)
!86 = !DILocation(line: 0, scope: !78)
!87 = !DILocation(line: 54, column: 3, scope: !78)
!88 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 62, type: !89, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !97)
!89 = !DISubroutineType(types: !90)
!90 = !{!16, !91}
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !91, file: !8, line: 60, baseType: !94, size: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inner", file: !8, line: 58, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !94, file: !8, line: 59, baseType: !16, size: 32)
!97 = !{!98}
!98 = !DILocalVariable(name: "s", arg: 1, scope: !88, file: !8, line: 62, type: !91)
!99 = !DILocation(line: 0, scope: !88)
!100 = !DILocation(line: 63, column: 3, scope: !88)
!101 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 69, type: !102, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !110)
!102 = !DISubroutineType(types: !103)
!103 = !{!16, !104}
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 66, size: 128, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !8, line: 67, baseType: !107, size: 128)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !{!111}
!111 = !DILocalVariable(name: "s", arg: 1, scope: !101, file: !8, line: 69, type: !104)
!112 = !DILocation(line: 0, scope: !101)
!113 = !DILocation(line: 70, column: 17, scope: !101)
!114 = !DILocation(line: 70, column: 3, scope: !101)
!115 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 77, type: !116, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !125)
!116 = !DISubroutineType(types: !117)
!117 = !{!16, !118}
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 73, size: 32, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !118, file: !8, line: 74, baseType: !16, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !118, file: !8, line: 75, baseType: !122, offset: 32)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: -1)
!125 = !{!126}
!126 = !DILocalVariable(name: "s", arg: 1, scope: !115, file: !8, line: 77, type: !118)
!127 = !DILocation(line: 77, column: 53, scope: !115)
!128 = !DILocation(line: 78, column: 10, scope: !115)
!129 = !DILocation(line: 78, column: 19, scope: !115)
!130 = !DILocation(line: 78, column: 17, scope: !115)
!131 = !DILocation(line: 78, column: 3, scope: !115)
!132 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 84, type: !133, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !138)
!133 = !DISubroutineType(types: !134)
!134 = !{!16, !135}
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 81, size: 64, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !135, file: !8, line: 82, baseType: !34, size: 64)
!138 = !{!139}
!139 = !DILocalVariable(name: "s", arg: 1, scope: !132, file: !8, line: 84, type: !135)
!140 = !DILocation(line: 0, scope: !132)
!141 = !DILocation(line: 85, column: 10, scope: !132)
!142 = !DILocation(line: 85, column: 3, scope: !132)
!143 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 92, type: !144, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !150)
!144 = !DISubroutineType(types: !145)
!145 = !{!16, !146}
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 88, size: 128, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !146, file: !8, line: 89, baseType: !34, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !146, file: !8, line: 90, baseType: !34, size: 64, offset: 64)
!150 = !{!151}
!151 = !DILocalVariable(name: "s", arg: 1, scope: !143, file: !8, line: 92, type: !146)
!152 = !DILocation(line: 0, scope: !143)
!153 = !DILocation(line: 93, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !143, file: !8, line: 93, column: 7)
!155 = !DILocation(line: 93, column: 19, scope: !154)
!156 = !DILocation(line: 105, column: 1, scope: !143)
!157 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 110, type: !158, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !163)
!158 = !DISubroutineType(types: !159)
!159 = !{!16, !160}
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 107, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !160, file: !8, line: 108, baseType: !34, size: 64)
!163 = !{!164}
!164 = !DILocalVariable(name: "s", arg: 1, scope: !157, file: !8, line: 110, type: !160)
!165 = !DILocation(line: 0, scope: !157)
!166 = !DILocation(line: 112, column: 10, scope: !157)
!167 = !DILocation(line: 112, column: 19, scope: !157)
!168 = !DILocation(line: 112, column: 17, scope: !157)
!169 = !DILocation(line: 112, column: 28, scope: !157)
!170 = !DILocation(line: 112, column: 26, scope: !157)
!171 = !DILocation(line: 112, column: 37, scope: !157)
!172 = !DILocation(line: 112, column: 35, scope: !157)
!173 = !DILocation(line: 112, column: 3, scope: !157)
!174 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 118, type: !175, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !180)
!175 = !DISubroutineType(types: !176)
!176 = !{!16, !177}
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 115, size: 64, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !177, file: !8, line: 116, baseType: !70, size: 64)
!180 = !{!181}
!181 = !DILocalVariable(name: "s", arg: 1, scope: !174, file: !8, line: 118, type: !177)
!182 = !DILocation(line: 0, scope: !174)
!183 = !DILocation(line: 119, column: 10, scope: !174)
!184 = !DILocation(line: 119, column: 3, scope: !174)
