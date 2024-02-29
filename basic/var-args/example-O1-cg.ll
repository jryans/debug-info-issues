; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"prefix '%s' must start with 'git-'\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @bug_va(i8* %prefix) local_unnamed_addr #0 !dbg !11 {
entry:
  %prefix.addr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !18, metadata !DIExpression()), !dbg !19
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !20
  call void @llvm.dbg.value(metadata i8** %prefix.addr, metadata !18, metadata !DIExpression(DW_OP_deref)), !dbg !19
  %call = call i32 @skip_prefix(i8* %prefix, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** nonnull %prefix.addr) #4, !dbg !24
  %tobool.not = icmp eq i32 %call, 0, !dbg !24
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %prefix.addr, align 8, !dbg !27, !tbaa !20
  call void @llvm.dbg.value(metadata i8* %0, metadata !18, metadata !DIExpression()), !dbg !19
  call void (i8*, i32, i8*, ...) @BUG_fl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %0) #5, !dbg !27
  unreachable, !dbg !27

if.end:                                           ; preds = %entry
  ret void, !dbg !28
}

declare !dbg !29 i32 @skip_prefix(i8*, i8*, i8**) local_unnamed_addr #1

; Function Attrs: noreturn
declare !dbg !34 void @BUG_fl(i8*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/var-args")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "bug_va", scope: !8, file: !8, line: 9, type: !12, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !17)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DILocalVariable(name: "prefix", arg: 1, scope: !11, file: !8, line: 9, type: !14)
!19 = !DILocation(line: 0, scope: !11)
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 11, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !11, file: !8, line: 11, column: 6)
!26 = !DILocation(line: 11, column: 6, scope: !11)
!27 = !DILocation(line: 12, column: 3, scope: !25)
!28 = !DILocation(line: 13, column: 1, scope: !11)
!29 = !DISubprogram(name: "skip_prefix", scope: !8, file: !8, line: 7, type: !30, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !14, !14, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!34 = !DISubprogram(name: "BUG_fl", scope: !8, file: !8, line: 4, type: !35, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !9)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !14, !32, !14, null}
