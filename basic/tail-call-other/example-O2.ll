; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@tr2tls_us_start_process = internal unnamed_addr global i1 false, align 8, !dbg !0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn
define void @tr2tls_start_process_clock() local_unnamed_addr #0 !dbg !18 {
entry:
  %.b = load i1, i1* @tr2tls_us_start_process, align 8, !dbg !21
  br i1 %.b, label %return, label %if.end, !dbg !23

if.end:                                           ; preds = %entry
  store i1 true, i1* @tr2tls_us_start_process, align 8, !dbg !24
  br label %return, !dbg !25

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn
define void @trace2_initialize_clock() local_unnamed_addr #0 !dbg !26 {
entry:
  tail call void @tr2tls_start_process_clock(), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8** %argv, metadata !39, metadata !DIExpression()), !dbg !40
  tail call void @trace2_initialize_clock(), !dbg !41
  ret i32 0, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "tr2tls_us_start_process", scope: !2, file: !3, line: 3, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/tail-call-other")
!4 = !{}
!5 = !{!6}
!6 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 31, baseType: !9)
!8 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!9 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 0]}
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!18 = distinct !DISubprogram(name: "tr2tls_start_process_clock", scope: !3, file: !3, line: 5, type: !19, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !DILocation(line: 6, column: 6, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !3, line: 6, column: 6)
!23 = !DILocation(line: 6, column: 6, scope: !18)
!24 = !DILocation(line: 8, column: 26, scope: !18)
!25 = !DILocation(line: 9, column: 1, scope: !18)
!26 = distinct !DISubprogram(name: "trace2_initialize_clock", scope: !3, file: !3, line: 11, type: !19, scopeLine: 11, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!27 = !DILocation(line: 12, column: 2, scope: !26)
!28 = !DILocation(line: 13, column: 1, scope: !26)
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 15, type: !30, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !32, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "argc", arg: 1, scope: !29, file: !3, line: 15, type: !32)
!39 = !DILocalVariable(name: "argv", arg: 2, scope: !29, file: !3, line: 15, type: !33)
!40 = !DILocation(line: 0, scope: !29)
!41 = !DILocation(line: 16, column: 3, scope: !29)
!42 = !DILocation(line: 17, column: 1, scope: !29)
