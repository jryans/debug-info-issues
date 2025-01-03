; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp uwtable willreturn
define void @inc(i32* nocapture %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32* %n, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %n, align 4, !dbg !19, !tbaa !20
  %inc = add nsw i32 %0, 1, !dbg !19
  store i32 %inc, i32* %n, align 4, !dbg !19, !tbaa !20
  ret void, !dbg !24
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @collatz(i32 %n) local_unnamed_addr #2 !dbg !25 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !30, metadata !DIExpression()), !dbg !31
  %rem = and i32 %n, 1, !dbg !32
  %cmp = icmp eq i32 %rem, 0, !dbg !34
  %div = lshr i32 %n, 1, !dbg !35
  %mul = mul i32 %n, 3, !dbg !35
  %add = add i32 %mul, 1, !dbg !35
  %retval.0 = select i1 %cmp, i32 %div, i32 %add, !dbg !35
  ret i32 %retval.0, !dbg !36
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define void @barrier(i32* nocapture %n) local_unnamed_addr #3 !dbg !37 {
entry:
  %disguise = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %n, metadata !39, metadata !DIExpression()), !dbg !42
  %disguise.0.disguise.0.disguise.0..sroa_cast = bitcast i32* %disguise to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %disguise.0.disguise.0.disguise.0..sroa_cast), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %disguise, metadata !40, metadata !DIExpression()), !dbg !44
  %0 = load i32, i32* %n, align 4, !dbg !45, !tbaa !20
  store volatile i32 %0, i32* %disguise, align 4, !dbg !44, !tbaa !20
  %disguise.0.disguise.0.disguise.0. = load volatile i32, i32* %disguise, align 4, !dbg !46, !tbaa !20
  store i32 %disguise.0.disguise.0.disguise.0., i32* %n, align 4, !dbg !47, !tbaa !20
  %disguise.0.disguise.0.disguise.0..sroa_cast4 = bitcast i32* %disguise to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %disguise.0.disguise.0.disguise.0..sroa_cast4), !dbg !48
  ret void, !dbg !48
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone ssp uwtable willreturn
define i32 @ex101SingleInc(i32 %n) local_unnamed_addr #5 !dbg !49 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %n, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32* undef, metadata !17, metadata !DIExpression()), !dbg !56
  %inc.i = add nsw i32 %n, 1, !dbg !58
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !54, metadata !DIExpression()), !dbg !55
  ret i32 %inc.i, !dbg !59
}

; Function Attrs: mustprogress nofree nosync nounwind readnone ssp uwtable willreturn
define i32 @ex102DoubleInc(i32 %n) local_unnamed_addr #5 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32 %n, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* undef, metadata !17, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i32* undef, metadata !17, metadata !DIExpression()), !dbg !67
  %inc.i1 = add nsw i32 %n, 2, !dbg !69
  call void @llvm.dbg.value(metadata i32 %inc.i1, metadata !63, metadata !DIExpression()), !dbg !64
  ret i32 %inc.i1, !dbg !70
}

; Function Attrs: nofree nounwind ssp uwtable
define i32 @ex103DoubleIncBarrier(i32 %n) local_unnamed_addr #6 !dbg !71 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !73, metadata !DIExpression()), !dbg !75
  %0 = bitcast i32* %x to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9, !dbg !76
  call void @llvm.dbg.value(metadata i32 %n, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32* %x, metadata !74, metadata !DIExpression(DW_OP_deref)), !dbg !75
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !77
  %inc.i = add nsw i32 %n, 1, !dbg !79
  store i32 %inc.i, i32* %x, align 4, !dbg !79, !tbaa !20
  call void @barrier(i32* nonnull %x), !dbg !80
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !81
  %1 = load i32, i32* %x, align 4, !dbg !83, !tbaa !20
  %inc.i1 = add nsw i32 %1, 1, !dbg !83
  store i32 %inc.i1, i32* %x, align 4, !dbg !83, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %inc.i1, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9, !dbg !84
  ret i32 %inc.i1, !dbg !85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex104DoubleCollatz(i32 %n) local_unnamed_addr #2 !dbg !86 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %n, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %n, metadata !30, metadata !DIExpression()), !dbg !91
  %rem.i = and i32 %n, 1, !dbg !93
  %cmp.i = icmp eq i32 %rem.i, 0, !dbg !94
  %div.i = lshr i32 %n, 1, !dbg !95
  %mul.i = mul i32 %n, 3, !dbg !95
  %add.i = add i32 %mul.i, 1, !dbg !95
  %retval.0.i = select i1 %cmp.i, i32 %div.i, i32 %add.i, !dbg !95
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !30, metadata !DIExpression()), !dbg !96
  %rem.i5 = and i32 %retval.0.i, 1, !dbg !98
  %cmp.i6 = icmp eq i32 %rem.i5, 0, !dbg !99
  %div.i7 = lshr i32 %retval.0.i, 1, !dbg !100
  %mul.i8 = mul i32 %retval.0.i, 3, !dbg !100
  %add.i9 = add i32 %mul.i8, 1, !dbg !100
  %retval.0.i10 = select i1 %cmp.i6, i32 %div.i7, i32 %add.i9, !dbg !100
  call void @llvm.dbg.value(metadata i32 %retval.0.i10, metadata !89, metadata !DIExpression()), !dbg !90
  ret i32 %retval.0.i10, !dbg !101
}

; Function Attrs: nofree nounwind ssp uwtable
define i32 @ex105DoubleIncBarrierInc(i32 %n) local_unnamed_addr #6 !dbg !102 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !104, metadata !DIExpression()), !dbg !106
  %0 = bitcast i32* %x to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9, !dbg !107
  call void @llvm.dbg.value(metadata i32 %n, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32* %x, metadata !105, metadata !DIExpression(DW_OP_deref)), !dbg !106
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !110
  %inc.i1 = add nsw i32 %n, 2, !dbg !112
  store i32 %inc.i1, i32* %x, align 4, !dbg !112, !tbaa !20
  call void @barrier(i32* nonnull %x), !dbg !113
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !114
  %1 = load i32, i32* %x, align 4, !dbg !116, !tbaa !20
  %inc.i2 = add nsw i32 %1, 1, !dbg !116
  store i32 %inc.i2, i32* %x, align 4, !dbg !116, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %inc.i2, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9, !dbg !117
  ret i32 %inc.i2, !dbg !118
}

; Function Attrs: nofree nounwind ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #6 !dbg !119 {
entry:
  %x.i14 = alloca i32, align 4
  %x.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !127, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i8** %argv, metadata !128, metadata !DIExpression()), !dbg !130
  %0 = load i8*, i8** %argv, align 8, !dbg !131, !tbaa !132
  %call = call i32 @atoi(i8* %0), !dbg !134
  call void @llvm.dbg.value(metadata i32 %call, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32* undef, metadata !17, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 %call, metadata !129, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !130
  call void @llvm.dbg.value(metadata i32* undef, metadata !17, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32* undef, metadata !17, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 %call, metadata !129, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !130
  call void @llvm.dbg.value(metadata i32 %call, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #9, !dbg !143
  %1 = bitcast i32* %x.i to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9, !dbg !145
  call void @llvm.dbg.value(metadata i32 %call, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #9, !dbg !143
  call void @llvm.dbg.value(metadata i32* %x.i, metadata !74, metadata !DIExpression(DW_OP_deref)) #9, !dbg !143
  call void @llvm.dbg.value(metadata i32* %x.i, metadata !17, metadata !DIExpression()) #9, !dbg !146
  %inc.i.i12 = add nsw i32 %call, 4, !dbg !148
  store i32 %inc.i.i12, i32* %x.i, align 4, !dbg !148, !tbaa !20
  call void @barrier(i32* nonnull %x.i) #9, !dbg !149
  call void @llvm.dbg.value(metadata i32* %x.i, metadata !17, metadata !DIExpression()) #9, !dbg !150
  %2 = load i32, i32* %x.i, align 4, !dbg !152, !tbaa !20
  %inc.i1.i13 = add nsw i32 %2, 1, !dbg !152
  store i32 %inc.i1.i13, i32* %x.i, align 4, !dbg !152, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !74, metadata !DIExpression()) #9, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9, !dbg !153
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !88, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !89, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !30, metadata !DIExpression()), !dbg !156
  %rem.i.i = and i32 %inc.i1.i13, 1, !dbg !158
  %cmp.i.i = icmp eq i32 %rem.i.i, 0, !dbg !159
  %div.i.i = lshr i32 %inc.i1.i13, 1, !dbg !160
  %mul.i.i = mul i32 %inc.i1.i13, 3, !dbg !160
  %add.i.i = add i32 %mul.i.i, 1, !dbg !160
  %retval.0.i.i = select i1 %cmp.i.i, i32 %div.i.i, i32 %add.i.i, !dbg !160
  call void @llvm.dbg.value(metadata i32 %retval.0.i.i, metadata !89, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %retval.0.i.i, metadata !30, metadata !DIExpression()), !dbg !161
  %rem.i5.i = and i32 %retval.0.i.i, 1, !dbg !163
  %cmp.i6.i = icmp eq i32 %rem.i5.i, 0, !dbg !164
  %div.i7.i = lshr i32 %retval.0.i.i, 1, !dbg !165
  %mul.i8.i = mul i32 %retval.0.i.i, 3, !dbg !165
  %add.i9.i = add i32 %mul.i8.i, 1, !dbg !165
  %retval.0.i10.i = select i1 %cmp.i6.i, i32 %div.i7.i, i32 %add.i9.i, !dbg !165
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !89, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !104, metadata !DIExpression()) #9, !dbg !166
  %3 = bitcast i32* %x.i14 to i8*, !dbg !168
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9, !dbg !168
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !105, metadata !DIExpression()) #9, !dbg !166
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !105, metadata !DIExpression(DW_OP_deref)) #9, !dbg !166
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !17, metadata !DIExpression()) #9, !dbg !169
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !17, metadata !DIExpression()) #9, !dbg !171
  %inc.i1.i15 = add nsw i32 %retval.0.i10.i, 2, !dbg !173
  store i32 %inc.i1.i15, i32* %x.i14, align 4, !dbg !173, !tbaa !20
  call void @barrier(i32* nonnull %x.i14) #9, !dbg !174
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !17, metadata !DIExpression()) #9, !dbg !175
  %4 = load i32, i32* %x.i14, align 4, !dbg !177, !tbaa !20
  %inc.i2.i = add nsw i32 %4, 1, !dbg !177
  store i32 %inc.i2.i, i32* %x.i14, align 4, !dbg !177, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %inc.i2.i, metadata !105, metadata !DIExpression()) #9, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9, !dbg !178
  call void @llvm.dbg.value(metadata i32 %inc.i2.i, metadata !129, metadata !DIExpression()), !dbg !130
  ret i32 %inc.i2.i, !dbg !179
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !180 i32 @atoi(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/inlining")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "inc", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !16)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 3, type: !14)
!18 = !DILocation(line: 0, scope: !11)
!19 = !DILocation(line: 4, column: 3, scope: !11)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 5, column: 1, scope: !11)
!25 = distinct !DISubprogram(name: "collatz", scope: !8, file: !8, line: 7, type: !26, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !29)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !28}
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30}
!30 = !DILocalVariable(name: "n", arg: 1, scope: !25, file: !8, line: 7, type: !28)
!31 = !DILocation(line: 0, scope: !25)
!32 = !DILocation(line: 8, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !8, line: 8, column: 7)
!34 = !DILocation(line: 8, column: 13, scope: !33)
!35 = !DILocation(line: 8, column: 7, scope: !25)
!36 = !DILocation(line: 13, column: 1, scope: !25)
!37 = distinct !DISubprogram(name: "barrier", scope: !8, file: !8, line: 16, type: !12, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !38)
!38 = !{!39, !40}
!39 = !DILocalVariable(name: "n", arg: 1, scope: !37, file: !8, line: 16, type: !14)
!40 = !DILocalVariable(name: "disguise", scope: !37, file: !8, line: 17, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!42 = !DILocation(line: 0, scope: !37)
!43 = !DILocation(line: 17, column: 3, scope: !37)
!44 = !DILocation(line: 17, column: 16, scope: !37)
!45 = !DILocation(line: 17, column: 27, scope: !37)
!46 = !DILocation(line: 18, column: 8, scope: !37)
!47 = !DILocation(line: 18, column: 6, scope: !37)
!48 = !DILocation(line: 19, column: 1, scope: !37)
!49 = distinct !DISubprogram(name: "ex101SingleInc", scope: !8, file: !8, line: 21, type: !50, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{!15, !15}
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "n", arg: 1, scope: !49, file: !8, line: 21, type: !15)
!54 = !DILocalVariable(name: "x", scope: !49, file: !8, line: 22, type: !15)
!55 = !DILocation(line: 0, scope: !49)
!56 = !DILocation(line: 0, scope: !11, inlinedAt: !57)
!57 = distinct !DILocation(line: 23, column: 3, scope: !49)
!58 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !57)
!59 = !DILocation(line: 24, column: 3, scope: !49)
!60 = distinct !DISubprogram(name: "ex102DoubleInc", scope: !8, file: !8, line: 27, type: !50, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !61)
!61 = !{!62, !63}
!62 = !DILocalVariable(name: "n", arg: 1, scope: !60, file: !8, line: 27, type: !15)
!63 = !DILocalVariable(name: "x", scope: !60, file: !8, line: 28, type: !15)
!64 = !DILocation(line: 0, scope: !60)
!65 = !DILocation(line: 0, scope: !11, inlinedAt: !66)
!66 = distinct !DILocation(line: 29, column: 3, scope: !60)
!67 = !DILocation(line: 0, scope: !11, inlinedAt: !68)
!68 = distinct !DILocation(line: 30, column: 3, scope: !60)
!69 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !68)
!70 = !DILocation(line: 31, column: 3, scope: !60)
!71 = distinct !DISubprogram(name: "ex103DoubleIncBarrier", scope: !8, file: !8, line: 34, type: !50, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !72)
!72 = !{!73, !74}
!73 = !DILocalVariable(name: "n", arg: 1, scope: !71, file: !8, line: 34, type: !15)
!74 = !DILocalVariable(name: "x", scope: !71, file: !8, line: 35, type: !15)
!75 = !DILocation(line: 0, scope: !71)
!76 = !DILocation(line: 35, column: 3, scope: !71)
!77 = !DILocation(line: 0, scope: !11, inlinedAt: !78)
!78 = distinct !DILocation(line: 36, column: 3, scope: !71)
!79 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !78)
!80 = !DILocation(line: 37, column: 3, scope: !71)
!81 = !DILocation(line: 0, scope: !11, inlinedAt: !82)
!82 = distinct !DILocation(line: 38, column: 3, scope: !71)
!83 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !82)
!84 = !DILocation(line: 40, column: 1, scope: !71)
!85 = !DILocation(line: 39, column: 3, scope: !71)
!86 = distinct !DISubprogram(name: "ex104DoubleCollatz", scope: !8, file: !8, line: 42, type: !50, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !87)
!87 = !{!88, !89}
!88 = !DILocalVariable(name: "n", arg: 1, scope: !86, file: !8, line: 42, type: !15)
!89 = !DILocalVariable(name: "x", scope: !86, file: !8, line: 43, type: !15)
!90 = !DILocation(line: 0, scope: !86)
!91 = !DILocation(line: 0, scope: !25, inlinedAt: !92)
!92 = distinct !DILocation(line: 44, column: 7, scope: !86)
!93 = !DILocation(line: 8, column: 9, scope: !33, inlinedAt: !92)
!94 = !DILocation(line: 8, column: 13, scope: !33, inlinedAt: !92)
!95 = !DILocation(line: 8, column: 7, scope: !25, inlinedAt: !92)
!96 = !DILocation(line: 0, scope: !25, inlinedAt: !97)
!97 = distinct !DILocation(line: 45, column: 7, scope: !86)
!98 = !DILocation(line: 8, column: 9, scope: !33, inlinedAt: !97)
!99 = !DILocation(line: 8, column: 13, scope: !33, inlinedAt: !97)
!100 = !DILocation(line: 8, column: 7, scope: !25, inlinedAt: !97)
!101 = !DILocation(line: 46, column: 3, scope: !86)
!102 = distinct !DISubprogram(name: "ex105DoubleIncBarrierInc", scope: !8, file: !8, line: 49, type: !50, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !103)
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "n", arg: 1, scope: !102, file: !8, line: 49, type: !15)
!105 = !DILocalVariable(name: "x", scope: !102, file: !8, line: 50, type: !15)
!106 = !DILocation(line: 0, scope: !102)
!107 = !DILocation(line: 50, column: 3, scope: !102)
!108 = !DILocation(line: 0, scope: !11, inlinedAt: !109)
!109 = distinct !DILocation(line: 51, column: 3, scope: !102)
!110 = !DILocation(line: 0, scope: !11, inlinedAt: !111)
!111 = distinct !DILocation(line: 52, column: 3, scope: !102)
!112 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !111)
!113 = !DILocation(line: 53, column: 3, scope: !102)
!114 = !DILocation(line: 0, scope: !11, inlinedAt: !115)
!115 = distinct !DILocation(line: 54, column: 3, scope: !102)
!116 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !115)
!117 = !DILocation(line: 56, column: 1, scope: !102)
!118 = !DILocation(line: 55, column: 3, scope: !102)
!119 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 58, type: !120, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !126)
!120 = !DISubroutineType(types: !121)
!121 = !{!15, !15, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !{!127, !128, !129}
!127 = !DILocalVariable(name: "argc", arg: 1, scope: !119, file: !8, line: 58, type: !15)
!128 = !DILocalVariable(name: "argv", arg: 2, scope: !119, file: !8, line: 58, type: !122)
!129 = !DILocalVariable(name: "n", scope: !119, file: !8, line: 59, type: !15)
!130 = !DILocation(line: 0, scope: !119)
!131 = !DILocation(line: 59, column: 16, scope: !119)
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !22, i64 0}
!134 = !DILocation(line: 59, column: 11, scope: !119)
!135 = !DILocation(line: 0, scope: !11, inlinedAt: !136)
!136 = distinct !DILocation(line: 23, column: 3, scope: !49, inlinedAt: !137)
!137 = distinct !DILocation(line: 60, column: 7, scope: !119)
!138 = !DILocation(line: 0, scope: !11, inlinedAt: !139)
!139 = distinct !DILocation(line: 29, column: 3, scope: !60, inlinedAt: !140)
!140 = distinct !DILocation(line: 61, column: 7, scope: !119)
!141 = !DILocation(line: 0, scope: !11, inlinedAt: !142)
!142 = distinct !DILocation(line: 30, column: 3, scope: !60, inlinedAt: !140)
!143 = !DILocation(line: 0, scope: !71, inlinedAt: !144)
!144 = distinct !DILocation(line: 62, column: 7, scope: !119)
!145 = !DILocation(line: 35, column: 3, scope: !71, inlinedAt: !144)
!146 = !DILocation(line: 0, scope: !11, inlinedAt: !147)
!147 = distinct !DILocation(line: 36, column: 3, scope: !71, inlinedAt: !144)
!148 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !147)
!149 = !DILocation(line: 37, column: 3, scope: !71, inlinedAt: !144)
!150 = !DILocation(line: 0, scope: !11, inlinedAt: !151)
!151 = distinct !DILocation(line: 38, column: 3, scope: !71, inlinedAt: !144)
!152 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !151)
!153 = !DILocation(line: 40, column: 1, scope: !71, inlinedAt: !144)
!154 = !DILocation(line: 0, scope: !86, inlinedAt: !155)
!155 = distinct !DILocation(line: 63, column: 7, scope: !119)
!156 = !DILocation(line: 0, scope: !25, inlinedAt: !157)
!157 = distinct !DILocation(line: 44, column: 7, scope: !86, inlinedAt: !155)
!158 = !DILocation(line: 8, column: 9, scope: !33, inlinedAt: !157)
!159 = !DILocation(line: 8, column: 13, scope: !33, inlinedAt: !157)
!160 = !DILocation(line: 8, column: 7, scope: !25, inlinedAt: !157)
!161 = !DILocation(line: 0, scope: !25, inlinedAt: !162)
!162 = distinct !DILocation(line: 45, column: 7, scope: !86, inlinedAt: !155)
!163 = !DILocation(line: 8, column: 9, scope: !33, inlinedAt: !162)
!164 = !DILocation(line: 8, column: 13, scope: !33, inlinedAt: !162)
!165 = !DILocation(line: 8, column: 7, scope: !25, inlinedAt: !162)
!166 = !DILocation(line: 0, scope: !102, inlinedAt: !167)
!167 = distinct !DILocation(line: 64, column: 7, scope: !119)
!168 = !DILocation(line: 50, column: 3, scope: !102, inlinedAt: !167)
!169 = !DILocation(line: 0, scope: !11, inlinedAt: !170)
!170 = distinct !DILocation(line: 51, column: 3, scope: !102, inlinedAt: !167)
!171 = !DILocation(line: 0, scope: !11, inlinedAt: !172)
!172 = distinct !DILocation(line: 52, column: 3, scope: !102, inlinedAt: !167)
!173 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !172)
!174 = !DILocation(line: 53, column: 3, scope: !102, inlinedAt: !167)
!175 = !DILocation(line: 0, scope: !11, inlinedAt: !176)
!176 = distinct !DILocation(line: 54, column: 3, scope: !102, inlinedAt: !167)
!177 = !DILocation(line: 4, column: 3, scope: !11, inlinedAt: !176)
!178 = !DILocation(line: 56, column: 1, scope: !102, inlinedAt: !167)
!179 = !DILocation(line: 65, column: 3, scope: !119)
!180 = !DISubprogram(name: "atoi", scope: !181, file: !181, line: 131, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!181 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdlib.h", directory: "")
!182 = !DISubroutineType(types: !183)
!183 = !{!15, !123}
