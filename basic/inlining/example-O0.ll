; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @inc(i32* %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32*, align 8
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32*, i32** %n.addr, align 8, !dbg !18
  %1 = load i32, i32* %0, align 4, !dbg !19
  %inc = add nsw i32 %1, 1, !dbg !19
  store i32 %inc, i32* %0, align 4, !dbg !19
  ret void, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @collatz(i32 %n) #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !25, metadata !DIExpression()), !dbg !26
  %0 = load i32, i32* %n.addr, align 4, !dbg !27
  %rem = urem i32 %0, 2, !dbg !29
  %cmp = icmp eq i32 %rem, 0, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !32
  %div = udiv i32 %1, 2, !dbg !34
  store i32 %div, i32* %retval, align 4, !dbg !35
  br label %return, !dbg !35

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !36
  %mul = mul i32 %2, 3, !dbg !38
  %add = add i32 %mul, 1, !dbg !39
  store i32 %add, i32* %retval, align 4, !dbg !40
  br label %return, !dbg !40

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !41
  ret i32 %3, !dbg !41
}

; Function Attrs: noinline nounwind ssp uwtable
define void @barrier(i32* %n) #0 !dbg !42 {
entry:
  %n.addr = alloca i32*, align 8
  %disguise = alloca i32, align 4
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %disguise, metadata !45, metadata !DIExpression()), !dbg !47
  %0 = load i32*, i32** %n.addr, align 8, !dbg !48
  %1 = load i32, i32* %0, align 4, !dbg !49
  store volatile i32 %1, i32* %disguise, align 4, !dbg !47
  %2 = load volatile i32, i32* %disguise, align 4, !dbg !50
  %3 = load i32*, i32** %n.addr, align 8, !dbg !51
  store i32 %2, i32* %3, align 4, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex101SingleInc(i32 %n) #0 !dbg !54 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %x, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = load i32, i32* %n.addr, align 4, !dbg !61
  store i32 %0, i32* %x, align 4, !dbg !60
  call void @inc(i32* %x), !dbg !62
  %1 = load i32, i32* %x, align 4, !dbg !63
  ret i32 %1, !dbg !64
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex102DoubleInc(i32 %n) #0 !dbg !65 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %x, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i32, i32* %n.addr, align 4, !dbg !70
  store i32 %0, i32* %x, align 4, !dbg !69
  call void @inc(i32* %x), !dbg !71
  call void @inc(i32* %x), !dbg !72
  %1 = load i32, i32* %x, align 4, !dbg !73
  ret i32 %1, !dbg !74
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex103DoubleIncBarrier(i32 %n) #0 !dbg !75 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %x, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load i32, i32* %n.addr, align 4, !dbg !80
  store i32 %0, i32* %x, align 4, !dbg !79
  call void @inc(i32* %x), !dbg !81
  call void @barrier(i32* %x), !dbg !82
  call void @inc(i32* %x), !dbg !83
  %1 = load i32, i32* %x, align 4, !dbg !84
  ret i32 %1, !dbg !85
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex104DoubleCollatz(i32 %n) #0 !dbg !86 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %x, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32, i32* %n.addr, align 4, !dbg !91
  store i32 %0, i32* %x, align 4, !dbg !90
  %1 = load i32, i32* %x, align 4, !dbg !92
  %call = call i32 @collatz(i32 %1), !dbg !93
  store i32 %call, i32* %x, align 4, !dbg !94
  %2 = load i32, i32* %x, align 4, !dbg !95
  %call1 = call i32 @collatz(i32 %2), !dbg !96
  store i32 %call1, i32* %x, align 4, !dbg !97
  %3 = load i32, i32* %x, align 4, !dbg !98
  ret i32 %3, !dbg !99
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex105DoubleIncBarrierInc(i32 %n) #0 !dbg !100 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %x, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32, i32* %n.addr, align 4, !dbg !105
  store i32 %0, i32* %x, align 4, !dbg !104
  call void @inc(i32* %x), !dbg !106
  call void @inc(i32* %x), !dbg !107
  call void @barrier(i32* %x), !dbg !108
  call void @inc(i32* %x), !dbg !109
  %1 = load i32, i32* %x, align 4, !dbg !110
  ret i32 %1, !dbg !111
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !112 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !119, metadata !DIExpression()), !dbg !120
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %n, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !125
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !125
  %call = call i32 @atoi(i8* %1), !dbg !126
  store i32 %call, i32* %n, align 4, !dbg !124
  %2 = load i32, i32* %n, align 4, !dbg !127
  %call1 = call i32 @ex101SingleInc(i32 %2), !dbg !128
  store i32 %call1, i32* %n, align 4, !dbg !129
  %3 = load i32, i32* %n, align 4, !dbg !130
  %call2 = call i32 @ex102DoubleInc(i32 %3), !dbg !131
  store i32 %call2, i32* %n, align 4, !dbg !132
  %4 = load i32, i32* %n, align 4, !dbg !133
  %call3 = call i32 @ex103DoubleIncBarrier(i32 %4), !dbg !134
  store i32 %call3, i32* %n, align 4, !dbg !135
  %5 = load i32, i32* %n, align 4, !dbg !136
  %call4 = call i32 @ex104DoubleCollatz(i32 %5), !dbg !137
  store i32 %call4, i32* %n, align 4, !dbg !138
  %6 = load i32, i32* %n, align 4, !dbg !139
  %call5 = call i32 @ex105DoubleIncBarrierInc(i32 %6), !dbg !140
  store i32 %call5, i32* %n, align 4, !dbg !141
  %7 = load i32, i32* %n, align 4, !dbg !142
  ret i32 %7, !dbg !143
}

declare i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/inlining")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "inc", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 15, scope: !11)
!18 = !DILocation(line: 4, column: 6, scope: !11)
!19 = !DILocation(line: 4, column: 3, scope: !11)
!20 = !DILocation(line: 5, column: 1, scope: !11)
!21 = distinct !DISubprogram(name: "collatz", scope: !8, file: !8, line: 7, type: !22, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !24}
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "n", arg: 1, scope: !21, file: !8, line: 7, type: !24)
!26 = !DILocation(line: 7, column: 35, scope: !21)
!27 = !DILocation(line: 8, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !21, file: !8, line: 8, column: 7)
!29 = !DILocation(line: 8, column: 9, scope: !28)
!30 = !DILocation(line: 8, column: 13, scope: !28)
!31 = !DILocation(line: 8, column: 7, scope: !21)
!32 = !DILocation(line: 9, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !8, line: 8, column: 19)
!34 = !DILocation(line: 9, column: 14, scope: !33)
!35 = !DILocation(line: 9, column: 5, scope: !33)
!36 = !DILocation(line: 11, column: 12, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !8, line: 10, column: 10)
!38 = !DILocation(line: 11, column: 14, scope: !37)
!39 = !DILocation(line: 11, column: 18, scope: !37)
!40 = !DILocation(line: 11, column: 5, scope: !37)
!41 = !DILocation(line: 13, column: 1, scope: !21)
!42 = distinct !DISubprogram(name: "barrier", scope: !8, file: !8, line: 16, type: !12, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!43 = !DILocalVariable(name: "n", arg: 1, scope: !42, file: !8, line: 16, type: !14)
!44 = !DILocation(line: 16, column: 19, scope: !42)
!45 = !DILocalVariable(name: "disguise", scope: !42, file: !8, line: 17, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!47 = !DILocation(line: 17, column: 16, scope: !42)
!48 = !DILocation(line: 17, column: 28, scope: !42)
!49 = !DILocation(line: 17, column: 27, scope: !42)
!50 = !DILocation(line: 18, column: 8, scope: !42)
!51 = !DILocation(line: 18, column: 4, scope: !42)
!52 = !DILocation(line: 18, column: 6, scope: !42)
!53 = !DILocation(line: 19, column: 1, scope: !42)
!54 = distinct !DISubprogram(name: "ex101SingleInc", scope: !8, file: !8, line: 21, type: !55, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!55 = !DISubroutineType(types: !56)
!56 = !{!15, !15}
!57 = !DILocalVariable(name: "n", arg: 1, scope: !54, file: !8, line: 21, type: !15)
!58 = !DILocation(line: 21, column: 24, scope: !54)
!59 = !DILocalVariable(name: "x", scope: !54, file: !8, line: 22, type: !15)
!60 = !DILocation(line: 22, column: 7, scope: !54)
!61 = !DILocation(line: 22, column: 11, scope: !54)
!62 = !DILocation(line: 23, column: 3, scope: !54)
!63 = !DILocation(line: 24, column: 10, scope: !54)
!64 = !DILocation(line: 24, column: 3, scope: !54)
!65 = distinct !DISubprogram(name: "ex102DoubleInc", scope: !8, file: !8, line: 27, type: !55, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!66 = !DILocalVariable(name: "n", arg: 1, scope: !65, file: !8, line: 27, type: !15)
!67 = !DILocation(line: 27, column: 24, scope: !65)
!68 = !DILocalVariable(name: "x", scope: !65, file: !8, line: 28, type: !15)
!69 = !DILocation(line: 28, column: 7, scope: !65)
!70 = !DILocation(line: 28, column: 11, scope: !65)
!71 = !DILocation(line: 29, column: 3, scope: !65)
!72 = !DILocation(line: 30, column: 3, scope: !65)
!73 = !DILocation(line: 31, column: 10, scope: !65)
!74 = !DILocation(line: 31, column: 3, scope: !65)
!75 = distinct !DISubprogram(name: "ex103DoubleIncBarrier", scope: !8, file: !8, line: 34, type: !55, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!76 = !DILocalVariable(name: "n", arg: 1, scope: !75, file: !8, line: 34, type: !15)
!77 = !DILocation(line: 34, column: 31, scope: !75)
!78 = !DILocalVariable(name: "x", scope: !75, file: !8, line: 35, type: !15)
!79 = !DILocation(line: 35, column: 7, scope: !75)
!80 = !DILocation(line: 35, column: 11, scope: !75)
!81 = !DILocation(line: 36, column: 3, scope: !75)
!82 = !DILocation(line: 37, column: 3, scope: !75)
!83 = !DILocation(line: 38, column: 3, scope: !75)
!84 = !DILocation(line: 39, column: 10, scope: !75)
!85 = !DILocation(line: 39, column: 3, scope: !75)
!86 = distinct !DISubprogram(name: "ex104DoubleCollatz", scope: !8, file: !8, line: 42, type: !55, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!87 = !DILocalVariable(name: "n", arg: 1, scope: !86, file: !8, line: 42, type: !15)
!88 = !DILocation(line: 42, column: 28, scope: !86)
!89 = !DILocalVariable(name: "x", scope: !86, file: !8, line: 43, type: !15)
!90 = !DILocation(line: 43, column: 7, scope: !86)
!91 = !DILocation(line: 43, column: 11, scope: !86)
!92 = !DILocation(line: 44, column: 15, scope: !86)
!93 = !DILocation(line: 44, column: 7, scope: !86)
!94 = !DILocation(line: 44, column: 5, scope: !86)
!95 = !DILocation(line: 45, column: 15, scope: !86)
!96 = !DILocation(line: 45, column: 7, scope: !86)
!97 = !DILocation(line: 45, column: 5, scope: !86)
!98 = !DILocation(line: 46, column: 10, scope: !86)
!99 = !DILocation(line: 46, column: 3, scope: !86)
!100 = distinct !DISubprogram(name: "ex105DoubleIncBarrierInc", scope: !8, file: !8, line: 49, type: !55, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!101 = !DILocalVariable(name: "n", arg: 1, scope: !100, file: !8, line: 49, type: !15)
!102 = !DILocation(line: 49, column: 34, scope: !100)
!103 = !DILocalVariable(name: "x", scope: !100, file: !8, line: 50, type: !15)
!104 = !DILocation(line: 50, column: 7, scope: !100)
!105 = !DILocation(line: 50, column: 11, scope: !100)
!106 = !DILocation(line: 51, column: 3, scope: !100)
!107 = !DILocation(line: 52, column: 3, scope: !100)
!108 = !DILocation(line: 53, column: 3, scope: !100)
!109 = !DILocation(line: 54, column: 3, scope: !100)
!110 = !DILocation(line: 55, column: 10, scope: !100)
!111 = !DILocation(line: 55, column: 3, scope: !100)
!112 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 58, type: !113, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!113 = !DISubroutineType(types: !114)
!114 = !{!15, !15, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DILocalVariable(name: "argc", arg: 1, scope: !112, file: !8, line: 58, type: !15)
!120 = !DILocation(line: 58, column: 14, scope: !112)
!121 = !DILocalVariable(name: "argv", arg: 2, scope: !112, file: !8, line: 58, type: !115)
!122 = !DILocation(line: 58, column: 33, scope: !112)
!123 = !DILocalVariable(name: "n", scope: !112, file: !8, line: 59, type: !15)
!124 = !DILocation(line: 59, column: 7, scope: !112)
!125 = !DILocation(line: 59, column: 16, scope: !112)
!126 = !DILocation(line: 59, column: 11, scope: !112)
!127 = !DILocation(line: 60, column: 22, scope: !112)
!128 = !DILocation(line: 60, column: 7, scope: !112)
!129 = !DILocation(line: 60, column: 5, scope: !112)
!130 = !DILocation(line: 61, column: 22, scope: !112)
!131 = !DILocation(line: 61, column: 7, scope: !112)
!132 = !DILocation(line: 61, column: 5, scope: !112)
!133 = !DILocation(line: 62, column: 29, scope: !112)
!134 = !DILocation(line: 62, column: 7, scope: !112)
!135 = !DILocation(line: 62, column: 5, scope: !112)
!136 = !DILocation(line: 63, column: 26, scope: !112)
!137 = !DILocation(line: 63, column: 7, scope: !112)
!138 = !DILocation(line: 63, column: 5, scope: !112)
!139 = !DILocation(line: 64, column: 32, scope: !112)
!140 = !DILocation(line: 64, column: 7, scope: !112)
!141 = !DILocation(line: 64, column: 5, scope: !112)
!142 = !DILocation(line: 65, column: 10, scope: !112)
!143 = !DILocation(line: 65, column: 3, scope: !112)
