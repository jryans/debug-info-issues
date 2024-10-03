; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@tr2tls_us_start_process = internal global i64 0, align 8, !dbg !0

; Function Attrs: noinline nounwind ssp uwtable
define void @tr2tls_start_process_clock() #0 !dbg !17 {
entry:
  %0 = load i64, i64* @tr2tls_us_start_process, align 8, !dbg !20
  %tobool = icmp ne i64 %0, 0, !dbg !20
  br i1 %tobool, label %if.then, label %if.end, !dbg !22

if.then:                                          ; preds = %entry
  br label %return, !dbg !23

if.end:                                           ; preds = %entry
  store i64 1, i64* @tr2tls_us_start_process, align 8, !dbg !24
  br label %return, !dbg !25

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !25
}

; Function Attrs: noinline nounwind ssp uwtable
define void @trace2_initialize_clock() #0 !dbg !26 {
entry:
  call void @tr2tls_start_process_clock(), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !29 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !39, metadata !DIExpression()), !dbg !40
  call void @trace2_initialize_clock(), !dbg !41
  ret i32 0, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tr2tls_us_start_process", scope: !2, file: !3, line: 3, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/tail-call-other")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 31, baseType: !8)
!7 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 0]}
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!17 = distinct !DISubprogram(name: "tr2tls_start_process_clock", scope: !3, file: !3, line: 5, type: !18, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!18 = !DISubroutineType(types: !19)
!19 = !{null}
!20 = !DILocation(line: 6, column: 6, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !3, line: 6, column: 6)
!22 = !DILocation(line: 6, column: 6, scope: !17)
!23 = !DILocation(line: 7, column: 3, scope: !21)
!24 = !DILocation(line: 8, column: 26, scope: !17)
!25 = !DILocation(line: 9, column: 1, scope: !17)
!26 = distinct !DISubprogram(name: "trace2_initialize_clock", scope: !3, file: !3, line: 11, type: !18, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DILocation(line: 12, column: 2, scope: !26)
!28 = !DILocation(line: 13, column: 1, scope: !26)
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 15, type: !30, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !32, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DILocalVariable(name: "argc", arg: 1, scope: !29, file: !3, line: 15, type: !32)
!38 = !DILocation(line: 15, column: 14, scope: !29)
!39 = !DILocalVariable(name: "argv", arg: 2, scope: !29, file: !3, line: 15, type: !33)
!40 = !DILocation(line: 15, column: 33, scope: !29)
!41 = !DILocation(line: 16, column: 3, scope: !29)
!42 = !DILocation(line: 17, column: 1, scope: !29)
