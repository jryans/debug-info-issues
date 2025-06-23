; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @inc(i32* nocapture %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i32* %n, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, i32* %n, align 4, !dbg !21, !tbaa !22
  %inc = add nsw i32 %0, 1, !dbg !21
  store i32 %inc, i32* %n, align 4, !dbg !21, !tbaa !22
  ret void, !dbg !26
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @collatz(i32 %n) local_unnamed_addr #2 !dbg !27 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !32, metadata !DIExpression()), !dbg !33
  %rem = and i32 %n, 1, !dbg !34
  %cmp = icmp eq i32 %rem, 0, !dbg !36
  %div = lshr i32 %n, 1, !dbg !37
  %mul = mul i32 %n, 3, !dbg !37
  %add = add i32 %mul, 1, !dbg !37
  %retval.0 = select i1 %cmp, i32 %div, i32 %add, !dbg !37
  ret i32 %retval.0, !dbg !38
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @barrier(i32* nocapture %n) local_unnamed_addr #3 !dbg !39 {
entry:
  %disguise = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %n, metadata !41, metadata !DIExpression()), !dbg !44
  %disguise.0.disguise.0.disguise.0..sroa_cast = bitcast i32* %disguise to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %disguise.0.disguise.0.disguise.0..sroa_cast), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %disguise, metadata !42, metadata !DIExpression()), !dbg !46
  %0 = load i32, i32* %n, align 4, !dbg !47, !tbaa !22
  store volatile i32 %0, i32* %disguise, align 4, !dbg !46, !tbaa !22
  %disguise.0.disguise.0.disguise.0. = load volatile i32, i32* %disguise, align 4, !dbg !48, !tbaa !22
  store i32 %disguise.0.disguise.0.disguise.0., i32* %n, align 4, !dbg !49, !tbaa !22
  %disguise.0.disguise.0.disguise.0..sroa_cast4 = bitcast i32* %disguise to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %disguise.0.disguise.0.disguise.0..sroa_cast4), !dbg !50
  ret void, !dbg !50
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local i32 @ex101SingleInc(i32 %n) local_unnamed_addr #5 !dbg !51 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32 %n, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* undef, metadata !19, metadata !DIExpression()), !dbg !58
  %inc.i = add nsw i32 %n, 1, !dbg !60
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !56, metadata !DIExpression()), !dbg !57
  ret i32 %inc.i, !dbg !61
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local i32 @ex102DoubleInc(i32 %n) local_unnamed_addr #5 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 %n, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32* undef, metadata !19, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32* undef, metadata !19, metadata !DIExpression()), !dbg !69
  %inc.i1 = add nsw i32 %n, 2, !dbg !71
  call void @llvm.dbg.value(metadata i32 %inc.i1, metadata !65, metadata !DIExpression()), !dbg !66
  ret i32 %inc.i1, !dbg !72
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ex103DoubleIncBarrier(i32 %n) local_unnamed_addr #6 !dbg !73 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !75, metadata !DIExpression()), !dbg !77
  %0 = bitcast i32* %x to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9, !dbg !78
  call void @llvm.dbg.value(metadata i32 %n, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32* %x, metadata !76, metadata !DIExpression(DW_OP_deref)), !dbg !77
  call void @llvm.dbg.value(metadata i32* %x, metadata !19, metadata !DIExpression()), !dbg !79
  %inc.i = add nsw i32 %n, 1, !dbg !81
  store i32 %inc.i, i32* %x, align 4, !dbg !81, !tbaa !22
  call void @barrier(i32* nonnull %x), !dbg !82
  call void @llvm.dbg.value(metadata i32* %x, metadata !19, metadata !DIExpression()), !dbg !83
  %1 = load i32, i32* %x, align 4, !dbg !85, !tbaa !22
  %inc.i1 = add nsw i32 %1, 1, !dbg !85
  store i32 %inc.i1, i32* %x, align 4, !dbg !85, !tbaa !22
  call void @llvm.dbg.value(metadata i32 %inc.i1, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9, !dbg !86
  ret i32 %inc.i1, !dbg !87
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ex104DoubleCollatz(i32 %n) local_unnamed_addr #2 !dbg !88 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %n, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %n, metadata !32, metadata !DIExpression()), !dbg !93
  %rem.i = and i32 %n, 1, !dbg !95
  %cmp.i = icmp eq i32 %rem.i, 0, !dbg !96
  %div.i = lshr i32 %n, 1, !dbg !97
  %mul.i = mul i32 %n, 3, !dbg !97
  %add.i = add i32 %mul.i, 1, !dbg !97
  %retval.0.i = select i1 %cmp.i, i32 %div.i, i32 %add.i, !dbg !97
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !32, metadata !DIExpression()), !dbg !98
  %rem.i5 = and i32 %retval.0.i, 1, !dbg !100
  %cmp.i6 = icmp eq i32 %rem.i5, 0, !dbg !101
  %div.i7 = lshr i32 %retval.0.i, 1, !dbg !102
  %mul.i8 = mul i32 %retval.0.i, 3, !dbg !102
  %add.i9 = add i32 %mul.i8, 1, !dbg !102
  %retval.0.i10 = select i1 %cmp.i6, i32 %div.i7, i32 %add.i9, !dbg !102
  call void @llvm.dbg.value(metadata i32 %retval.0.i10, metadata !91, metadata !DIExpression()), !dbg !92
  ret i32 %retval.0.i10, !dbg !103
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ex105DoubleIncBarrierInc(i32 %n) local_unnamed_addr #6 !dbg !104 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !106, metadata !DIExpression()), !dbg !108
  %0 = bitcast i32* %x to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9, !dbg !109
  call void @llvm.dbg.value(metadata i32 %n, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32* %x, metadata !107, metadata !DIExpression(DW_OP_deref)), !dbg !108
  call void @llvm.dbg.value(metadata i32* %x, metadata !19, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i32* %x, metadata !19, metadata !DIExpression()), !dbg !112
  %inc.i1 = add nsw i32 %n, 2, !dbg !114
  store i32 %inc.i1, i32* %x, align 4, !dbg !114, !tbaa !22
  call void @barrier(i32* nonnull %x), !dbg !115
  call void @llvm.dbg.value(metadata i32* %x, metadata !19, metadata !DIExpression()), !dbg !116
  %1 = load i32, i32* %x, align 4, !dbg !118, !tbaa !22
  %inc.i2 = add nsw i32 %1, 1, !dbg !118
  store i32 %inc.i2, i32* %x, align 4, !dbg !118, !tbaa !22
  call void @llvm.dbg.value(metadata i32 %inc.i2, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9, !dbg !119
  ret i32 %inc.i2, !dbg !120
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #6 !dbg !121 {
entry:
  %x.i14 = alloca i32, align 4
  %x.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i8** %argv, metadata !129, metadata !DIExpression()), !dbg !131
  %0 = load i8*, i8** %argv, align 8, !dbg !132, !tbaa !133
  call void @llvm.dbg.value(metadata i8* %0, metadata !135, metadata !DIExpression()) #9, !dbg !141
  %call.i = call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #9, !dbg !143
  %conv.i = trunc i64 %call.i to i32, !dbg !144
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32* undef, metadata !19, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !130, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !131
  call void @llvm.dbg.value(metadata i32* undef, metadata !19, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32* undef, metadata !19, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !130, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !131
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !75, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #9, !dbg !153
  %1 = bitcast i32* %x.i to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9, !dbg !155
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !76, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #9, !dbg !153
  call void @llvm.dbg.value(metadata i32* %x.i, metadata !76, metadata !DIExpression(DW_OP_deref)) #9, !dbg !153
  call void @llvm.dbg.value(metadata i32* %x.i, metadata !19, metadata !DIExpression()) #9, !dbg !156
  %inc.i.i12 = add nsw i32 %conv.i, 4, !dbg !158
  store i32 %inc.i.i12, i32* %x.i, align 4, !dbg !158, !tbaa !22
  call void @barrier(i32* nonnull %x.i) #9, !dbg !159
  call void @llvm.dbg.value(metadata i32* %x.i, metadata !19, metadata !DIExpression()) #9, !dbg !160
  %2 = load i32, i32* %x.i, align 4, !dbg !162, !tbaa !22
  %inc.i1.i13 = add nsw i32 %2, 1, !dbg !162
  store i32 %inc.i1.i13, i32* %x.i, align 4, !dbg !162, !tbaa !22
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !76, metadata !DIExpression()) #9, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9, !dbg !163
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !90, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !91, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %inc.i1.i13, metadata !32, metadata !DIExpression()), !dbg !166
  %rem.i.i = and i32 %inc.i1.i13, 1, !dbg !168
  %cmp.i.i = icmp eq i32 %rem.i.i, 0, !dbg !169
  %div.i.i = lshr i32 %inc.i1.i13, 1, !dbg !170
  %mul.i.i = mul i32 %inc.i1.i13, 3, !dbg !170
  %add.i.i = add i32 %mul.i.i, 1, !dbg !170
  %retval.0.i.i = select i1 %cmp.i.i, i32 %div.i.i, i32 %add.i.i, !dbg !170
  call void @llvm.dbg.value(metadata i32 %retval.0.i.i, metadata !91, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %retval.0.i.i, metadata !32, metadata !DIExpression()), !dbg !171
  %rem.i5.i = and i32 %retval.0.i.i, 1, !dbg !173
  %cmp.i6.i = icmp eq i32 %rem.i5.i, 0, !dbg !174
  %div.i7.i = lshr i32 %retval.0.i.i, 1, !dbg !175
  %mul.i8.i = mul i32 %retval.0.i.i, 3, !dbg !175
  %add.i9.i = add i32 %mul.i8.i, 1, !dbg !175
  %retval.0.i10.i = select i1 %cmp.i6.i, i32 %div.i7.i, i32 %add.i9.i, !dbg !175
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !91, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !106, metadata !DIExpression()) #9, !dbg !176
  %3 = bitcast i32* %x.i14 to i8*, !dbg !178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9, !dbg !178
  call void @llvm.dbg.value(metadata i32 %retval.0.i10.i, metadata !107, metadata !DIExpression()) #9, !dbg !176
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !107, metadata !DIExpression(DW_OP_deref)) #9, !dbg !176
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !19, metadata !DIExpression()) #9, !dbg !179
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !19, metadata !DIExpression()) #9, !dbg !181
  %inc.i1.i15 = add nsw i32 %retval.0.i10.i, 2, !dbg !183
  store i32 %inc.i1.i15, i32* %x.i14, align 4, !dbg !183, !tbaa !22
  call void @barrier(i32* nonnull %x.i14) #9, !dbg !184
  call void @llvm.dbg.value(metadata i32* %x.i14, metadata !19, metadata !DIExpression()) #9, !dbg !185
  %4 = load i32, i32* %x.i14, align 4, !dbg !187, !tbaa !22
  %inc.i2.i = add nsw i32 %4, 1, !dbg !187
  store i32 %inc.i2.i, i32* %x.i14, align 4, !dbg !187, !tbaa !22
  call void @llvm.dbg.value(metadata i32 %inc.i2.i, metadata !107, metadata !DIExpression()) #9, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9, !dbg !188
  call void @llvm.dbg.value(metadata i32 %inc.i2.i, metadata !130, metadata !DIExpression()), !dbg !131
  ret i32 %inc.i2.i, !dbg !189
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example.c", directory: "/home/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/inlining")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)"}
!14 = distinct !DISubprogram(name: "inc", scope: !1, file: !1, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!18 = !{!19}
!19 = !DILocalVariable(name: "n", arg: 1, scope: !14, file: !1, line: 3, type: !17)
!20 = !DILocation(line: 0, scope: !14)
!21 = !DILocation(line: 4, column: 3, scope: !14)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 5, column: 1, scope: !14)
!27 = distinct !DISubprogram(name: "collatz", scope: !1, file: !1, line: 7, type: !28, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !30}
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DILocalVariable(name: "n", arg: 1, scope: !27, file: !1, line: 7, type: !30)
!33 = !DILocation(line: 0, scope: !27)
!34 = !DILocation(line: 8, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !27, file: !1, line: 8, column: 7)
!36 = !DILocation(line: 8, column: 13, scope: !35)
!37 = !DILocation(line: 8, column: 7, scope: !27)
!38 = !DILocation(line: 13, column: 1, scope: !27)
!39 = distinct !DISubprogram(name: "barrier", scope: !1, file: !1, line: 16, type: !15, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "n", arg: 1, scope: !39, file: !1, line: 16, type: !17)
!42 = !DILocalVariable(name: "disguise", scope: !39, file: !1, line: 17, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!44 = !DILocation(line: 0, scope: !39)
!45 = !DILocation(line: 17, column: 3, scope: !39)
!46 = !DILocation(line: 17, column: 16, scope: !39)
!47 = !DILocation(line: 17, column: 27, scope: !39)
!48 = !DILocation(line: 18, column: 8, scope: !39)
!49 = !DILocation(line: 18, column: 6, scope: !39)
!50 = !DILocation(line: 19, column: 1, scope: !39)
!51 = distinct !DISubprogram(name: "ex101SingleInc", scope: !1, file: !1, line: 21, type: !52, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!4, !4}
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "n", arg: 1, scope: !51, file: !1, line: 21, type: !4)
!56 = !DILocalVariable(name: "x", scope: !51, file: !1, line: 22, type: !4)
!57 = !DILocation(line: 0, scope: !51)
!58 = !DILocation(line: 0, scope: !14, inlinedAt: !59)
!59 = distinct !DILocation(line: 23, column: 3, scope: !51)
!60 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !59)
!61 = !DILocation(line: 24, column: 3, scope: !51)
!62 = distinct !DISubprogram(name: "ex102DoubleInc", scope: !1, file: !1, line: 27, type: !52, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "n", arg: 1, scope: !62, file: !1, line: 27, type: !4)
!65 = !DILocalVariable(name: "x", scope: !62, file: !1, line: 28, type: !4)
!66 = !DILocation(line: 0, scope: !62)
!67 = !DILocation(line: 0, scope: !14, inlinedAt: !68)
!68 = distinct !DILocation(line: 29, column: 3, scope: !62)
!69 = !DILocation(line: 0, scope: !14, inlinedAt: !70)
!70 = distinct !DILocation(line: 30, column: 3, scope: !62)
!71 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !70)
!72 = !DILocation(line: 31, column: 3, scope: !62)
!73 = distinct !DISubprogram(name: "ex103DoubleIncBarrier", scope: !1, file: !1, line: 34, type: !52, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "n", arg: 1, scope: !73, file: !1, line: 34, type: !4)
!76 = !DILocalVariable(name: "x", scope: !73, file: !1, line: 35, type: !4)
!77 = !DILocation(line: 0, scope: !73)
!78 = !DILocation(line: 35, column: 3, scope: !73)
!79 = !DILocation(line: 0, scope: !14, inlinedAt: !80)
!80 = distinct !DILocation(line: 36, column: 3, scope: !73)
!81 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !80)
!82 = !DILocation(line: 37, column: 3, scope: !73)
!83 = !DILocation(line: 0, scope: !14, inlinedAt: !84)
!84 = distinct !DILocation(line: 38, column: 3, scope: !73)
!85 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !84)
!86 = !DILocation(line: 40, column: 1, scope: !73)
!87 = !DILocation(line: 39, column: 3, scope: !73)
!88 = distinct !DISubprogram(name: "ex104DoubleCollatz", scope: !1, file: !1, line: 42, type: !52, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "n", arg: 1, scope: !88, file: !1, line: 42, type: !4)
!91 = !DILocalVariable(name: "x", scope: !88, file: !1, line: 43, type: !4)
!92 = !DILocation(line: 0, scope: !88)
!93 = !DILocation(line: 0, scope: !27, inlinedAt: !94)
!94 = distinct !DILocation(line: 44, column: 7, scope: !88)
!95 = !DILocation(line: 8, column: 9, scope: !35, inlinedAt: !94)
!96 = !DILocation(line: 8, column: 13, scope: !35, inlinedAt: !94)
!97 = !DILocation(line: 8, column: 7, scope: !27, inlinedAt: !94)
!98 = !DILocation(line: 0, scope: !27, inlinedAt: !99)
!99 = distinct !DILocation(line: 45, column: 7, scope: !88)
!100 = !DILocation(line: 8, column: 9, scope: !35, inlinedAt: !99)
!101 = !DILocation(line: 8, column: 13, scope: !35, inlinedAt: !99)
!102 = !DILocation(line: 8, column: 7, scope: !27, inlinedAt: !99)
!103 = !DILocation(line: 46, column: 3, scope: !88)
!104 = distinct !DISubprogram(name: "ex105DoubleIncBarrierInc", scope: !1, file: !1, line: 49, type: !52, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!105 = !{!106, !107}
!106 = !DILocalVariable(name: "n", arg: 1, scope: !104, file: !1, line: 49, type: !4)
!107 = !DILocalVariable(name: "x", scope: !104, file: !1, line: 50, type: !4)
!108 = !DILocation(line: 0, scope: !104)
!109 = !DILocation(line: 50, column: 3, scope: !104)
!110 = !DILocation(line: 0, scope: !14, inlinedAt: !111)
!111 = distinct !DILocation(line: 51, column: 3, scope: !104)
!112 = !DILocation(line: 0, scope: !14, inlinedAt: !113)
!113 = distinct !DILocation(line: 52, column: 3, scope: !104)
!114 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !113)
!115 = !DILocation(line: 53, column: 3, scope: !104)
!116 = !DILocation(line: 0, scope: !14, inlinedAt: !117)
!117 = distinct !DILocation(line: 54, column: 3, scope: !104)
!118 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !117)
!119 = !DILocation(line: 56, column: 1, scope: !104)
!120 = !DILocation(line: 55, column: 3, scope: !104)
!121 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !122, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!122 = !DISubroutineType(types: !123)
!123 = !{!4, !4, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!127 = !{!128, !129, !130}
!128 = !DILocalVariable(name: "argc", arg: 1, scope: !121, file: !1, line: 58, type: !4)
!129 = !DILocalVariable(name: "argv", arg: 2, scope: !121, file: !1, line: 58, type: !124)
!130 = !DILocalVariable(name: "n", scope: !121, file: !1, line: 59, type: !4)
!131 = !DILocation(line: 0, scope: !121)
!132 = !DILocation(line: 59, column: 16, scope: !121)
!133 = !{!134, !134, i64 0}
!134 = !{!"any pointer", !24, i64 0}
!135 = !DILocalVariable(name: "__nptr", arg: 1, scope: !136, file: !137, line: 481, type: !125)
!136 = distinct !DISubprogram(name: "atoi", scope: !137, file: !137, line: 481, type: !138, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!137 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/stdlib.h", directory: "")
!138 = !DISubroutineType(types: !139)
!139 = !{!4, !125}
!140 = !{!135}
!141 = !DILocation(line: 0, scope: !136, inlinedAt: !142)
!142 = distinct !DILocation(line: 59, column: 11, scope: !121)
!143 = !DILocation(line: 483, column: 16, scope: !136, inlinedAt: !142)
!144 = !DILocation(line: 483, column: 10, scope: !136, inlinedAt: !142)
!145 = !DILocation(line: 0, scope: !14, inlinedAt: !146)
!146 = distinct !DILocation(line: 23, column: 3, scope: !51, inlinedAt: !147)
!147 = distinct !DILocation(line: 60, column: 7, scope: !121)
!148 = !DILocation(line: 0, scope: !14, inlinedAt: !149)
!149 = distinct !DILocation(line: 29, column: 3, scope: !62, inlinedAt: !150)
!150 = distinct !DILocation(line: 61, column: 7, scope: !121)
!151 = !DILocation(line: 0, scope: !14, inlinedAt: !152)
!152 = distinct !DILocation(line: 30, column: 3, scope: !62, inlinedAt: !150)
!153 = !DILocation(line: 0, scope: !73, inlinedAt: !154)
!154 = distinct !DILocation(line: 62, column: 7, scope: !121)
!155 = !DILocation(line: 35, column: 3, scope: !73, inlinedAt: !154)
!156 = !DILocation(line: 0, scope: !14, inlinedAt: !157)
!157 = distinct !DILocation(line: 36, column: 3, scope: !73, inlinedAt: !154)
!158 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !157)
!159 = !DILocation(line: 37, column: 3, scope: !73, inlinedAt: !154)
!160 = !DILocation(line: 0, scope: !14, inlinedAt: !161)
!161 = distinct !DILocation(line: 38, column: 3, scope: !73, inlinedAt: !154)
!162 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !161)
!163 = !DILocation(line: 40, column: 1, scope: !73, inlinedAt: !154)
!164 = !DILocation(line: 0, scope: !88, inlinedAt: !165)
!165 = distinct !DILocation(line: 63, column: 7, scope: !121)
!166 = !DILocation(line: 0, scope: !27, inlinedAt: !167)
!167 = distinct !DILocation(line: 44, column: 7, scope: !88, inlinedAt: !165)
!168 = !DILocation(line: 8, column: 9, scope: !35, inlinedAt: !167)
!169 = !DILocation(line: 8, column: 13, scope: !35, inlinedAt: !167)
!170 = !DILocation(line: 8, column: 7, scope: !27, inlinedAt: !167)
!171 = !DILocation(line: 0, scope: !27, inlinedAt: !172)
!172 = distinct !DILocation(line: 45, column: 7, scope: !88, inlinedAt: !165)
!173 = !DILocation(line: 8, column: 9, scope: !35, inlinedAt: !172)
!174 = !DILocation(line: 8, column: 13, scope: !35, inlinedAt: !172)
!175 = !DILocation(line: 8, column: 7, scope: !27, inlinedAt: !172)
!176 = !DILocation(line: 0, scope: !104, inlinedAt: !177)
!177 = distinct !DILocation(line: 64, column: 7, scope: !121)
!178 = !DILocation(line: 50, column: 3, scope: !104, inlinedAt: !177)
!179 = !DILocation(line: 0, scope: !14, inlinedAt: !180)
!180 = distinct !DILocation(line: 51, column: 3, scope: !104, inlinedAt: !177)
!181 = !DILocation(line: 0, scope: !14, inlinedAt: !182)
!182 = distinct !DILocation(line: 52, column: 3, scope: !104, inlinedAt: !177)
!183 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !182)
!184 = !DILocation(line: 53, column: 3, scope: !104, inlinedAt: !177)
!185 = !DILocation(line: 0, scope: !14, inlinedAt: !186)
!186 = distinct !DILocation(line: 54, column: 3, scope: !104, inlinedAt: !177)
!187 = !DILocation(line: 4, column: 3, scope: !14, inlinedAt: !186)
!188 = !DILocation(line: 56, column: 1, scope: !104, inlinedAt: !177)
!189 = !DILocation(line: 65, column: 3, scope: !121)
