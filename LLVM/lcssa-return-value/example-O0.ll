; ModuleID = '/app/example.c' https://godbolt.org/z/6EdjP3s3q
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
  call void @llvm.dbg.declare(metadata [192 x i32]* %foo, metadata !11, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [192 x i32]* %bar, metadata !16, metadata !DIExpression()), !dbg !17
  %arraydecay = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i32 0, i32 0, !dbg !18
  %0 = bitcast i32* %arraydecay to i8*, !dbg !18
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 768, i1 false), !dbg !18
  %arraydecay1 = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i32 0, i32 0, !dbg !19
  %1 = bitcast i32* %arraydecay1 to i8*, !dbg !19
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 1, i64 768, i1 false), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %i, align 4, !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !24
  %cmp = icmp slt i32 %2, 192, !dbg !26
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !28
  %idxprom = sext i32 %3 to i64, !dbg !29
  %arrayidx = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i64 0, i64 %idxprom, !dbg !29
  %4 = load i32, i32* %arrayidx, align 4, !dbg !29
  %5 = load i32, i32* %i, align 4, !dbg !30
  %idxprom2 = sext i32 %5 to i64, !dbg !31
  %arrayidx3 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %idxprom2, !dbg !31
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !32
  %add = add nsw i32 %6, %4, !dbg !32
  store i32 %add, i32* %arrayidx3, align 4, !dbg !32
  br label %for.inc, !dbg !31

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !33
  %inc = add nsw i32 %7, 1, !dbg !33
  store i32 %inc, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !37, metadata !DIExpression()), !dbg !39
  store i32 0, i32* %sum, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %j, align 4, !dbg !42
  br label %for.cond4, !dbg !43

for.cond4:                                        ; preds = %for.inc10, %for.end
  %8 = load i32, i32* %j, align 4, !dbg !44
  %cmp5 = icmp slt i32 %8, 192, !dbg !46
  br i1 %cmp5, label %for.body6, label %for.end12, !dbg !47

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %j, align 4, !dbg !48
  %idxprom7 = sext i32 %9 to i64, !dbg !49
  %arrayidx8 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %idxprom7, !dbg !49
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !49
  %11 = load i32, i32* %sum, align 4, !dbg !50
  %add9 = add i32 %11, %10, !dbg !50
  store i32 %add9, i32* %sum, align 4, !dbg !50
  br label %for.inc10, !dbg !51

for.inc10:                                        ; preds = %for.body6
  %12 = load i32, i32* %j, align 4, !dbg !52
  %inc11 = add nsw i32 %12, 1, !dbg !52
  store i32 %inc11, i32* %j, align 4, !dbg !52
  br label %for.cond4, !dbg !53, !llvm.loop !54

for.end12:                                        ; preds = %for.cond4
  %13 = load i32, i32* %sum, align 4, !dbg !56
  ret i32 %13, !dbg !57
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!7 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, isOptimized: false, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "foo", scope: !7, file: !1, line: 6, type: !12)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 6144, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 192)
!15 = !DILocation(line: 6, column: 7, scope: !7)
!16 = !DILocalVariable(name: "bar", scope: !7, file: !1, line: 7, type: !12)
!17 = !DILocation(line: 7, column: 7, scope: !7)
!18 = !DILocation(line: 9, column: 3, scope: !7)
!19 = !DILocation(line: 10, column: 3, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 12, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 12, column: 3)
!22 = !DILocation(line: 12, column: 12, scope: !21)
!23 = !DILocation(line: 12, column: 8, scope: !21)
!24 = !DILocation(line: 12, column: 19, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 12, column: 3)
!26 = !DILocation(line: 12, column: 21, scope: !25)
!27 = !DILocation(line: 12, column: 3, scope: !21)
!28 = !DILocation(line: 13, column: 19, scope: !25)
!29 = !DILocation(line: 13, column: 15, scope: !25)
!30 = !DILocation(line: 13, column: 9, scope: !25)
!31 = !DILocation(line: 13, column: 5, scope: !25)
!32 = !DILocation(line: 13, column: 12, scope: !25)
!33 = !DILocation(line: 12, column: 31, scope: !25)
!34 = !DILocation(line: 12, column: 3, scope: !25)
!35 = distinct !{!35, !27, !36}
!36 = !DILocation(line: 13, column: 20, scope: !21)
!37 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 15, type: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 15, column: 16, scope: !7)
!40 = !DILocalVariable(name: "j", scope: !41, file: !1, line: 16, type: !10)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 16, column: 3)
!42 = !DILocation(line: 16, column: 12, scope: !41)
!43 = !DILocation(line: 16, column: 8, scope: !41)
!44 = !DILocation(line: 16, column: 19, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 16, column: 3)
!46 = !DILocation(line: 16, column: 21, scope: !45)
!47 = !DILocation(line: 16, column: 3, scope: !41)
!48 = !DILocation(line: 17, column: 16, scope: !45)
!49 = !DILocation(line: 17, column: 12, scope: !45)
!50 = !DILocation(line: 17, column: 9, scope: !45)
!51 = !DILocation(line: 17, column: 5, scope: !45)
!52 = !DILocation(line: 16, column: 31, scope: !45)
!53 = !DILocation(line: 16, column: 3, scope: !45)
!54 = distinct !{!54, !47, !55}
!55 = !DILocation(line: 17, column: 17, scope: !41)
!56 = !DILocation(line: 19, column: 10, scope: !7)
!57 = !DILocation(line: 19, column: 3, scope: !7)
