; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @inc(i32* %n) #0 !dbg !9 {
entry:
  %n.addr = alloca i32*, align 8
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32*, i32** %n.addr, align 8, !dbg !16
  %1 = load i32, i32* %0, align 4, !dbg !17
  %inc = add nsw i32 %1, 1, !dbg !17
  store i32 %inc, i32* %0, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @collatz(i32 %n) #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = load i32, i32* %n.addr, align 4, !dbg !25
  %rem = urem i32 %0, 2, !dbg !27
  %cmp = icmp eq i32 %rem, 0, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !29

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !30
  %div = udiv i32 %1, 2, !dbg !32
  store i32 %div, i32* %retval, align 4, !dbg !33
  br label %return, !dbg !33

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !34
  %mul = mul i32 %2, 3, !dbg !36
  %add = add i32 %mul, 1, !dbg !37
  store i32 %add, i32* %retval, align 4, !dbg !38
  br label %return, !dbg !38

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !39
  ret i32 %3, !dbg !39
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @barrier(i32* %n) #0 !dbg !40 {
entry:
  %n.addr = alloca i32*, align 8
  %disguise = alloca i32, align 4
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %disguise, metadata !43, metadata !DIExpression()), !dbg !45
  %0 = load i32*, i32** %n.addr, align 8, !dbg !46
  %1 = load i32, i32* %0, align 4, !dbg !47
  store volatile i32 %1, i32* %disguise, align 4, !dbg !45
  %2 = load volatile i32, i32* %disguise, align 4, !dbg !48
  %3 = load i32*, i32** %n.addr, align 8, !dbg !49
  store i32 %2, i32* %3, align 4, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ex101SingleInc(i32 %n) #0 !dbg !52 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %x, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32, i32* %n.addr, align 4, !dbg !59
  store i32 %0, i32* %x, align 4, !dbg !58
  call void @inc(i32* %x), !dbg !60
  %1 = load i32, i32* %x, align 4, !dbg !61
  ret i32 %1, !dbg !62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ex102DoubleInc(i32 %n) #0 !dbg !63 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %x, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i32, i32* %n.addr, align 4, !dbg !68
  store i32 %0, i32* %x, align 4, !dbg !67
  call void @inc(i32* %x), !dbg !69
  call void @inc(i32* %x), !dbg !70
  %1 = load i32, i32* %x, align 4, !dbg !71
  ret i32 %1, !dbg !72
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ex103DoubleIncBarrier(i32 %n) #0 !dbg !73 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %x, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i32, i32* %n.addr, align 4, !dbg !78
  store i32 %0, i32* %x, align 4, !dbg !77
  call void @inc(i32* %x), !dbg !79
  call void @barrier(i32* %x), !dbg !80
  call void @inc(i32* %x), !dbg !81
  %1 = load i32, i32* %x, align 4, !dbg !82
  ret i32 %1, !dbg !83
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ex104DoubleCollatz(i32 %n) #0 !dbg !84 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %x, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = load i32, i32* %n.addr, align 4, !dbg !89
  store i32 %0, i32* %x, align 4, !dbg !88
  %1 = load i32, i32* %x, align 4, !dbg !90
  %call = call i32 @collatz(i32 %1), !dbg !91
  store i32 %call, i32* %x, align 4, !dbg !92
  %2 = load i32, i32* %x, align 4, !dbg !93
  %call1 = call i32 @collatz(i32 %2), !dbg !94
  store i32 %call1, i32* %x, align 4, !dbg !95
  %3 = load i32, i32* %x, align 4, !dbg !96
  ret i32 %3, !dbg !97
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ex105DoubleIncBarrierInc(i32 %n) #0 !dbg !98 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %x, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load i32, i32* %n.addr, align 4, !dbg !103
  store i32 %0, i32* %x, align 4, !dbg !102
  call void @inc(i32* %x), !dbg !104
  call void @inc(i32* %x), !dbg !105
  call void @barrier(i32* %x), !dbg !106
  call void @inc(i32* %x), !dbg !107
  %1 = load i32, i32* %x, align 4, !dbg !108
  ret i32 %1, !dbg !109
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !110 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !117, metadata !DIExpression()), !dbg !118
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %n, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !123
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !123
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !123
  %call = call i32 @atoi(i8* %1) #3, !dbg !124
  store i32 %call, i32* %n, align 4, !dbg !122
  %2 = load i32, i32* %n, align 4, !dbg !125
  %call1 = call i32 @ex101SingleInc(i32 %2), !dbg !126
  store i32 %call1, i32* %n, align 4, !dbg !127
  %3 = load i32, i32* %n, align 4, !dbg !128
  %call2 = call i32 @ex102DoubleInc(i32 %3), !dbg !129
  store i32 %call2, i32* %n, align 4, !dbg !130
  %4 = load i32, i32* %n, align 4, !dbg !131
  %call3 = call i32 @ex103DoubleIncBarrier(i32 %4), !dbg !132
  store i32 %call3, i32* %n, align 4, !dbg !133
  %5 = load i32, i32* %n, align 4, !dbg !134
  %call4 = call i32 @ex104DoubleCollatz(i32 %5), !dbg !135
  store i32 %call4, i32* %n, align 4, !dbg !136
  %6 = load i32, i32* %n, align 4, !dbg !137
  %call5 = call i32 @ex105DoubleIncBarrierInc(i32 %6), !dbg !138
  store i32 %call5, i32* %n, align 4, !dbg !139
  %7 = load i32, i32* %n, align 4, !dbg !140
  ret i32 %7, !dbg !141
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example.c", directory: "/home/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/inlining")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)"}
!9 = distinct !DISubprogram(name: "inc", scope: !1, file: !1, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocalVariable(name: "n", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 15, scope: !9)
!16 = !DILocation(line: 4, column: 6, scope: !9)
!17 = !DILocation(line: 4, column: 3, scope: !9)
!18 = !DILocation(line: 5, column: 1, scope: !9)
!19 = distinct !DISubprogram(name: "collatz", scope: !1, file: !1, line: 7, type: !20, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !22}
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "n", arg: 1, scope: !19, file: !1, line: 7, type: !22)
!24 = !DILocation(line: 7, column: 35, scope: !19)
!25 = !DILocation(line: 8, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 7)
!27 = !DILocation(line: 8, column: 9, scope: !26)
!28 = !DILocation(line: 8, column: 13, scope: !26)
!29 = !DILocation(line: 8, column: 7, scope: !19)
!30 = !DILocation(line: 9, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 8, column: 19)
!32 = !DILocation(line: 9, column: 14, scope: !31)
!33 = !DILocation(line: 9, column: 5, scope: !31)
!34 = !DILocation(line: 11, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 10)
!36 = !DILocation(line: 11, column: 14, scope: !35)
!37 = !DILocation(line: 11, column: 18, scope: !35)
!38 = !DILocation(line: 11, column: 5, scope: !35)
!39 = !DILocation(line: 13, column: 1, scope: !19)
!40 = distinct !DISubprogram(name: "barrier", scope: !1, file: !1, line: 16, type: !10, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DILocalVariable(name: "n", arg: 1, scope: !40, file: !1, line: 16, type: !12)
!42 = !DILocation(line: 16, column: 19, scope: !40)
!43 = !DILocalVariable(name: "disguise", scope: !40, file: !1, line: 17, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!45 = !DILocation(line: 17, column: 16, scope: !40)
!46 = !DILocation(line: 17, column: 28, scope: !40)
!47 = !DILocation(line: 17, column: 27, scope: !40)
!48 = !DILocation(line: 18, column: 8, scope: !40)
!49 = !DILocation(line: 18, column: 4, scope: !40)
!50 = !DILocation(line: 18, column: 6, scope: !40)
!51 = !DILocation(line: 19, column: 1, scope: !40)
!52 = distinct !DISubprogram(name: "ex101SingleInc", scope: !1, file: !1, line: 21, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{!13, !13}
!55 = !DILocalVariable(name: "n", arg: 1, scope: !52, file: !1, line: 21, type: !13)
!56 = !DILocation(line: 21, column: 24, scope: !52)
!57 = !DILocalVariable(name: "x", scope: !52, file: !1, line: 22, type: !13)
!58 = !DILocation(line: 22, column: 7, scope: !52)
!59 = !DILocation(line: 22, column: 11, scope: !52)
!60 = !DILocation(line: 23, column: 3, scope: !52)
!61 = !DILocation(line: 24, column: 10, scope: !52)
!62 = !DILocation(line: 24, column: 3, scope: !52)
!63 = distinct !DISubprogram(name: "ex102DoubleInc", scope: !1, file: !1, line: 27, type: !53, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocalVariable(name: "n", arg: 1, scope: !63, file: !1, line: 27, type: !13)
!65 = !DILocation(line: 27, column: 24, scope: !63)
!66 = !DILocalVariable(name: "x", scope: !63, file: !1, line: 28, type: !13)
!67 = !DILocation(line: 28, column: 7, scope: !63)
!68 = !DILocation(line: 28, column: 11, scope: !63)
!69 = !DILocation(line: 29, column: 3, scope: !63)
!70 = !DILocation(line: 30, column: 3, scope: !63)
!71 = !DILocation(line: 31, column: 10, scope: !63)
!72 = !DILocation(line: 31, column: 3, scope: !63)
!73 = distinct !DISubprogram(name: "ex103DoubleIncBarrier", scope: !1, file: !1, line: 34, type: !53, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocalVariable(name: "n", arg: 1, scope: !73, file: !1, line: 34, type: !13)
!75 = !DILocation(line: 34, column: 31, scope: !73)
!76 = !DILocalVariable(name: "x", scope: !73, file: !1, line: 35, type: !13)
!77 = !DILocation(line: 35, column: 7, scope: !73)
!78 = !DILocation(line: 35, column: 11, scope: !73)
!79 = !DILocation(line: 36, column: 3, scope: !73)
!80 = !DILocation(line: 37, column: 3, scope: !73)
!81 = !DILocation(line: 38, column: 3, scope: !73)
!82 = !DILocation(line: 39, column: 10, scope: !73)
!83 = !DILocation(line: 39, column: 3, scope: !73)
!84 = distinct !DISubprogram(name: "ex104DoubleCollatz", scope: !1, file: !1, line: 42, type: !53, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocalVariable(name: "n", arg: 1, scope: !84, file: !1, line: 42, type: !13)
!86 = !DILocation(line: 42, column: 28, scope: !84)
!87 = !DILocalVariable(name: "x", scope: !84, file: !1, line: 43, type: !13)
!88 = !DILocation(line: 43, column: 7, scope: !84)
!89 = !DILocation(line: 43, column: 11, scope: !84)
!90 = !DILocation(line: 44, column: 15, scope: !84)
!91 = !DILocation(line: 44, column: 7, scope: !84)
!92 = !DILocation(line: 44, column: 5, scope: !84)
!93 = !DILocation(line: 45, column: 15, scope: !84)
!94 = !DILocation(line: 45, column: 7, scope: !84)
!95 = !DILocation(line: 45, column: 5, scope: !84)
!96 = !DILocation(line: 46, column: 10, scope: !84)
!97 = !DILocation(line: 46, column: 3, scope: !84)
!98 = distinct !DISubprogram(name: "ex105DoubleIncBarrierInc", scope: !1, file: !1, line: 49, type: !53, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DILocalVariable(name: "n", arg: 1, scope: !98, file: !1, line: 49, type: !13)
!100 = !DILocation(line: 49, column: 34, scope: !98)
!101 = !DILocalVariable(name: "x", scope: !98, file: !1, line: 50, type: !13)
!102 = !DILocation(line: 50, column: 7, scope: !98)
!103 = !DILocation(line: 50, column: 11, scope: !98)
!104 = !DILocation(line: 51, column: 3, scope: !98)
!105 = !DILocation(line: 52, column: 3, scope: !98)
!106 = !DILocation(line: 53, column: 3, scope: !98)
!107 = !DILocation(line: 54, column: 3, scope: !98)
!108 = !DILocation(line: 55, column: 10, scope: !98)
!109 = !DILocation(line: 55, column: 3, scope: !98)
!110 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !111, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!111 = !DISubroutineType(types: !112)
!112 = !{!13, !13, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!117 = !DILocalVariable(name: "argc", arg: 1, scope: !110, file: !1, line: 58, type: !13)
!118 = !DILocation(line: 58, column: 14, scope: !110)
!119 = !DILocalVariable(name: "argv", arg: 2, scope: !110, file: !1, line: 58, type: !113)
!120 = !DILocation(line: 58, column: 33, scope: !110)
!121 = !DILocalVariable(name: "n", scope: !110, file: !1, line: 59, type: !13)
!122 = !DILocation(line: 59, column: 7, scope: !110)
!123 = !DILocation(line: 59, column: 16, scope: !110)
!124 = !DILocation(line: 59, column: 11, scope: !110)
!125 = !DILocation(line: 60, column: 22, scope: !110)
!126 = !DILocation(line: 60, column: 7, scope: !110)
!127 = !DILocation(line: 60, column: 5, scope: !110)
!128 = !DILocation(line: 61, column: 22, scope: !110)
!129 = !DILocation(line: 61, column: 7, scope: !110)
!130 = !DILocation(line: 61, column: 5, scope: !110)
!131 = !DILocation(line: 62, column: 29, scope: !110)
!132 = !DILocation(line: 62, column: 7, scope: !110)
!133 = !DILocation(line: 62, column: 5, scope: !110)
!134 = !DILocation(line: 63, column: 26, scope: !110)
!135 = !DILocation(line: 63, column: 7, scope: !110)
!136 = !DILocation(line: 63, column: 5, scope: !110)
!137 = !DILocation(line: 64, column: 32, scope: !110)
!138 = !DILocation(line: 64, column: 7, scope: !110)
!139 = !DILocation(line: 64, column: 5, scope: !110)
!140 = !DILocation(line: 65, column: 10, scope: !110)
!141 = !DILocation(line: 65, column: 3, scope: !110)
