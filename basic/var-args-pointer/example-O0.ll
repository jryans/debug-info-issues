; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i8* %str) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %t = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %t, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** %str.addr, align 8, !dbg !22
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %t), !dbg !24
  %cmp = icmp ne i32 %call, 2, !dbg !25
  br i1 %cmp, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !27
  br label %return, !dbg !27

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 0, i32* %sum, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !32
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !34
  %2 = load i32, i32* %t, align 4, !dbg !36
  %cmp1 = icmp slt i32 %1, %2, !dbg !37
  br i1 %cmp1, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !39
  %rem = srem i32 %3, 4, !dbg !40
  %4 = load i32, i32* %sum, align 4, !dbg !41
  %add = add nsw i32 %4, %rem, !dbg !41
  store i32 %add, i32* %sum, align 4, !dbg !41
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !43
  %inc = add nsw i32 %5, 1, !dbg !43
  store i32 %inc, i32* %i, align 4, !dbg !43
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %sum, align 4, !dbg !48
  store i32 %6, i32* %retval, align 4, !dbg !49
  br label %return, !dbg !49

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !50
  ret i32 %7, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sscanf(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 5]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/var-args-pointer")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 5, type: !12, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DILocalVariable(name: "str", arg: 1, scope: !11, file: !8, line: 5, type: !15)
!19 = !DILocation(line: 5, column: 25, scope: !11)
!20 = !DILocalVariable(name: "t", scope: !11, file: !8, line: 6, type: !14)
!21 = !DILocation(line: 6, column: 7, scope: !11)
!22 = !DILocation(line: 7, column: 13, scope: !23)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 7, column: 6)
!24 = !DILocation(line: 7, column: 6, scope: !23)
!25 = !DILocation(line: 7, column: 28, scope: !23)
!26 = !DILocation(line: 7, column: 6, scope: !11)
!27 = !DILocation(line: 8, column: 5, scope: !23)
!28 = !DILocalVariable(name: "sum", scope: !11, file: !8, line: 9, type: !14)
!29 = !DILocation(line: 9, column: 7, scope: !11)
!30 = !DILocalVariable(name: "i", scope: !31, file: !8, line: 10, type: !14)
!31 = distinct !DILexicalBlock(scope: !11, file: !8, line: 10, column: 3)
!32 = !DILocation(line: 10, column: 12, scope: !31)
!33 = !DILocation(line: 10, column: 8, scope: !31)
!34 = !DILocation(line: 10, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !8, line: 10, column: 3)
!36 = !DILocation(line: 10, column: 23, scope: !35)
!37 = !DILocation(line: 10, column: 21, scope: !35)
!38 = !DILocation(line: 10, column: 3, scope: !31)
!39 = !DILocation(line: 11, column: 12, scope: !35)
!40 = !DILocation(line: 11, column: 14, scope: !35)
!41 = !DILocation(line: 11, column: 9, scope: !35)
!42 = !DILocation(line: 11, column: 5, scope: !35)
!43 = !DILocation(line: 10, column: 27, scope: !35)
!44 = !DILocation(line: 10, column: 3, scope: !35)
!45 = distinct !{!45, !38, !46, !47}
!46 = !DILocation(line: 11, column: 16, scope: !31)
!47 = !{!"llvm.loop.mustprogress"}
!48 = !DILocation(line: 12, column: 10, scope: !11)
!49 = !DILocation(line: 12, column: 3, scope: !11)
!50 = !DILocation(line: 13, column: 1, scope: !11)
