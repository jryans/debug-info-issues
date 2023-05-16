; ModuleID = '/app/example.c' https://godbolt.org/z/M3aK9rf3G
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() #0 !dbg !7 {
entry:
  %foo = alloca [192 x i32], align 16
  %bar = alloca [192 x i32], align 16
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [192 x i32]* %foo, metadata !12, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [192 x i32]* %bar, metadata !17, metadata !DIExpression()), !dbg !18
  %arraydecay = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i32 0, i32 0, !dbg !19
  %0 = bitcast i32* %arraydecay to i8*, !dbg !19
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 768, i1 false), !dbg !19
  %arraydecay1 = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i32 0, i32 0, !dbg !20
  %1 = bitcast i32* %arraydecay1 to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 1, i64 768, i1 false), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !25
  %cmp = icmp slt i32 %2, 192, !dbg !27
  br i1 %cmp, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !29
  %idxprom = sext i32 %3 to i64, !dbg !30
  %arrayidx = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i64 0, i64 %idxprom, !dbg !30
  %4 = load i32, i32* %arrayidx, align 4, !dbg !30
  %5 = load i32, i32* %i, align 4, !dbg !31
  %idxprom2 = sext i32 %5 to i64, !dbg !32
  %arrayidx3 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %idxprom2, !dbg !32
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !33
  %add = add nsw i32 %6, %4, !dbg !33
  store i32 %add, i32* %arrayidx3, align 4, !dbg !33
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !34
  %inc = add nsw i32 %7, 1, !dbg !34
  store i32 %inc, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !38, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %sum, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %j, metadata !41, metadata !DIExpression()), !dbg !43
  br label %for.cond4, !dbg !44

for.cond4:                                        ; preds = %for.inc10, %for.end
  %8 = load i32, i32* %j, align 4, !dbg !45
  %cmp5 = icmp slt i32 %8, 192, !dbg !47
  br i1 %cmp5, label %for.body6, label %for.end12, !dbg !48

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %j, align 4, !dbg !49
  %idxprom7 = sext i32 %9 to i64, !dbg !50
  %arrayidx8 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %idxprom7, !dbg !50
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !50
  %11 = load i32, i32* %sum, align 4, !dbg !51
  %add9 = add i32 %11, %10, !dbg !51
  store i32 %add9, i32* %sum, align 4, !dbg !51
  br label %for.inc10, !dbg !52

for.inc10:                                        ; preds = %for.body6
  %12 = load i32, i32* %j, align 4, !dbg !53
  %inc11 = add nsw i32 %12, 1, !dbg !53
  store i32 %inc11, i32* %j, align 4, !dbg !53
  br label %for.cond4, !dbg !54, !llvm.loop !55

for.end12:                                        ; preds = %for.cond4
  %13 = load i32, i32* %sum, align 4, !dbg !57
  ret i32 %13, !dbg !58
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 5, type: !9, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "foo", scope: !7, file: !8, line: 6, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 6144, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 192)
!16 = !DILocation(line: 6, column: 7, scope: !7)
!17 = !DILocalVariable(name: "bar", scope: !7, file: !8, line: 7, type: !13)
!18 = !DILocation(line: 7, column: 7, scope: !7)
!19 = !DILocation(line: 9, column: 3, scope: !7)
!20 = !DILocation(line: 10, column: 3, scope: !7)
!21 = !DILocalVariable(name: "i", scope: !22, file: !8, line: 12, type: !11)
!22 = distinct !DILexicalBlock(scope: !7, file: !8, line: 12, column: 3)
!23 = !DILocation(line: 12, column: 12, scope: !22)
!24 = !DILocation(line: 12, column: 8, scope: !22)
!25 = !DILocation(line: 12, column: 19, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !8, line: 12, column: 3)
!27 = !DILocation(line: 12, column: 21, scope: !26)
!28 = !DILocation(line: 12, column: 3, scope: !22)
!29 = !DILocation(line: 13, column: 19, scope: !26)
!30 = !DILocation(line: 13, column: 15, scope: !26)
!31 = !DILocation(line: 13, column: 9, scope: !26)
!32 = !DILocation(line: 13, column: 5, scope: !26)
!33 = !DILocation(line: 13, column: 12, scope: !26)
!34 = !DILocation(line: 12, column: 31, scope: !26)
!35 = !DILocation(line: 12, column: 3, scope: !26)
!36 = distinct !{!36, !28, !37}
!37 = !DILocation(line: 13, column: 20, scope: !22)
!38 = !DILocalVariable(name: "sum", scope: !7, file: !8, line: 15, type: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 15, column: 16, scope: !7)
!41 = !DILocalVariable(name: "j", scope: !42, file: !8, line: 16, type: !11)
!42 = distinct !DILexicalBlock(scope: !7, file: !8, line: 16, column: 3)
!43 = !DILocation(line: 16, column: 12, scope: !42)
!44 = !DILocation(line: 16, column: 8, scope: !42)
!45 = !DILocation(line: 16, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !8, line: 16, column: 3)
!47 = !DILocation(line: 16, column: 17, scope: !46)
!48 = !DILocation(line: 16, column: 3, scope: !42)
!49 = !DILocation(line: 17, column: 16, scope: !46)
!50 = !DILocation(line: 17, column: 12, scope: !46)
!51 = !DILocation(line: 17, column: 9, scope: !46)
!52 = !DILocation(line: 17, column: 5, scope: !46)
!53 = !DILocation(line: 16, column: 27, scope: !46)
!54 = !DILocation(line: 16, column: 3, scope: !46)
!55 = distinct !{!55, !48, !56}
!56 = !DILocation(line: 17, column: 17, scope: !42)
!57 = !DILocation(line: 19, column: 10, scope: !7)
!58 = !DILocation(line: 19, column: 3, scope: !7)
