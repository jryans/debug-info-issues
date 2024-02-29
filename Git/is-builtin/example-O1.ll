; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cmd_struct = type { i8*, i32 (i32, i8**, i8*)*, i32 }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @is_builtin(i8* %s) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !19, metadata !DIExpression()), !dbg !20
  %call = call %struct.cmd_struct* @get_builtin(i8* %s) #3, !dbg !21
  %tobool = icmp ne %struct.cmd_struct* %call, null, !dbg !22
  %lnot.ext = zext i1 %tobool to i32, !dbg !23
  ret i32 %lnot.ext, !dbg !24
}

declare !dbg !25 %struct.cmd_struct* @get_builtin(i8*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/is-builtin")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "is_builtin", scope: !8, file: !8, line: 9, type: !12, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !8, line: 9, type: !15)
!20 = !DILocation(line: 0, scope: !11)
!21 = !DILocation(line: 11, column: 11, scope: !11)
!22 = !DILocation(line: 11, column: 10, scope: !11)
!23 = !DILocation(line: 11, column: 9, scope: !11)
!24 = !DILocation(line: 11, column: 2, scope: !11)
!25 = !DISubprogram(name: "get_builtin", scope: !8, file: !8, line: 7, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !15}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_struct", file: !8, line: 1, size: 192, elements: !30)
!30 = !{!31, !32, !37}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !29, file: !8, line: 2, baseType: !15, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !29, file: !8, line: 3, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!14, !14, !36, !15}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !29, file: !8, line: 4, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
