; ModuleID = '/app/example.c' https://godbolt.org/z/7h1859qjc
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 %argc, i32 %init, i32* %bar) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %init.addr = alloca i32, align 4
  %bar.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %bees = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 %init, i32* %init.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %init.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32* %bar, i32** %bar.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bar.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %argc.addr, align 4, !dbg !19
  %add = add nsw i32 %0, 1, !dbg !21
  %cmp = icmp sgt i32 %add, 256, !dbg !22
  br i1 %cmp, label %if.then, label %if.end, !dbg !23

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !24
  br label %return, !dbg !24

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !25, metadata !DIExpression()), !dbg !26
  %1 = load i32, i32* %argc.addr, align 4, !dbg !27
  store i32 %1, i32* %tmp, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %bees, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %j, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %j, align 4, !dbg !32
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %j, align 4, !dbg !34
  %3 = load i32, i32* %argc.addr, align 4, !dbg !36
  %cmp1 = icmp slt i32 %2, %3, !dbg !37
  br i1 %cmp1, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %bar.addr, align 8, !dbg !39
  %5 = load i32, i32* %j, align 4, !dbg !41
  %idxprom = sext i32 %5 to i64, !dbg !39
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !39
  %6 = load i32, i32* %arrayidx, align 4, !dbg !39
  store i32 %6, i32* %bees, align 4, !dbg !42
  %7 = load i32, i32* %bees, align 4, !dbg !43
  %8 = load i32, i32* %tmp, align 4, !dbg !44
  %add2 = add nsw i32 %8, %7, !dbg !44
  store i32 %add2, i32* %tmp, align 4, !dbg !44
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4, !dbg !46
  %inc = add nsw i32 %9, 1, !dbg !46
  store i32 %inc, i32* %j, align 4, !dbg !46
  br label %for.cond, !dbg !47, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %tmp, align 4, !dbg !50
  store i32 %10, i32* %retval, align 4, !dbg !51
  br label %return, !dbg !51

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !52
  ret i32 %11, !dbg !52
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

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
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !8, line: 6, type: !11)
!14 = !DILocation(line: 6, column: 13, scope: !7)
!15 = !DILocalVariable(name: "init", arg: 2, scope: !7, file: !8, line: 6, type: !11)
!16 = !DILocation(line: 6, column: 23, scope: !7)
!17 = !DILocalVariable(name: "bar", arg: 3, scope: !7, file: !8, line: 6, type: !12)
!18 = !DILocation(line: 6, column: 34, scope: !7)
!19 = !DILocation(line: 7, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !8, line: 7, column: 7)
!21 = !DILocation(line: 7, column: 12, scope: !20)
!22 = !DILocation(line: 7, column: 16, scope: !20)
!23 = !DILocation(line: 7, column: 7, scope: !7)
!24 = !DILocation(line: 8, column: 5, scope: !20)
!25 = !DILocalVariable(name: "tmp", scope: !7, file: !8, line: 10, type: !11)
!26 = !DILocation(line: 10, column: 7, scope: !7)
!27 = !DILocation(line: 10, column: 13, scope: !7)
!28 = !DILocalVariable(name: "bees", scope: !7, file: !8, line: 11, type: !11)
!29 = !DILocation(line: 11, column: 7, scope: !7)
!30 = !DILocalVariable(name: "j", scope: !31, file: !8, line: 12, type: !11)
!31 = distinct !DILexicalBlock(scope: !7, file: !8, line: 12, column: 3)
!32 = !DILocation(line: 12, column: 12, scope: !31)
!33 = !DILocation(line: 12, column: 8, scope: !31)
!34 = !DILocation(line: 12, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !8, line: 12, column: 3)
!36 = !DILocation(line: 12, column: 23, scope: !35)
!37 = !DILocation(line: 12, column: 21, scope: !35)
!38 = !DILocation(line: 12, column: 3, scope: !31)
!39 = !DILocation(line: 13, column: 12, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !8, line: 12, column: 34)
!41 = !DILocation(line: 13, column: 16, scope: !40)
!42 = !DILocation(line: 13, column: 10, scope: !40)
!43 = !DILocation(line: 14, column: 12, scope: !40)
!44 = !DILocation(line: 14, column: 9, scope: !40)
!45 = !DILocation(line: 15, column: 3, scope: !40)
!46 = !DILocation(line: 12, column: 30, scope: !35)
!47 = !DILocation(line: 12, column: 3, scope: !35)
!48 = distinct !{!48, !38, !49}
!49 = !DILocation(line: 15, column: 3, scope: !31)
!50 = !DILocation(line: 17, column: 10, scope: !7)
!51 = !DILocation(line: 17, column: 3, scope: !7)
!52 = !DILocation(line: 18, column: 1, scope: !7)
