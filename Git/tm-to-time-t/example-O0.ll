; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@tm_to_time_t.mdays = internal constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16, !dbg !0

; Function Attrs: noinline nounwind ssp uwtable
define i64 @tm_to_time_t(%struct.tm* %tm) #0 !dbg !2 {
entry:
  %retval = alloca i64, align 8
  %tm.addr = alloca %struct.tm*, align 8
  %year = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  store %struct.tm* %tm, %struct.tm** %tm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tm** %tm.addr, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %year, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !49
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 5, !dbg !50
  %1 = load i32, i32* %tm_year, align 4, !dbg !50
  %sub = sub nsw i32 %1, 70, !dbg !51
  store i32 %sub, i32* %year, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %month, metadata !52, metadata !DIExpression()), !dbg !53
  %2 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !54
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4, !dbg !55
  %3 = load i32, i32* %tm_mon, align 8, !dbg !55
  store i32 %3, i32* %month, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %day, metadata !56, metadata !DIExpression()), !dbg !57
  %4 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !58
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3, !dbg !59
  %5 = load i32, i32* %tm_mday, align 4, !dbg !59
  store i32 %5, i32* %day, align 4, !dbg !57
  %6 = load i32, i32* %year, align 4, !dbg !60
  %cmp = icmp slt i32 %6, 0, !dbg !62
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !63

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %year, align 4, !dbg !64
  %cmp1 = icmp sgt i32 %7, 129, !dbg !65
  br i1 %cmp1, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, i64* %retval, align 8, !dbg !67
  br label %return, !dbg !67

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %month, align 4, !dbg !68
  %cmp2 = icmp slt i32 %8, 0, !dbg !70
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3, !dbg !71

lor.lhs.false3:                                   ; preds = %if.end
  %9 = load i32, i32* %month, align 4, !dbg !72
  %cmp4 = icmp sgt i32 %9, 11, !dbg !73
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !74

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  store i64 -1, i64* %retval, align 8, !dbg !75
  br label %return, !dbg !75

if.end6:                                          ; preds = %lor.lhs.false3
  %10 = load i32, i32* %month, align 4, !dbg !76
  %cmp7 = icmp slt i32 %10, 2, !dbg !78
  br i1 %cmp7, label %if.then9, label %lor.lhs.false8, !dbg !79

lor.lhs.false8:                                   ; preds = %if.end6
  %11 = load i32, i32* %year, align 4, !dbg !80
  %add = add nsw i32 %11, 2, !dbg !81
  %rem = srem i32 %add, 4, !dbg !82
  %tobool = icmp ne i32 %rem, 0, !dbg !82
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !83

if.then9:                                         ; preds = %lor.lhs.false8, %if.end6
  %12 = load i32, i32* %day, align 4, !dbg !84
  %dec = add nsw i32 %12, -1, !dbg !84
  store i32 %dec, i32* %day, align 4, !dbg !84
  br label %if.end10, !dbg !85

if.end10:                                         ; preds = %if.then9, %lor.lhs.false8
  %13 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !86
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2, !dbg !88
  %14 = load i32, i32* %tm_hour, align 8, !dbg !88
  %cmp11 = icmp slt i32 %14, 0, !dbg !89
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12, !dbg !90

lor.lhs.false12:                                  ; preds = %if.end10
  %15 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !91
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 1, !dbg !92
  %16 = load i32, i32* %tm_min, align 4, !dbg !92
  %cmp13 = icmp slt i32 %16, 0, !dbg !93
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14, !dbg !94

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %17 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !95
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0, !dbg !96
  %18 = load i32, i32* %tm_sec, align 8, !dbg !96
  %cmp15 = icmp slt i32 %18, 0, !dbg !97
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !98

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false12, %if.end10
  store i64 -1, i64* %retval, align 8, !dbg !99
  br label %return, !dbg !99

if.end17:                                         ; preds = %lor.lhs.false14
  %19 = load i32, i32* %year, align 4, !dbg !100
  %mul = mul nsw i32 %19, 365, !dbg !101
  %20 = load i32, i32* %year, align 4, !dbg !102
  %add18 = add nsw i32 %20, 1, !dbg !103
  %div = sdiv i32 %add18, 4, !dbg !104
  %add19 = add nsw i32 %mul, %div, !dbg !105
  %21 = load i32, i32* %month, align 4, !dbg !106
  %idxprom = sext i32 %21 to i64, !dbg !107
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* @tm_to_time_t.mdays, i64 0, i64 %idxprom, !dbg !107
  %22 = load i32, i32* %arrayidx, align 4, !dbg !107
  %add20 = add nsw i32 %add19, %22, !dbg !108
  %23 = load i32, i32* %day, align 4, !dbg !109
  %add21 = add nsw i32 %add20, %23, !dbg !110
  %mul22 = mul nsw i32 %add21, 24, !dbg !111
  %mul23 = mul nsw i32 %mul22, 60, !dbg !112
  %conv = sext i32 %mul23 to i64, !dbg !113
  %mul24 = mul i64 %conv, 60, !dbg !114
  %24 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !115
  %tm_hour25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 2, !dbg !116
  %25 = load i32, i32* %tm_hour25, align 8, !dbg !116
  %mul26 = mul nsw i32 %25, 60, !dbg !117
  %mul27 = mul nsw i32 %mul26, 60, !dbg !118
  %conv28 = sext i32 %mul27 to i64, !dbg !115
  %add29 = add i64 %mul24, %conv28, !dbg !119
  %26 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !120
  %tm_min30 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1, !dbg !121
  %27 = load i32, i32* %tm_min30, align 4, !dbg !121
  %mul31 = mul nsw i32 %27, 60, !dbg !122
  %conv32 = sext i32 %mul31 to i64, !dbg !120
  %add33 = add i64 %add29, %conv32, !dbg !123
  %28 = load %struct.tm*, %struct.tm** %tm.addr, align 8, !dbg !124
  %tm_sec34 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 0, !dbg !125
  %29 = load i32, i32* %tm_sec34, align 8, !dbg !125
  %conv35 = sext i32 %29 to i64, !dbg !124
  %add36 = add i64 %add33, %conv35, !dbg !126
  store i64 %add36, i64* %retval, align 8, !dbg !127
  br label %return, !dbg !127

return:                                           ; preds = %if.end17, %if.then16, %if.then5, %if.then
  %30 = load i64, i64* %retval, align 8, !dbg !128
  ret i64 %30, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !129 {
entry:
  %retval = alloca i32, align 4
  %test = alloca %struct.tm, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.tm* %test, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = bitcast %struct.tm* %test to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !133
  %call = call i64 @tm_to_time_t(%struct.tm* %test), !dbg !134
  %conv = trunc i64 %call to i32, !dbg !134
  ret i32 %conv, !dbg !135
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.dbg.cu = !{!30}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mdays", scope: !2, file: !3, line: 5, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "tm_to_time_t", scope: !3, file: !3, line: 3, type: !4, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !31)
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/tm-to-time-t")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !7, line: 31, baseType: !8)
!7 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !9, line: 122, baseType: !10)
!9 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!10 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !14, line: 75, size: 448, elements: !15)
!14 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h", directory: "")
!15 = !{!16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !13, file: !14, line: 76, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !13, file: !14, line: 77, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !13, file: !14, line: 78, baseType: !17, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !13, file: !14, line: 79, baseType: !17, size: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !13, file: !14, line: 80, baseType: !17, size: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !13, file: !14, line: 81, baseType: !17, size: 32, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !13, file: !14, line: 82, baseType: !17, size: 32, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !13, file: !14, line: 83, baseType: !17, size: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !13, file: !14, line: 84, baseType: !17, size: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !13, file: !14, line: 85, baseType: !10, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !13, file: !14, line: 86, baseType: !28, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !32, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!31 = !{}
!32 = !{!0}
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 384, elements: !35)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!35 = !{!36}
!36 = !DISubrange(count: 12)
!37 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!45 = !DILocalVariable(name: "tm", arg: 1, scope: !2, file: !3, line: 3, type: !11)
!46 = !DILocation(line: 3, column: 38, scope: !2)
!47 = !DILocalVariable(name: "year", scope: !2, file: !3, line: 8, type: !17)
!48 = !DILocation(line: 8, column: 6, scope: !2)
!49 = !DILocation(line: 8, column: 13, scope: !2)
!50 = !DILocation(line: 8, column: 17, scope: !2)
!51 = !DILocation(line: 8, column: 25, scope: !2)
!52 = !DILocalVariable(name: "month", scope: !2, file: !3, line: 9, type: !17)
!53 = !DILocation(line: 9, column: 6, scope: !2)
!54 = !DILocation(line: 9, column: 14, scope: !2)
!55 = !DILocation(line: 9, column: 18, scope: !2)
!56 = !DILocalVariable(name: "day", scope: !2, file: !3, line: 10, type: !17)
!57 = !DILocation(line: 10, column: 6, scope: !2)
!58 = !DILocation(line: 10, column: 12, scope: !2)
!59 = !DILocation(line: 10, column: 16, scope: !2)
!60 = !DILocation(line: 12, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !2, file: !3, line: 12, column: 6)
!62 = !DILocation(line: 12, column: 11, scope: !61)
!63 = !DILocation(line: 12, column: 15, scope: !61)
!64 = !DILocation(line: 12, column: 18, scope: !61)
!65 = !DILocation(line: 12, column: 23, scope: !61)
!66 = !DILocation(line: 12, column: 6, scope: !2)
!67 = !DILocation(line: 13, column: 3, scope: !61)
!68 = !DILocation(line: 14, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !2, file: !3, line: 14, column: 6)
!70 = !DILocation(line: 14, column: 12, scope: !69)
!71 = !DILocation(line: 14, column: 16, scope: !69)
!72 = !DILocation(line: 14, column: 19, scope: !69)
!73 = !DILocation(line: 14, column: 25, scope: !69)
!74 = !DILocation(line: 14, column: 6, scope: !2)
!75 = !DILocation(line: 15, column: 3, scope: !69)
!76 = !DILocation(line: 16, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !2, file: !3, line: 16, column: 6)
!78 = !DILocation(line: 16, column: 12, scope: !77)
!79 = !DILocation(line: 16, column: 16, scope: !77)
!80 = !DILocation(line: 16, column: 20, scope: !77)
!81 = !DILocation(line: 16, column: 25, scope: !77)
!82 = !DILocation(line: 16, column: 30, scope: !77)
!83 = !DILocation(line: 16, column: 6, scope: !2)
!84 = !DILocation(line: 17, column: 6, scope: !77)
!85 = !DILocation(line: 17, column: 3, scope: !77)
!86 = !DILocation(line: 18, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !2, file: !3, line: 18, column: 6)
!88 = !DILocation(line: 18, column: 10, scope: !87)
!89 = !DILocation(line: 18, column: 18, scope: !87)
!90 = !DILocation(line: 18, column: 22, scope: !87)
!91 = !DILocation(line: 18, column: 25, scope: !87)
!92 = !DILocation(line: 18, column: 29, scope: !87)
!93 = !DILocation(line: 18, column: 36, scope: !87)
!94 = !DILocation(line: 18, column: 40, scope: !87)
!95 = !DILocation(line: 18, column: 43, scope: !87)
!96 = !DILocation(line: 18, column: 47, scope: !87)
!97 = !DILocation(line: 18, column: 54, scope: !87)
!98 = !DILocation(line: 18, column: 6, scope: !2)
!99 = !DILocation(line: 19, column: 3, scope: !87)
!100 = !DILocation(line: 20, column: 10, scope: !2)
!101 = !DILocation(line: 20, column: 15, scope: !2)
!102 = !DILocation(line: 20, column: 24, scope: !2)
!103 = !DILocation(line: 20, column: 29, scope: !2)
!104 = !DILocation(line: 20, column: 34, scope: !2)
!105 = !DILocation(line: 20, column: 21, scope: !2)
!106 = !DILocation(line: 20, column: 46, scope: !2)
!107 = !DILocation(line: 20, column: 40, scope: !2)
!108 = !DILocation(line: 20, column: 38, scope: !2)
!109 = !DILocation(line: 20, column: 55, scope: !2)
!110 = !DILocation(line: 20, column: 53, scope: !2)
!111 = !DILocation(line: 20, column: 60, scope: !2)
!112 = !DILocation(line: 20, column: 64, scope: !2)
!113 = !DILocation(line: 20, column: 9, scope: !2)
!114 = !DILocation(line: 20, column: 67, scope: !2)
!115 = !DILocation(line: 21, column: 3, scope: !2)
!116 = !DILocation(line: 21, column: 7, scope: !2)
!117 = !DILocation(line: 21, column: 15, scope: !2)
!118 = !DILocation(line: 21, column: 19, scope: !2)
!119 = !DILocation(line: 20, column: 73, scope: !2)
!120 = !DILocation(line: 21, column: 25, scope: !2)
!121 = !DILocation(line: 21, column: 29, scope: !2)
!122 = !DILocation(line: 21, column: 36, scope: !2)
!123 = !DILocation(line: 21, column: 23, scope: !2)
!124 = !DILocation(line: 21, column: 43, scope: !2)
!125 = !DILocation(line: 21, column: 47, scope: !2)
!126 = !DILocation(line: 21, column: 41, scope: !2)
!127 = !DILocation(line: 20, column: 2, scope: !2)
!128 = !DILocation(line: 22, column: 1, scope: !2)
!129 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 24, type: !130, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !31)
!130 = !DISubroutineType(types: !131)
!131 = !{!17}
!132 = !DILocalVariable(name: "test", scope: !129, file: !3, line: 25, type: !13)
!133 = !DILocation(line: 25, column: 12, scope: !129)
!134 = !DILocation(line: 26, column: 9, scope: !129)
!135 = !DILocation(line: 26, column: 2, scope: !129)
