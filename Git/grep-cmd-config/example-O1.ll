; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [13 x i8] c"grep.threads\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid number of threads specified (%d) for %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"submodule.recurse\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @grep_cmd_config(i8* %var, i8* %value, i8* %cb) local_unnamed_addr #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata i8* %var, metadata !26, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i8* %value, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i8* %cb, metadata !28, metadata !DIExpression()), !dbg !30
  %call = call i32 @grep_config(i8* %var, i8* %value, i8* %cb) #5, !dbg !31
  call void @llvm.dbg.value(metadata i32 %call, metadata !29, metadata !DIExpression()), !dbg !30
  %call1 = call i32 @git_color_default_config(i8* %var, i8* %value, i8* null) #5, !dbg !32
  call void @llvm.dbg.value(metadata i32 undef, metadata !29, metadata !DIExpression()), !dbg !30
  %call2 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %var, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %tobool.not = icmp eq i32 %call2, 0, !dbg !34
  br i1 %tobool.not, label %if.then3, label %if.end8, !dbg !36

if.then3:                                         ; preds = %entry
  %call4 = call i32 @git_config_int(i8* %var, i8* %value) #5, !dbg !37
  %cmp5 = icmp slt i32 %call4, 0, !dbg !39
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !41

if.then6:                                         ; preds = %if.then3
  call void (i8*, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %call4, i8* %var) #6, !dbg !42
  unreachable, !dbg !42

if.end8:                                          ; preds = %if.then3, %entry
  %call9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %var, i8* noundef nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !43
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !43
  br i1 %tobool10.not, label %if.then11, label %if.end13, !dbg !45

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @git_config_bool(i8* %var, i8* %value) #5, !dbg !46
  br label %if.end13, !dbg !47

if.end13:                                         ; preds = %if.then11, %if.end8
  %cmp.inv = icmp sgt i32 %call1, -1, !dbg !48
  %spec.select = select i1 %cmp.inv, i32 %call, i32 -1, !dbg !48
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !29, metadata !DIExpression()), !dbg !30
  ret i32 %spec.select, !dbg !49
}

declare !dbg !50 i32 @grep_config(i8*, i8*, i8*) local_unnamed_addr #1

declare !dbg !51 i32 @git_color_default_config(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #2

declare !dbg !52 i32 @git_config_int(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noreturn
declare !dbg !55 void @die(i8*, ...) local_unnamed_addr #3

declare !dbg !58 i32 @git_config_bool(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!18}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, globals: !12, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/grep-cmd-config")
!9 = !{}
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!13, !16}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "recurse_submodules", scope: !7, file: !8, line: 23, type: !15, isLocal: true, isDefinition: true)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "num_threads", scope: !7, file: !8, line: 24, type: !15, isLocal: true, isDefinition: true)
!18 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!19 = distinct !DISubprogram(name: "grep_cmd_config", scope: !8, file: !8, line: 26, type: !20, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !22, !22, !11}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26, !27, !28, !29}
!26 = !DILocalVariable(name: "var", arg: 1, scope: !19, file: !8, line: 26, type: !22)
!27 = !DILocalVariable(name: "value", arg: 2, scope: !19, file: !8, line: 26, type: !22)
!28 = !DILocalVariable(name: "cb", arg: 3, scope: !19, file: !8, line: 26, type: !11)
!29 = !DILocalVariable(name: "st", scope: !19, file: !8, line: 28, type: !15)
!30 = !DILocation(line: 0, scope: !19)
!31 = !DILocation(line: 28, column: 12, scope: !19)
!32 = !DILocation(line: 29, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !19, file: !8, line: 29, column: 7)
!34 = !DILocation(line: 32, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !19, file: !8, line: 32, column: 7)
!36 = !DILocation(line: 32, column: 7, scope: !19)
!37 = !DILocation(line: 33, column: 19, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !8, line: 32, column: 37)
!39 = !DILocation(line: 34, column: 21, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !8, line: 34, column: 9)
!41 = !DILocation(line: 34, column: 9, scope: !38)
!42 = !DILocation(line: 35, column: 7, scope: !40)
!43 = !DILocation(line: 39, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !19, file: !8, line: 39, column: 7)
!45 = !DILocation(line: 39, column: 7, scope: !19)
!46 = !DILocation(line: 40, column: 26, scope: !44)
!47 = !DILocation(line: 40, column: 5, scope: !44)
!48 = !DILocation(line: 29, column: 7, scope: !19)
!49 = !DILocation(line: 42, column: 3, scope: !19)
!50 = !DISubprogram(name: "grep_config", scope: !8, file: !8, line: 19, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!51 = !DISubprogram(name: "git_color_default_config", scope: !8, file: !8, line: 15, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!52 = !DISubprogram(name: "git_config_int", scope: !8, file: !8, line: 10, type: !53, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!53 = !DISubroutineType(types: !54)
!54 = !{!15, !22, !22}
!55 = !DISubprogram(name: "die", scope: !8, file: !8, line: 6, type: !56, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !9)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !22, null}
!58 = !DISubprogram(name: "git_config_bool", scope: !8, file: !8, line: 11, type: !53, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
