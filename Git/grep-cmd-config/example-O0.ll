; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@.str = private unnamed_addr constant [13 x i8] c"grep.threads\00", align 1
@num_threads = internal global i32 0, align 4, !dbg !0
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid number of threads specified (%d) for %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"submodule.recurse\00", align 1
@recurse_submodules = internal global i32 0, align 4, !dbg !8

; Function Attrs: noinline nounwind ssp uwtable
define i32 @grep_cmd_config(i8* %var, i8* %value, i8* %cb) #0 !dbg !19 {
entry:
  %var.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %cb.addr = alloca i8*, align 8
  %st = alloca i32, align 4
  store i8* %var, i8** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %var.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* %cb, i8** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cb.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %st, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = load i8*, i8** %var.addr, align 8, !dbg !33
  %1 = load i8*, i8** %value.addr, align 8, !dbg !34
  %2 = load i8*, i8** %cb.addr, align 8, !dbg !35
  %call = call i32 @grep_config(i8* %0, i8* %1, i8* %2), !dbg !36
  store i32 %call, i32* %st, align 4, !dbg !32
  %3 = load i8*, i8** %var.addr, align 8, !dbg !37
  %4 = load i8*, i8** %value.addr, align 8, !dbg !39
  %call1 = call i32 @git_color_default_config(i8* %3, i8* %4, i8* null), !dbg !40
  %cmp = icmp slt i32 %call1, 0, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  store i32 -1, i32* %st, align 4, !dbg !43
  br label %if.end, !dbg !44

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %var.addr, align 8, !dbg !45
  %call2 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %tobool = icmp ne i32 %call2, 0, !dbg !47
  br i1 %tobool, label %if.end8, label %if.then3, !dbg !48

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %var.addr, align 8, !dbg !49
  %7 = load i8*, i8** %value.addr, align 8, !dbg !51
  %call4 = call i32 @git_config_int(i8* %6, i8* %7), !dbg !52
  store i32 %call4, i32* @num_threads, align 4, !dbg !53
  %8 = load i32, i32* @num_threads, align 4, !dbg !54
  %cmp5 = icmp slt i32 %8, 0, !dbg !56
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !57

if.then6:                                         ; preds = %if.then3
  %9 = load i32, i32* @num_threads, align 4, !dbg !58
  %10 = load i8*, i8** %var.addr, align 8, !dbg !59
  call void (i8*, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %9, i8* %10) #4, !dbg !60
  unreachable, !dbg !60

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !61

if.end8:                                          ; preds = %if.end7, %if.end
  %11 = load i8*, i8** %var.addr, align 8, !dbg !62
  %call9 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !64
  %tobool10 = icmp ne i32 %call9, 0, !dbg !64
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !65

if.then11:                                        ; preds = %if.end8
  %12 = load i8*, i8** %var.addr, align 8, !dbg !66
  %13 = load i8*, i8** %value.addr, align 8, !dbg !67
  %call12 = call i32 @git_config_bool(i8* %12, i8* %13), !dbg !68
  store i32 %call12, i32* @recurse_submodules, align 4, !dbg !69
  br label %if.end13, !dbg !70

if.end13:                                         ; preds = %if.then11, %if.end8
  %14 = load i32, i32* %st, align 4, !dbg !71
  ret i32 %14, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @grep_config(i8*, i8*, i8*) #2

declare i32 @git_color_default_config(i8*, i8*, i8*) #2

declare i32 @strcmp(i8*, i8*) #2

declare i32 @git_config_int(i8*, i8*) #2

; Function Attrs: noreturn
declare void @die(i8*, ...) #3

declare i32 @git_config_bool(i8*, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "num_threads", scope: !2, file: !3, line: 24, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/grep-cmd-config")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!8, !0}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "recurse_submodules", scope: !2, file: !3, line: 23, type: !10, isLocal: true, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!19 = distinct !DISubprogram(name: "grep_cmd_config", scope: !3, file: !3, line: 26, type: !20, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{!10, !22, !22, !6}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DILocalVariable(name: "var", arg: 1, scope: !19, file: !3, line: 26, type: !22)
!26 = !DILocation(line: 26, column: 33, scope: !19)
!27 = !DILocalVariable(name: "value", arg: 2, scope: !19, file: !3, line: 26, type: !22)
!28 = !DILocation(line: 26, column: 50, scope: !19)
!29 = !DILocalVariable(name: "cb", arg: 3, scope: !19, file: !3, line: 26, type: !6)
!30 = !DILocation(line: 26, column: 63, scope: !19)
!31 = !DILocalVariable(name: "st", scope: !19, file: !3, line: 28, type: !10)
!32 = !DILocation(line: 28, column: 7, scope: !19)
!33 = !DILocation(line: 28, column: 24, scope: !19)
!34 = !DILocation(line: 28, column: 29, scope: !19)
!35 = !DILocation(line: 28, column: 36, scope: !19)
!36 = !DILocation(line: 28, column: 12, scope: !19)
!37 = !DILocation(line: 29, column: 32, scope: !38)
!38 = distinct !DILexicalBlock(scope: !19, file: !3, line: 29, column: 7)
!39 = !DILocation(line: 29, column: 37, scope: !38)
!40 = !DILocation(line: 29, column: 7, scope: !38)
!41 = !DILocation(line: 29, column: 50, scope: !38)
!42 = !DILocation(line: 29, column: 7, scope: !19)
!43 = !DILocation(line: 30, column: 8, scope: !38)
!44 = !DILocation(line: 30, column: 5, scope: !38)
!45 = !DILocation(line: 32, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !19, file: !3, line: 32, column: 7)
!47 = !DILocation(line: 32, column: 8, scope: !46)
!48 = !DILocation(line: 32, column: 7, scope: !19)
!49 = !DILocation(line: 33, column: 34, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 32, column: 37)
!51 = !DILocation(line: 33, column: 39, scope: !50)
!52 = !DILocation(line: 33, column: 19, scope: !50)
!53 = !DILocation(line: 33, column: 17, scope: !50)
!54 = !DILocation(line: 34, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !3, line: 34, column: 9)
!56 = !DILocation(line: 34, column: 21, scope: !55)
!57 = !DILocation(line: 34, column: 9, scope: !50)
!58 = !DILocation(line: 36, column: 11, scope: !55)
!59 = !DILocation(line: 36, column: 24, scope: !55)
!60 = !DILocation(line: 35, column: 7, scope: !55)
!61 = !DILocation(line: 37, column: 3, scope: !50)
!62 = !DILocation(line: 39, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !19, file: !3, line: 39, column: 7)
!64 = !DILocation(line: 39, column: 8, scope: !63)
!65 = !DILocation(line: 39, column: 7, scope: !19)
!66 = !DILocation(line: 40, column: 42, scope: !63)
!67 = !DILocation(line: 40, column: 47, scope: !63)
!68 = !DILocation(line: 40, column: 26, scope: !63)
!69 = !DILocation(line: 40, column: 24, scope: !63)
!70 = !DILocation(line: 40, column: 5, scope: !63)
!71 = !DILocation(line: 42, column: 10, scope: !19)
!72 = !DILocation(line: 42, column: 3, scope: !19)
