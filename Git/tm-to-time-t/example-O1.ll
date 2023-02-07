; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@tm_to_time_t.mdays = internal unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16, !dbg !0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i64 @tm_to_time_t(%struct.tm* nocapture readonly %tm) local_unnamed_addr #0 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata %struct.tm* %tm, metadata !34, metadata !DIExpression()), !dbg !50
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5, !dbg !51
  %0 = load i32, i32* %tm_year, align 4, !dbg !51, !tbaa !52
  call void @llvm.dbg.value(metadata i32 %0, metadata !35, metadata !DIExpression(DW_OP_constu, 70, DW_OP_minus, DW_OP_stack_value)), !dbg !50
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 4, !dbg !59
  %1 = load i32, i32* %tm_mon, align 8, !dbg !59, !tbaa !60
  call void @llvm.dbg.value(metadata i32 %1, metadata !36, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32 undef, metadata !37, metadata !DIExpression()), !dbg !50
  %.off = add i32 %0, -70, !dbg !61
  %2 = icmp ugt i32 %.off, 129, !dbg !61
  %3 = icmp ugt i32 %1, 11
  %or.cond62 = select i1 %2, i1 true, i1 %3, !dbg !61
  br i1 %or.cond62, label %cleanup, label %if.end6, !dbg !61

if.end6:                                          ; preds = %entry
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 3, !dbg !63
  %4 = load i32, i32* %tm_mday, align 4, !dbg !63, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %4, metadata !37, metadata !DIExpression()), !dbg !50
  %cmp7 = icmp slt i32 %1, 2, !dbg !65
  %5 = and i32 %0, 3
  %tobool.not = icmp ne i32 %5, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %tobool.not, !dbg !67
  %dec = sext i1 %or.cond to i32, !dbg !67
  call void @llvm.dbg.value(metadata i32 undef, metadata !37, metadata !DIExpression()), !dbg !50
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 2, !dbg !68
  %6 = load i32, i32* %tm_hour, align 8, !dbg !68, !tbaa !70
  %cmp11 = icmp slt i32 %6, 0, !dbg !71
  br i1 %cmp11, label %cleanup, label %lor.lhs.false12, !dbg !72

lor.lhs.false12:                                  ; preds = %if.end6
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 1, !dbg !73
  %7 = load i32, i32* %tm_min, align 4, !dbg !73, !tbaa !74
  %cmp13 = icmp slt i32 %7, 0, !dbg !75
  br i1 %cmp13, label %cleanup, label %lor.lhs.false14, !dbg !76

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 0, !dbg !77
  %8 = load i32, i32* %tm_sec, align 8, !dbg !77, !tbaa !78
  %cmp15 = icmp slt i32 %8, 0, !dbg !79
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !80

if.end17:                                         ; preds = %lor.lhs.false14
  %9 = mul i32 %0, 365, !dbg !81
  %mul = add i32 %9, -25550, !dbg !81
  %add18 = add nsw i32 %0, -69, !dbg !82
  %div = sdiv i32 %add18, 4, !dbg !83
  %add19 = add nsw i32 %mul, %div, !dbg !84
  %idxprom = sext i32 %1 to i64, !dbg !85
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* @tm_to_time_t.mdays, i64 0, i64 %idxprom, !dbg !85
  %10 = load i32, i32* %arrayidx, align 4, !dbg !85, !tbaa !86
  %add20 = add i32 %add19, %dec, !dbg !87
  %day.0 = add i32 %add20, %4, !dbg !67
  %add21 = add i32 %day.0, %10, !dbg !88
  %mul23 = mul i32 %add21, 1440, !dbg !89
  %conv = sext i32 %mul23 to i64, !dbg !90
  %mul24 = mul nsw i64 %conv, 60, !dbg !91
  %mul27 = mul i32 %6, 3600, !dbg !92
  %conv28 = sext i32 %mul27 to i64, !dbg !93
  %mul31 = mul nsw i32 %7, 60, !dbg !94
  %conv32 = sext i32 %mul31 to i64, !dbg !95
  %conv35 = sext i32 %8 to i64, !dbg !96
  %add29 = add nsw i64 %conv32, %conv28, !dbg !97
  %add33 = add nsw i64 %add29, %conv35, !dbg !98
  %add36 = add nsw i64 %add33, %mul24, !dbg !99
  br label %cleanup, !dbg !100

cleanup:                                          ; preds = %if.end6, %lor.lhs.false12, %lor.lhs.false14, %entry, %if.end17
  %retval.0 = phi i64 [ %add36, %if.end17 ], [ -1, %entry ], [ -1, %lor.lhs.false14 ], [ -1, %lor.lhs.false12 ], [ -1, %if.end6 ], !dbg !50
  ret i64 %retval.0, !dbg !101
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly ssp uwtable willreturn
define i32 @main() local_unnamed_addr #3 !dbg !102 {
entry:
  %test = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %test to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #6, !dbg !107
  call void @llvm.dbg.declare(metadata %struct.tm* %test, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !dbg !108
  %call = call i64 @tm_to_time_t(%struct.tm* nonnull %test), !dbg !109
  %conv = trunc i64 %call to i32, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #6, !dbg !110
  ret i32 %conv, !dbg !111
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.dbg.cu = !{!30}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mdays", scope: !2, file: !3, line: 5, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "tm_to_time_t", scope: !3, file: !3, line: 3, type: !4, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !33)
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
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !32, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!31 = !{}
!32 = !{!0}
!33 = !{!34, !35, !36, !37}
!34 = !DILocalVariable(name: "tm", arg: 1, scope: !2, file: !3, line: 3, type: !11)
!35 = !DILocalVariable(name: "year", scope: !2, file: !3, line: 8, type: !17)
!36 = !DILocalVariable(name: "month", scope: !2, file: !3, line: 9, type: !17)
!37 = !DILocalVariable(name: "day", scope: !2, file: !3, line: 10, type: !17)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 384, elements: !40)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!40 = !{!41}
!41 = !DISubrange(count: 12)
!42 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 7, !"PIC Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!50 = !DILocation(line: 0, scope: !2)
!51 = !DILocation(line: 8, column: 17, scope: !2)
!52 = !{!53, !54, i64 20}
!53 = !{!"tm", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !57, i64 40, !58, i64 48}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"long", !55, i64 0}
!58 = !{!"any pointer", !55, i64 0}
!59 = !DILocation(line: 9, column: 18, scope: !2)
!60 = !{!53, !54, i64 16}
!61 = !DILocation(line: 12, column: 15, scope: !62)
!62 = distinct !DILexicalBlock(scope: !2, file: !3, line: 12, column: 6)
!63 = !DILocation(line: 10, column: 16, scope: !2)
!64 = !{!53, !54, i64 12}
!65 = !DILocation(line: 16, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !2, file: !3, line: 16, column: 6)
!67 = !DILocation(line: 16, column: 16, scope: !66)
!68 = !DILocation(line: 18, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !2, file: !3, line: 18, column: 6)
!70 = !{!53, !54, i64 8}
!71 = !DILocation(line: 18, column: 18, scope: !69)
!72 = !DILocation(line: 18, column: 22, scope: !69)
!73 = !DILocation(line: 18, column: 29, scope: !69)
!74 = !{!53, !54, i64 4}
!75 = !DILocation(line: 18, column: 36, scope: !69)
!76 = !DILocation(line: 18, column: 40, scope: !69)
!77 = !DILocation(line: 18, column: 47, scope: !69)
!78 = !{!53, !54, i64 0}
!79 = !DILocation(line: 18, column: 54, scope: !69)
!80 = !DILocation(line: 18, column: 6, scope: !2)
!81 = !DILocation(line: 20, column: 15, scope: !2)
!82 = !DILocation(line: 20, column: 29, scope: !2)
!83 = !DILocation(line: 20, column: 34, scope: !2)
!84 = !DILocation(line: 20, column: 21, scope: !2)
!85 = !DILocation(line: 20, column: 40, scope: !2)
!86 = !{!54, !54, i64 0}
!87 = !DILocation(line: 20, column: 38, scope: !2)
!88 = !DILocation(line: 20, column: 53, scope: !2)
!89 = !DILocation(line: 20, column: 64, scope: !2)
!90 = !DILocation(line: 20, column: 9, scope: !2)
!91 = !DILocation(line: 20, column: 67, scope: !2)
!92 = !DILocation(line: 21, column: 19, scope: !2)
!93 = !DILocation(line: 21, column: 3, scope: !2)
!94 = !DILocation(line: 21, column: 36, scope: !2)
!95 = !DILocation(line: 21, column: 25, scope: !2)
!96 = !DILocation(line: 21, column: 43, scope: !2)
!97 = !DILocation(line: 20, column: 73, scope: !2)
!98 = !DILocation(line: 21, column: 23, scope: !2)
!99 = !DILocation(line: 21, column: 41, scope: !2)
!100 = !DILocation(line: 20, column: 2, scope: !2)
!101 = !DILocation(line: 22, column: 1, scope: !2)
!102 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 24, type: !103, scopeLine: 24, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{!17}
!105 = !{!106}
!106 = !DILocalVariable(name: "test", scope: !102, file: !3, line: 25, type: !13)
!107 = !DILocation(line: 25, column: 2, scope: !102)
!108 = !DILocation(line: 25, column: 12, scope: !102)
!109 = !DILocation(line: 26, column: 9, scope: !102)
!110 = !DILocation(line: 27, column: 1, scope: !102)
!111 = !DILocation(line: 26, column: 2, scope: !102)
