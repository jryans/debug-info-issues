; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cmd_struct = type { i8*, i32 (i32, i8**, i8*)*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"cmd1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cmd2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmd3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cmd4\00", align 1
@commands = global [4 x %struct.cmd_struct] [%struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }], align 16, !dbg !0

; Function Attrs: noinline nounwind ssp uwtable
define %struct.cmd_struct* @get_builtin(i8* %s) #0 !dbg !31 {
entry:
  %retval = alloca %struct.cmd_struct*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.cmd_struct*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !42
  %cmp = icmp slt i32 %0, 4, !dbg !44
  br i1 %cmp, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.cmd_struct** %p, metadata !46, metadata !DIExpression()), !dbg !48
  %1 = load i32, i32* %i, align 4, !dbg !49
  %idx.ext = sext i32 %1 to i64, !dbg !50
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([4 x %struct.cmd_struct], [4 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, !dbg !50
  store %struct.cmd_struct* %add.ptr, %struct.cmd_struct** %p, align 8, !dbg !48
  %2 = load i8*, i8** %s.addr, align 8, !dbg !51
  %3 = load %struct.cmd_struct*, %struct.cmd_struct** %p, align 8, !dbg !53
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %3, i32 0, i32 0, !dbg !54
  %4 = load i8*, i8** %cmd, align 8, !dbg !54
  %call = call i32 @strcmp(i8* %2, i8* %4), !dbg !55
  %tobool = icmp ne i32 %call, 0, !dbg !55
  br i1 %tobool, label %if.end, label %if.then, !dbg !56

if.then:                                          ; preds = %for.body
  %5 = load %struct.cmd_struct*, %struct.cmd_struct** %p, align 8, !dbg !57
  store %struct.cmd_struct* %5, %struct.cmd_struct** %retval, align 8, !dbg !58
  br label %return, !dbg !58

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !60
  %inc = add nsw i32 %6, 1, !dbg !60
  store i32 %inc, i32* %i, align 4, !dbg !60
  br label %for.cond, !dbg !61, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  store %struct.cmd_struct* null, %struct.cmd_struct** %retval, align 8, !dbg !65
  br label %return, !dbg !65

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.cmd_struct*, %struct.cmd_struct** %retval, align 8, !dbg !66
  ret %struct.cmd_struct* %7, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "commands", scope: !2, file: !3, line: 9, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/get-builtin")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 768, elements: !21)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_struct", file: !3, line: 3, size: 192, elements: !8)
!8 = !{!9, !13, !19}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !7, file: !3, line: 4, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !7, file: !3, line: 5, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18, !10}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !7, file: !3, line: 6, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 4)
!23 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!31 = distinct !DISubprogram(name: "get_builtin", scope: !3, file: !3, line: 16, type: !32, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !10}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!35 = !DILocalVariable(name: "s", arg: 1, scope: !31, file: !3, line: 16, type: !10)
!36 = !DILocation(line: 16, column: 44, scope: !31)
!37 = !DILocalVariable(name: "i", scope: !31, file: !3, line: 18, type: !17)
!38 = !DILocation(line: 18, column: 7, scope: !31)
!39 = !DILocation(line: 19, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !3, line: 19, column: 3)
!41 = !DILocation(line: 19, column: 8, scope: !40)
!42 = !DILocation(line: 19, column: 15, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 19, column: 3)
!44 = !DILocation(line: 19, column: 17, scope: !43)
!45 = !DILocation(line: 19, column: 3, scope: !40)
!46 = !DILocalVariable(name: "p", scope: !47, file: !3, line: 20, type: !34)
!47 = distinct !DILexicalBlock(scope: !43, file: !3, line: 19, column: 27)
!48 = !DILocation(line: 20, column: 24, scope: !47)
!49 = !DILocation(line: 20, column: 39, scope: !47)
!50 = !DILocation(line: 20, column: 37, scope: !47)
!51 = !DILocation(line: 21, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !3, line: 21, column: 9)
!53 = !DILocation(line: 21, column: 20, scope: !52)
!54 = !DILocation(line: 21, column: 23, scope: !52)
!55 = !DILocation(line: 21, column: 10, scope: !52)
!56 = !DILocation(line: 21, column: 9, scope: !47)
!57 = !DILocation(line: 22, column: 14, scope: !52)
!58 = !DILocation(line: 22, column: 7, scope: !52)
!59 = !DILocation(line: 23, column: 3, scope: !47)
!60 = !DILocation(line: 19, column: 23, scope: !43)
!61 = !DILocation(line: 19, column: 3, scope: !43)
!62 = distinct !{!62, !45, !63, !64}
!63 = !DILocation(line: 23, column: 3, scope: !40)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 24, column: 3, scope: !31)
!66 = !DILocation(line: 25, column: 1, scope: !31)
