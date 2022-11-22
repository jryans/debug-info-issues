; ModuleID = 'func.c'
source_filename = "func.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@var_15 = global i8 -17, align 1, !dbg !0
@var_16 = global i64 -1884285130649526590, align 8, !dbg !13
@var_17 = global i8 49, align 1, !dbg !15

; Function Attrs: noinline nounwind ssp uwtable
define void @test(i8 signext %var_0, i8 signext %var_4, i1 zeroext %var_8, i8 zeroext %var_9, i16 zeroext %var_10, i16 zeroext %var_11, i8 signext %var_12, i8 signext %var_14) #0 !dbg !24 {
entry:
  %var_0.addr = alloca i8, align 1
  %var_4.addr = alloca i8, align 1
  %var_8.addr = alloca i8, align 1
  %var_9.addr = alloca i8, align 1
  %var_10.addr = alloca i16, align 2
  %var_11.addr = alloca i16, align 2
  %var_12.addr = alloca i8, align 1
  %var_14.addr = alloca i8, align 1
  %_a = alloca i16, align 2
  %_b = alloca i16, align 2
  %tmp = alloca i32, align 4
  %_a11 = alloca i8, align 1
  %_b17 = alloca i8, align 1
  %tmp18 = alloca i32, align 4
  %_a33 = alloca i16, align 2
  %_b34 = alloca i16, align 2
  %tmp37 = alloca i32, align 4
  %_a48 = alloca i8, align 1
  %_b49 = alloca i8, align 1
  %tmp50 = alloca i32, align 4
  %_a68 = alloca i16, align 2
  %_b69 = alloca i16, align 2
  %tmp70 = alloca i32, align 4
  store i8 %var_0, i8* %var_0.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %var_0.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i8 %var_4, i8* %var_4.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %var_4.addr, metadata !29, metadata !DIExpression()), !dbg !30
  %frombool = zext i1 %var_8 to i8
  store i8 %frombool, i8* %var_8.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %var_8.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i8 %var_9, i8* %var_9.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %var_9.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i16 %var_10, i16* %var_10.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %var_10.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i16 %var_11, i16* %var_11.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %var_11.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i8 %var_12, i8* %var_12.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %var_12.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i8 %var_14, i8* %var_14.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %var_14.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i16* %_a, metadata !43, metadata !DIExpression()), !dbg !45
  %0 = load i8, i8* %var_14.addr, align 1, !dbg !45
  %conv = sext i8 %0 to i16, !dbg !45
  store i16 %conv, i16* %_a, align 2, !dbg !45
  call void @llvm.dbg.declare(metadata i16* %_b, metadata !46, metadata !DIExpression()), !dbg !45
  %1 = load i16, i16* %var_11.addr, align 2, !dbg !45
  store i16 %1, i16* %_b, align 2, !dbg !45
  %2 = load i16, i16* %_a, align 2, !dbg !45
  %conv1 = zext i16 %2 to i32, !dbg !45
  %3 = load i16, i16* %_b, align 2, !dbg !45
  %conv2 = zext i16 %3 to i32, !dbg !45
  %cmp = icmp sgt i32 %conv1, %conv2, !dbg !45
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !45

cond.true:                                        ; preds = %entry
  %4 = load i16, i16* %_a, align 2, !dbg !45
  %conv4 = zext i16 %4 to i32, !dbg !45
  br label %cond.end, !dbg !45

cond.false:                                       ; preds = %entry
  %5 = load i16, i16* %_b, align 2, !dbg !45
  %conv5 = zext i16 %5 to i32, !dbg !45
  br label %cond.end, !dbg !45

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ %conv5, %cond.false ], !dbg !45
  store i32 %cond, i32* %tmp, align 4, !dbg !45
  %6 = load i32, i32* %tmp, align 4, !dbg !45
  %tobool = icmp ne i32 %6, 0, !dbg !47
  br i1 %tobool, label %cond.true7, label %cond.false10, !dbg !48

cond.true7:                                       ; preds = %cond.end
  %7 = load i8, i8* %var_12.addr, align 1, !dbg !49
  %conv8 = sext i8 %7 to i32, !dbg !50
  %and = and i32 %conv8, 96, !dbg !51
  %8 = load i8, i8* %var_12.addr, align 1, !dbg !52
  %conv9 = sext i8 %8 to i32, !dbg !53
  %sub = sub nsw i32 %conv9, 83, !dbg !54
  %shl = shl i32 %and, %sub, !dbg !55
  br label %cond.end29, !dbg !48

cond.false10:                                     ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i8* %_a11, metadata !56, metadata !DIExpression()), !dbg !58
  %9 = load i8, i8* %var_9.addr, align 1, !dbg !58
  %tobool12 = icmp ne i8 %9, 0, !dbg !58
  br i1 %tobool12, label %lor.end, label %lor.rhs, !dbg !58

lor.rhs:                                          ; preds = %cond.false10
  %10 = load i8, i8* %var_4.addr, align 1, !dbg !58
  %tobool14 = icmp ne i8 %10, 0, !dbg !58
  br label %lor.end, !dbg !58

lor.end:                                          ; preds = %lor.rhs, %cond.false10
  %11 = phi i1 [ true, %cond.false10 ], [ %tobool14, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32, !dbg !58
  %conv16 = trunc i32 %lor.ext to i8, !dbg !58
  store i8 %conv16, i8* %_a11, align 1, !dbg !58
  call void @llvm.dbg.declare(metadata i8* %_b17, metadata !59, metadata !DIExpression()), !dbg !58
  store i8 43, i8* %_b17, align 1, !dbg !58
  %12 = load i8, i8* %_a11, align 1, !dbg !58
  %conv19 = zext i8 %12 to i32, !dbg !58
  %13 = load i8, i8* %_b17, align 1, !dbg !58
  %conv20 = zext i8 %13 to i32, !dbg !58
  %cmp21 = icmp slt i32 %conv19, %conv20, !dbg !58
  br i1 %cmp21, label %cond.true23, label %cond.false25, !dbg !58

cond.true23:                                      ; preds = %lor.end
  %14 = load i8, i8* %_a11, align 1, !dbg !58
  %conv24 = zext i8 %14 to i32, !dbg !58
  br label %cond.end27, !dbg !58

cond.false25:                                     ; preds = %lor.end
  %15 = load i8, i8* %_b17, align 1, !dbg !58
  %conv26 = zext i8 %15 to i32, !dbg !58
  br label %cond.end27, !dbg !58

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i32 [ %conv24, %cond.true23 ], [ %conv26, %cond.false25 ], !dbg !58
  store i32 %cond28, i32* %tmp18, align 4, !dbg !58
  %16 = load i32, i32* %tmp18, align 4, !dbg !58
  br label %cond.end29, !dbg !48

cond.end29:                                       ; preds = %cond.end27, %cond.true7
  %cond30 = phi i32 [ %shl, %cond.true7 ], [ %16, %cond.end27 ], !dbg !48
  %conv31 = trunc i32 %cond30 to i8, !dbg !60
  store i8 %conv31, i8* @var_15, align 1, !dbg !61
  %17 = load i8, i8* %var_0.addr, align 1, !dbg !62
  %tobool32 = icmp ne i8 %17, 0, !dbg !64
  br i1 %tobool32, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %cond.end29
  call void @llvm.dbg.declare(metadata i16* %_a33, metadata !66, metadata !DIExpression()), !dbg !69
  %18 = load i16, i16* %var_11.addr, align 2, !dbg !69
  store i16 %18, i16* %_a33, align 2, !dbg !69
  call void @llvm.dbg.declare(metadata i16* %_b34, metadata !70, metadata !DIExpression()), !dbg !69
  %19 = load i8, i8* %var_8.addr, align 1, !dbg !69
  %tobool35 = trunc i8 %19 to i1, !dbg !69
  %conv36 = zext i1 %tobool35 to i16, !dbg !69
  store i16 %conv36, i16* %_b34, align 2, !dbg !69
  %20 = load i16, i16* %_a33, align 2, !dbg !69
  %conv38 = zext i16 %20 to i32, !dbg !69
  %21 = load i16, i16* %_b34, align 2, !dbg !69
  %conv39 = zext i16 %21 to i32, !dbg !69
  %cmp40 = icmp slt i32 %conv38, %conv39, !dbg !69
  br i1 %cmp40, label %cond.true42, label %cond.false44, !dbg !69

cond.true42:                                      ; preds = %if.then
  %22 = load i16, i16* %_a33, align 2, !dbg !69
  %conv43 = zext i16 %22 to i32, !dbg !69
  br label %cond.end46, !dbg !69

cond.false44:                                     ; preds = %if.then
  %23 = load i16, i16* %_b34, align 2, !dbg !69
  %conv45 = zext i16 %23 to i32, !dbg !69
  br label %cond.end46, !dbg !69

cond.end46:                                       ; preds = %cond.false44, %cond.true42
  %cond47 = phi i32 [ %conv43, %cond.true42 ], [ %conv45, %cond.false44 ], !dbg !69
  store i32 %cond47, i32* %tmp37, align 4, !dbg !69
  %24 = load i32, i32* %tmp37, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i8* %_a48, metadata !71, metadata !DIExpression()), !dbg !73
  %25 = load i8, i8* %var_14.addr, align 1, !dbg !73
  store i8 %25, i8* %_a48, align 1, !dbg !73
  call void @llvm.dbg.declare(metadata i8* %_b49, metadata !74, metadata !DIExpression()), !dbg !73
  %26 = load i8, i8* %var_14.addr, align 1, !dbg !73
  store i8 %26, i8* %_b49, align 1, !dbg !73
  %27 = load i8, i8* %_a48, align 1, !dbg !73
  %conv51 = sext i8 %27 to i32, !dbg !73
  %28 = load i8, i8* %_b49, align 1, !dbg !73
  %conv52 = sext i8 %28 to i32, !dbg !73
  %cmp53 = icmp slt i32 %conv51, %conv52, !dbg !73
  br i1 %cmp53, label %cond.true55, label %cond.false57, !dbg !73

cond.true55:                                      ; preds = %cond.end46
  %29 = load i8, i8* %_a48, align 1, !dbg !73
  %conv56 = sext i8 %29 to i32, !dbg !73
  br label %cond.end59, !dbg !73

cond.false57:                                     ; preds = %cond.end46
  %30 = load i8, i8* %_b49, align 1, !dbg !73
  %conv58 = sext i8 %30 to i32, !dbg !73
  br label %cond.end59, !dbg !73

cond.end59:                                       ; preds = %cond.false57, %cond.true55
  %cond60 = phi i32 [ %conv56, %cond.true55 ], [ %conv58, %cond.false57 ], !dbg !73
  store i32 %cond60, i32* %tmp50, align 4, !dbg !73
  %31 = load i32, i32* %tmp50, align 4, !dbg !73
  %div = sdiv i32 %24, %31, !dbg !75
  %tobool61 = icmp ne i32 %div, 0, !dbg !76
  br i1 %tobool61, label %cond.true63, label %cond.false83, !dbg !77

cond.true63:                                      ; preds = %cond.end59
  %32 = load i8, i8* %var_14.addr, align 1, !dbg !78
  %tobool64 = icmp ne i8 %32, 0, !dbg !79
  br i1 %tobool64, label %cond.true66, label %cond.false67, !dbg !80

cond.true66:                                      ; preds = %cond.true63
  br label %cond.end81, !dbg !80

cond.false67:                                     ; preds = %cond.true63
  call void @llvm.dbg.declare(metadata i16* %_a68, metadata !81, metadata !DIExpression()), !dbg !83
  store i16 -2412, i16* %_a68, align 2, !dbg !83
  call void @llvm.dbg.declare(metadata i16* %_b69, metadata !84, metadata !DIExpression()), !dbg !83
  %33 = load i16, i16* %var_10.addr, align 2, !dbg !83
  store i16 %33, i16* %_b69, align 2, !dbg !83
  %34 = load i16, i16* %_a68, align 2, !dbg !83
  %conv71 = zext i16 %34 to i32, !dbg !83
  %35 = load i16, i16* %_b69, align 2, !dbg !83
  %conv72 = zext i16 %35 to i32, !dbg !83
  %cmp73 = icmp slt i32 %conv71, %conv72, !dbg !83
  br i1 %cmp73, label %cond.true75, label %cond.false77, !dbg !83

cond.true75:                                      ; preds = %cond.false67
  %36 = load i16, i16* %_a68, align 2, !dbg !83
  %conv76 = zext i16 %36 to i32, !dbg !83
  br label %cond.end79, !dbg !83

cond.false77:                                     ; preds = %cond.false67
  %37 = load i16, i16* %_b69, align 2, !dbg !83
  %conv78 = zext i16 %37 to i32, !dbg !83
  br label %cond.end79, !dbg !83

cond.end79:                                       ; preds = %cond.false77, %cond.true75
  %cond80 = phi i32 [ %conv76, %cond.true75 ], [ %conv78, %cond.false77 ], !dbg !83
  store i32 %cond80, i32* %tmp70, align 4, !dbg !83
  %38 = load i32, i32* %tmp70, align 4, !dbg !83
  br label %cond.end81, !dbg !80

cond.end81:                                       ; preds = %cond.end79, %cond.true66
  %cond82 = phi i32 [ 1, %cond.true66 ], [ %38, %cond.end79 ], !dbg !80
  br label %cond.end86, !dbg !77

cond.false83:                                     ; preds = %cond.end59
  %39 = load i8, i8* %var_0.addr, align 1, !dbg !85
  %conv84 = sext i8 %39 to i32, !dbg !86
  %sub85 = sub nsw i32 %conv84, 24576, !dbg !87
  br label %cond.end86, !dbg !77

cond.end86:                                       ; preds = %cond.false83, %cond.end81
  %cond87 = phi i32 [ %cond82, %cond.end81 ], [ %sub85, %cond.false83 ], !dbg !77
  %conv88 = sext i32 %cond87 to i64, !dbg !88
  store i64 %conv88, i64* @var_16, align 8, !dbg !89
  store i8 0, i8* @var_17, align 1, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %cond.end86, %cond.end29
  ret void, !dbg !92
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var_15", scope: !2, file: !3, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "func.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/YARPGen/moderate-1")
!4 = !{}
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !{!0, !13, !15}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "var_16", scope: !2, file: !3, line: 7, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "var_17", scope: !2, file: !3, line: 8, type: !6, isLocal: false, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Homebrew clang version 13.0.0"}
!24 = distinct !DISubprogram(name: "test", scope: !3, file: !3, line: 21, type: !25, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !10, !10, !7, !6, !9, !9, !10, !10}
!27 = !DILocalVariable(name: "var_0", arg: 1, scope: !24, file: !3, line: 21, type: !10)
!28 = !DILocation(line: 21, column: 23, scope: !24)
!29 = !DILocalVariable(name: "var_4", arg: 2, scope: !24, file: !3, line: 21, type: !10)
!30 = !DILocation(line: 21, column: 42, scope: !24)
!31 = !DILocalVariable(name: "var_8", arg: 3, scope: !24, file: !3, line: 21, type: !7)
!32 = !DILocation(line: 21, column: 55, scope: !24)
!33 = !DILocalVariable(name: "var_9", arg: 4, scope: !24, file: !3, line: 22, type: !6)
!34 = !DILocation(line: 22, column: 25, scope: !24)
!35 = !DILocalVariable(name: "var_10", arg: 5, scope: !24, file: !3, line: 22, type: !9)
!36 = !DILocation(line: 22, column: 47, scope: !24)
!37 = !DILocalVariable(name: "var_11", arg: 6, scope: !24, file: !3, line: 22, type: !9)
!38 = !DILocation(line: 22, column: 70, scope: !24)
!39 = !DILocalVariable(name: "var_12", arg: 7, scope: !24, file: !3, line: 23, type: !10)
!40 = !DILocation(line: 23, column: 23, scope: !24)
!41 = !DILocalVariable(name: "var_14", arg: 8, scope: !24, file: !3, line: 23, type: !10)
!42 = !DILocation(line: 23, column: 43, scope: !24)
!43 = !DILocalVariable(name: "_a", scope: !44, file: !3, line: 26, type: !9)
!44 = distinct !DILexicalBlock(scope: !24, file: !3, line: 26, column: 72)
!45 = !DILocation(line: 26, column: 72, scope: !44)
!46 = !DILocalVariable(name: "_b", scope: !44, file: !3, line: 26, type: !9)
!47 = !DILocation(line: 26, column: 26, scope: !24)
!48 = !DILocation(line: 26, column: 24, scope: !24)
!49 = !DILocation(line: 29, column: 56, scope: !24)
!50 = !DILocation(line: 29, column: 36, scope: !24)
!51 = !DILocation(line: 29, column: 65, scope: !24)
!52 = !DILocation(line: 31, column: 59, scope: !24)
!53 = !DILocation(line: 31, column: 39, scope: !24)
!54 = !DILocation(line: 31, column: 68, scope: !24)
!55 = !DILocation(line: 31, column: 32, scope: !24)
!56 = !DILocalVariable(name: "_a", scope: !57, file: !3, line: 32, type: !6)
!57 = distinct !DILexicalBlock(scope: !24, file: !3, line: 32, column: 52)
!58 = !DILocation(line: 32, column: 52, scope: !57)
!59 = !DILocalVariable(name: "_b", scope: !57, file: !3, line: 32, type: !6)
!60 = !DILocation(line: 25, column: 8, scope: !24)
!61 = !DILocation(line: 24, column: 10, scope: !24)
!62 = !DILocation(line: 39, column: 30, scope: !63)
!63 = distinct !DILexicalBlock(scope: !24, file: !3, line: 39, column: 7)
!64 = !DILocation(line: 39, column: 8, scope: !63)
!65 = !DILocation(line: 39, column: 7, scope: !24)
!66 = !DILocalVariable(name: "_a", scope: !67, file: !3, line: 43, type: !9)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 43, column: 61)
!68 = distinct !DILexicalBlock(scope: !63, file: !3, line: 39, column: 38)
!69 = !DILocation(line: 43, column: 61, scope: !67)
!70 = !DILocalVariable(name: "_b", scope: !67, file: !3, line: 43, type: !9)
!71 = !DILocalVariable(name: "_a", scope: !72, file: !3, line: 47, type: !10)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 47, column: 61)
!73 = !DILocation(line: 47, column: 61, scope: !72)
!74 = !DILocalVariable(name: "_b", scope: !72, file: !3, line: 47, type: !10)
!75 = !DILocation(line: 46, column: 60, scope: !68)
!76 = !DILocation(line: 42, column: 37, scope: !68)
!77 = !DILocation(line: 42, column: 35, scope: !68)
!78 = !DILocation(line: 49, column: 67, scope: !68)
!79 = !DILocation(line: 49, column: 45, scope: !68)
!80 = !DILocation(line: 49, column: 43, scope: !68)
!81 = !DILocalVariable(name: "_a", scope: !82, file: !3, line: 51, type: !9)
!82 = distinct !DILexicalBlock(scope: !68, file: !3, line: 51, column: 71)
!83 = !DILocation(line: 51, column: 71, scope: !82)
!84 = !DILocalVariable(name: "_b", scope: !82, file: !3, line: 51, type: !9)
!85 = !DILocation(line: 54, column: 65, scope: !68)
!86 = !DILocation(line: 54, column: 45, scope: !68)
!87 = !DILocation(line: 54, column: 73, scope: !68)
!88 = !DILocation(line: 41, column: 10, scope: !68)
!89 = !DILocation(line: 40, column: 12, scope: !68)
!90 = !DILocation(line: 57, column: 12, scope: !68)
!91 = !DILocation(line: 60, column: 3, scope: !68)
!92 = !DILocation(line: 61, column: 1, scope: !24)
