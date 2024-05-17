; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s102 = type { i32 }
%struct.s201 = type { i32 }
%struct.s202 = type { %struct.anon }
%struct.anon = type { i32 }
%struct.s203 = type { [4 x i32] }
%struct.s204 = type { i32, [0 x i32] }
%struct.s205 = type { i32* }
%struct.s206 = type { i32*, i32* }
%struct.s207 = type { i32* }
%struct.s208 = type { i32 (...)* }

@__func__.ex106PointerSingleElementInstances = private unnamed_addr constant [35 x i8] c"ex106PointerSingleElementInstances\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__func__.ex206StructFieldPointerSingleElementInstances = private unnamed_addr constant [46 x i8] c"ex206StructFieldPointerSingleElementInstances\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex101Int(i32 %a) #0 !dbg !13 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %a.addr, align 4, !dbg !19
  ret i32 %0, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex102Struct(i32 %s.coerce) #0 !dbg !21 {
entry:
  %s = alloca %struct.s102, align 4
  %coerce.dive = getelementptr inbounds %struct.s102, %struct.s102* %s, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.s102* %s, metadata !27, metadata !DIExpression()), !dbg !28
  %a = getelementptr inbounds %struct.s102, %struct.s102* %s, i32 0, i32 0, !dbg !29
  %0 = load i32, i32* %a, align 4, !dbg !29
  ret i32 %0, !dbg !30
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex105PointerSingleElementValue(i32* %a) #0 !dbg !31 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i32*, i32** %a.addr, align 8, !dbg !37
  %1 = load i32, i32* %0, align 4, !dbg !38
  ret i32 %1, !dbg !39
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex106PointerSingleElementInstances(i32* %a, i32* %b) #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = load i32*, i32** %a.addr, align 8, !dbg !47
  %cmp = icmp eq i32* %0, null, !dbg !49
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !50

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b.addr, align 8, !dbg !51
  %cmp1 = icmp eq i32* %1, null, !dbg !52
  br i1 %cmp1, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32*, i32** %a.addr, align 8, !dbg !56
  %3 = load i32*, i32** %b.addr, align 8, !dbg !58
  %cmp2 = icmp ne i32* %2, %3, !dbg !59
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !60

if.then3:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.end4:                                          ; preds = %if.end
  %4 = load i32*, i32** %a.addr, align 8, !dbg !63
  %5 = load i32*, i32** %b.addr, align 8, !dbg !65
  %cmp5 = icmp eq i32* %4, %5, !dbg !66
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !67

if.then6:                                         ; preds = %if.end4
  store i32 3, i32* %retval, align 4, !dbg !68
  br label %return, !dbg !68

if.end7:                                          ; preds = %if.end4
  call void @__assert_rtn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ex106PointerSingleElementInstances, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !70
  unreachable, !dbg !70

return:                                           ; preds = %if.then6, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !71
  ret i32 %6, !dbg !71
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex107PointerMultipleElementValues(i32* %a) #0 !dbg !72 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = load i32*, i32** %a.addr, align 8, !dbg !75
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !75
  %1 = load i32, i32* %arrayidx, align 4, !dbg !75
  %2 = load i32*, i32** %a.addr, align 8, !dbg !76
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !76
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !76
  %add = add nsw i32 %1, %3, !dbg !77
  ret i32 %add, !dbg !78
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* %a) #0 !dbg !79 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !87
  %call = call i32 (...) %0(), !dbg !87
  ret i32 %call, !dbg !88
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex201StructFieldInt(i32 %s.coerce) #0 !dbg !89 {
entry:
  %s = alloca %struct.s201, align 4
  %coerce.dive = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !95, metadata !DIExpression()), !dbg !96
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0, !dbg !97
  %0 = load i32, i32* %a, align 4, !dbg !97
  ret i32 %0, !dbg !98
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex202StructFieldStruct(i32 %s.coerce) #0 !dbg !99 {
entry:
  %s = alloca %struct.s202, align 4
  %coerce.dive = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.anon, %struct.anon* %coerce.dive, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !108, metadata !DIExpression()), !dbg !109
  %inner = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0, !dbg !110
  %a = getelementptr inbounds %struct.anon, %struct.anon* %inner, i32 0, i32 0, !dbg !111
  %0 = load i32, i32* %a, align 4, !dbg !111
  ret i32 %0, !dbg !112
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex203StructFieldArrayFixedLength(i64 %s.coerce0, i64 %s.coerce1) #0 !dbg !113 {
entry:
  %s = alloca %struct.s203, align 4
  %0 = bitcast %struct.s203* %s to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %s.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %s.coerce1, i64* %2, align 4
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !122, metadata !DIExpression()), !dbg !123
  %a = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !124
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !125
  %3 = load i32, i32* %arrayidx, align 4, !dbg !125
  %a1 = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !126
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !127
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !127
  %add = add nsw i32 %3, %4, !dbg !128
  ret i32 %add, !dbg !129
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* byval(%struct.s204) align 8 %s) #0 !dbg !130 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !140, metadata !DIExpression()), !dbg !141
  %a = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !142
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %a, i64 0, i64 0, !dbg !143
  %0 = load i32, i32* %arrayidx, align 4, !dbg !143
  %a1 = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !144
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* %a1, i64 0, i64 3, !dbg !145
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !145
  %add = add nsw i32 %0, %1, !dbg !146
  ret i32 %add, !dbg !147
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex205StructFieldPointerSingleElementValue(i32* %s.coerce) #0 !dbg !148 {
entry:
  %s = alloca %struct.s205, align 8
  %coerce.dive = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0
  store i32* %s.coerce, i32** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !154, metadata !DIExpression()), !dbg !155
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0, !dbg !156
  %0 = load i32*, i32** %a, align 8, !dbg !156
  %1 = load i32, i32* %0, align 4, !dbg !157
  ret i32 %1, !dbg !158
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex206StructFieldPointerSingleElementInstances(i32* %s.coerce0, i32* %s.coerce1) #0 !dbg !159 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s206, align 8
  %0 = bitcast %struct.s206* %s to { i32*, i32* }*
  %1 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %0, i32 0, i32 0
  store i32* %s.coerce0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %0, i32 0, i32 1
  store i32* %s.coerce1, i32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !166, metadata !DIExpression()), !dbg !167
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !168
  %3 = load i32*, i32** %a, align 8, !dbg !168
  %cmp = icmp eq i32* %3, null, !dbg !170
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !171

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !172
  %4 = load i32*, i32** %b, align 8, !dbg !172
  %cmp1 = icmp eq i32* %4, null, !dbg !173
  br i1 %cmp1, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !175
  br label %return, !dbg !175

if.end:                                           ; preds = %lor.lhs.false
  %a2 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !177
  %5 = load i32*, i32** %a2, align 8, !dbg !177
  %b3 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !179
  %6 = load i32*, i32** %b3, align 8, !dbg !179
  %cmp4 = icmp ne i32* %5, %6, !dbg !180
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !181

if.then5:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !182
  br label %return, !dbg !182

if.end6:                                          ; preds = %if.end
  %a7 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !184
  %7 = load i32*, i32** %a7, align 8, !dbg !184
  %b8 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !186
  %8 = load i32*, i32** %b8, align 8, !dbg !186
  %cmp9 = icmp eq i32* %7, %8, !dbg !187
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !188

if.then10:                                        ; preds = %if.end6
  store i32 3, i32* %retval, align 4, !dbg !189
  br label %return, !dbg !189

if.end11:                                         ; preds = %if.end6
  call void @__assert_rtn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ex206StructFieldPointerSingleElementInstances, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !191
  unreachable, !dbg !191

return:                                           ; preds = %if.then10, %if.then5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !192
  ret i32 %9, !dbg !192
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex207StructFieldPointerMultipleElementValues(i32* %s.coerce) #0 !dbg !193 {
entry:
  %s = alloca %struct.s207, align 8
  %coerce.dive = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0
  store i32* %s.coerce, i32** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !199, metadata !DIExpression()), !dbg !200
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !201
  %0 = load i32*, i32** %a, align 8, !dbg !201
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !202
  %1 = load i32, i32* %arrayidx, align 4, !dbg !202
  %a1 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !203
  %2 = load i32*, i32** %a1, align 8, !dbg !203
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !204
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !204
  %add = add nsw i32 %1, %3, !dbg !205
  ret i32 %add, !dbg !206
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(i32 (...)* %s.coerce) #0 !dbg !207 {
entry:
  %s = alloca %struct.s208, align 8
  %coerce.dive = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0
  store i32 (...)* %s.coerce, i32 (...)** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !213, metadata !DIExpression()), !dbg !214
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0, !dbg !215
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !215
  %call = call i32 (...) %0(), !dbg !216
  ret i32 %call, !dbg !217
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types")
!9 = !{}
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "ex101Int", scope: !8, file: !8, line: 7, type: !14, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !8, line: 7, type: !16)
!18 = !DILocation(line: 7, column: 18, scope: !13)
!19 = !DILocation(line: 8, column: 10, scope: !13)
!20 = !DILocation(line: 8, column: 3, scope: !13)
!21 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 14, type: !22, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !24, file: !8, line: 12, baseType: !16, size: 32)
!27 = !DILocalVariable(name: "s", arg: 1, scope: !21, file: !8, line: 14, type: !24)
!28 = !DILocation(line: 14, column: 29, scope: !21)
!29 = !DILocation(line: 15, column: 12, scope: !21)
!30 = !DILocation(line: 15, column: 3, scope: !21)
!31 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 20, type: !32, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!32 = !DISubroutineType(types: !33)
!33 = !{!16, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !8, line: 20, type: !34)
!36 = !DILocation(line: 20, column: 41, scope: !31)
!37 = !DILocation(line: 21, column: 11, scope: !31)
!38 = !DILocation(line: 21, column: 10, scope: !31)
!39 = !DILocation(line: 21, column: 3, scope: !31)
!40 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 24, type: !41, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!41 = !DISubroutineType(types: !42)
!42 = !{!16, !34, !34}
!43 = !DILocalVariable(name: "a", arg: 1, scope: !40, file: !8, line: 24, type: !34)
!44 = !DILocation(line: 24, column: 45, scope: !40)
!45 = !DILocalVariable(name: "b", arg: 2, scope: !40, file: !8, line: 24, type: !34)
!46 = !DILocation(line: 24, column: 53, scope: !40)
!47 = !DILocation(line: 25, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !8, line: 25, column: 7)
!49 = !DILocation(line: 25, column: 9, scope: !48)
!50 = !DILocation(line: 25, column: 17, scope: !48)
!51 = !DILocation(line: 25, column: 20, scope: !48)
!52 = !DILocation(line: 25, column: 22, scope: !48)
!53 = !DILocation(line: 25, column: 7, scope: !40)
!54 = !DILocation(line: 27, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !8, line: 25, column: 31)
!56 = !DILocation(line: 29, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !40, file: !8, line: 29, column: 7)
!58 = !DILocation(line: 29, column: 12, scope: !57)
!59 = !DILocation(line: 29, column: 9, scope: !57)
!60 = !DILocation(line: 29, column: 7, scope: !40)
!61 = !DILocation(line: 30, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !8, line: 29, column: 15)
!63 = !DILocation(line: 32, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !40, file: !8, line: 32, column: 7)
!65 = !DILocation(line: 32, column: 12, scope: !64)
!66 = !DILocation(line: 32, column: 9, scope: !64)
!67 = !DILocation(line: 32, column: 7, scope: !40)
!68 = !DILocation(line: 34, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !8, line: 32, column: 15)
!70 = !DILocation(line: 36, column: 3, scope: !40)
!71 = !DILocation(line: 37, column: 1, scope: !40)
!72 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 39, type: !32, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!73 = !DILocalVariable(name: "a", arg: 1, scope: !72, file: !8, line: 39, type: !34)
!74 = !DILocation(line: 39, column: 44, scope: !72)
!75 = !DILocation(line: 41, column: 10, scope: !72)
!76 = !DILocation(line: 41, column: 17, scope: !72)
!77 = !DILocation(line: 41, column: 15, scope: !72)
!78 = !DILocation(line: 41, column: 3, scope: !72)
!79 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 44, type: !80, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!80 = !DISubroutineType(types: !81)
!81 = !{!16, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!16, null}
!85 = !DILocalVariable(name: "a", arg: 1, scope: !79, file: !8, line: 44, type: !82)
!86 = !DILocation(line: 44, column: 32, scope: !79)
!87 = !DILocation(line: 45, column: 10, scope: !79)
!88 = !DILocation(line: 45, column: 3, scope: !79)
!89 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !90, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!90 = !DISubroutineType(types: !91)
!91 = !{!16, !92}
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 50, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !92, file: !8, line: 51, baseType: !16, size: 32)
!95 = !DILocalVariable(name: "s", arg: 1, scope: !89, file: !8, line: 53, type: !92)
!96 = !DILocation(line: 53, column: 37, scope: !89)
!97 = !DILocation(line: 54, column: 12, scope: !89)
!98 = !DILocation(line: 54, column: 3, scope: !89)
!99 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 62, type: !100, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!100 = !DISubroutineType(types: !101)
!101 = !{!16, !102}
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !102, file: !8, line: 60, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !8, line: 58, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !105, file: !8, line: 59, baseType: !16, size: 32)
!108 = !DILocalVariable(name: "s", arg: 1, scope: !99, file: !8, line: 62, type: !102)
!109 = !DILocation(line: 62, column: 40, scope: !99)
!110 = !DILocation(line: 63, column: 12, scope: !99)
!111 = !DILocation(line: 63, column: 18, scope: !99)
!112 = !DILocation(line: 63, column: 3, scope: !99)
!113 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 69, type: !114, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!114 = !DISubroutineType(types: !115)
!115 = !{!16, !116}
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 66, size: 128, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !116, file: !8, line: 67, baseType: !119, size: 128)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 4)
!122 = !DILocalVariable(name: "s", arg: 1, scope: !113, file: !8, line: 69, type: !116)
!123 = !DILocation(line: 69, column: 50, scope: !113)
!124 = !DILocation(line: 70, column: 12, scope: !113)
!125 = !DILocation(line: 70, column: 10, scope: !113)
!126 = !DILocation(line: 70, column: 21, scope: !113)
!127 = !DILocation(line: 70, column: 19, scope: !113)
!128 = !DILocation(line: 70, column: 17, scope: !113)
!129 = !DILocation(line: 70, column: 3, scope: !113)
!130 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 77, type: !131, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!131 = !DISubroutineType(types: !132)
!132 = !{!16, !133}
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 73, size: 32, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !133, file: !8, line: 74, baseType: !16, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !133, file: !8, line: 75, baseType: !137, offset: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: -1)
!140 = !DILocalVariable(name: "s", arg: 1, scope: !130, file: !8, line: 77, type: !133)
!141 = !DILocation(line: 77, column: 53, scope: !130)
!142 = !DILocation(line: 78, column: 12, scope: !130)
!143 = !DILocation(line: 78, column: 10, scope: !130)
!144 = !DILocation(line: 78, column: 21, scope: !130)
!145 = !DILocation(line: 78, column: 19, scope: !130)
!146 = !DILocation(line: 78, column: 17, scope: !130)
!147 = !DILocation(line: 78, column: 3, scope: !130)
!148 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 84, type: !149, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!149 = !DISubroutineType(types: !150)
!150 = !{!16, !151}
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 81, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !151, file: !8, line: 82, baseType: !34, size: 64)
!154 = !DILocalVariable(name: "s", arg: 1, scope: !148, file: !8, line: 84, type: !151)
!155 = !DILocation(line: 84, column: 59, scope: !148)
!156 = !DILocation(line: 85, column: 13, scope: !148)
!157 = !DILocation(line: 85, column: 10, scope: !148)
!158 = !DILocation(line: 85, column: 3, scope: !148)
!159 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 92, type: !160, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!160 = !DISubroutineType(types: !161)
!161 = !{!16, !162}
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 88, size: 128, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !162, file: !8, line: 89, baseType: !34, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !162, file: !8, line: 90, baseType: !34, size: 64, offset: 64)
!166 = !DILocalVariable(name: "s", arg: 1, scope: !159, file: !8, line: 92, type: !162)
!167 = !DILocation(line: 92, column: 63, scope: !159)
!168 = !DILocation(line: 93, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !159, file: !8, line: 93, column: 7)
!170 = !DILocation(line: 93, column: 11, scope: !169)
!171 = !DILocation(line: 93, column: 19, scope: !169)
!172 = !DILocation(line: 93, column: 24, scope: !169)
!173 = !DILocation(line: 93, column: 26, scope: !169)
!174 = !DILocation(line: 93, column: 7, scope: !159)
!175 = !DILocation(line: 95, column: 5, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !8, line: 93, column: 35)
!177 = !DILocation(line: 97, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !159, file: !8, line: 97, column: 7)
!179 = !DILocation(line: 97, column: 16, scope: !178)
!180 = !DILocation(line: 97, column: 11, scope: !178)
!181 = !DILocation(line: 97, column: 7, scope: !159)
!182 = !DILocation(line: 98, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !8, line: 97, column: 19)
!184 = !DILocation(line: 100, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !159, file: !8, line: 100, column: 7)
!186 = !DILocation(line: 100, column: 16, scope: !185)
!187 = !DILocation(line: 100, column: 11, scope: !185)
!188 = !DILocation(line: 100, column: 7, scope: !159)
!189 = !DILocation(line: 102, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !8, line: 100, column: 19)
!191 = !DILocation(line: 104, column: 3, scope: !159)
!192 = !DILocation(line: 105, column: 1, scope: !159)
!193 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 110, type: !194, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!194 = !DISubroutineType(types: !195)
!195 = !{!16, !196}
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 107, size: 64, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !196, file: !8, line: 108, baseType: !34, size: 64)
!199 = !DILocalVariable(name: "s", arg: 1, scope: !193, file: !8, line: 110, type: !196)
!200 = !DILocation(line: 110, column: 62, scope: !193)
!201 = !DILocation(line: 112, column: 12, scope: !193)
!202 = !DILocation(line: 112, column: 10, scope: !193)
!203 = !DILocation(line: 112, column: 21, scope: !193)
!204 = !DILocation(line: 112, column: 19, scope: !193)
!205 = !DILocation(line: 112, column: 17, scope: !193)
!206 = !DILocation(line: 112, column: 3, scope: !193)
!207 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 118, type: !208, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!208 = !DISubroutineType(types: !209)
!209 = !{!16, !210}
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 115, size: 64, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !210, file: !8, line: 116, baseType: !82, size: 64)
!213 = !DILocalVariable(name: "s", arg: 1, scope: !207, file: !8, line: 118, type: !210)
!214 = !DILocation(line: 118, column: 49, scope: !207)
!215 = !DILocation(line: 119, column: 12, scope: !207)
!216 = !DILocation(line: 119, column: 10, scope: !207)
!217 = !DILocation(line: 119, column: 3, scope: !207)
