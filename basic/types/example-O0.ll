; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s102 = type { i32 }
%struct.s201 = type { i32 }
%struct.s202 = type { %struct.inner }
%struct.inner = type { i32 }
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
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !76
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !76
  %add = add nsw i32 %1, %3, !dbg !77
  %4 = load i32*, i32** %a.addr, align 8, !dbg !78
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 2, !dbg !78
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !78
  %add3 = add nsw i32 %add, %5, !dbg !79
  %6 = load i32*, i32** %a.addr, align 8, !dbg !80
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 3, !dbg !80
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !80
  %add5 = add nsw i32 %add3, %7, !dbg !81
  ret i32 %add5, !dbg !82
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* %a) #0 !dbg !83 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !91
  %call = call i32 (...) %0(), !dbg !91
  ret i32 %call, !dbg !92
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex201StructFieldInt(i32 %s.coerce) #0 !dbg !93 {
entry:
  %s = alloca %struct.s201, align 4
  %coerce.dive = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !99, metadata !DIExpression()), !dbg !100
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0, !dbg !101
  %0 = load i32, i32* %a, align 4, !dbg !101
  ret i32 %0, !dbg !102
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex202StructFieldStruct(i32 %s.coerce) #0 !dbg !103 {
entry:
  %s = alloca %struct.s202, align 4
  %coerce.dive = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.inner, %struct.inner* %coerce.dive, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !112, metadata !DIExpression()), !dbg !113
  %inner = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0, !dbg !114
  %a = getelementptr inbounds %struct.inner, %struct.inner* %inner, i32 0, i32 0, !dbg !115
  %0 = load i32, i32* %a, align 4, !dbg !115
  ret i32 %0, !dbg !116
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex203StructFieldArrayFixedLength(i64 %s.coerce0, i64 %s.coerce1) #0 !dbg !117 {
entry:
  %s = alloca %struct.s203, align 4
  %0 = bitcast %struct.s203* %s to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %s.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %s.coerce1, i64* %2, align 4
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !126, metadata !DIExpression()), !dbg !127
  %a = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !128
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !129
  %3 = load i32, i32* %arrayidx, align 4, !dbg !129
  %a1 = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !130
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !131
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !131
  %add = add nsw i32 %3, %4, !dbg !132
  ret i32 %add, !dbg !133
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* byval(%struct.s204) align 8 %s) #0 !dbg !134 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !144, metadata !DIExpression()), !dbg !145
  %a = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !146
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %a, i64 0, i64 0, !dbg !147
  %0 = load i32, i32* %arrayidx, align 4, !dbg !147
  %a1 = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !148
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* %a1, i64 0, i64 3, !dbg !149
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !149
  %add = add nsw i32 %0, %1, !dbg !150
  ret i32 %add, !dbg !151
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex205StructFieldPointerSingleElementValue(i32* %s.coerce) #0 !dbg !152 {
entry:
  %s = alloca %struct.s205, align 8
  %coerce.dive = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0
  store i32* %s.coerce, i32** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !158, metadata !DIExpression()), !dbg !159
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0, !dbg !160
  %0 = load i32*, i32** %a, align 8, !dbg !160
  %1 = load i32, i32* %0, align 4, !dbg !161
  ret i32 %1, !dbg !162
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex206StructFieldPointerSingleElementInstances(i32* %s.coerce0, i32* %s.coerce1) #0 !dbg !163 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s206, align 8
  %0 = bitcast %struct.s206* %s to { i32*, i32* }*
  %1 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %0, i32 0, i32 0
  store i32* %s.coerce0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %0, i32 0, i32 1
  store i32* %s.coerce1, i32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !170, metadata !DIExpression()), !dbg !171
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !172
  %3 = load i32*, i32** %a, align 8, !dbg !172
  %cmp = icmp eq i32* %3, null, !dbg !174
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !175

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !176
  %4 = load i32*, i32** %b, align 8, !dbg !176
  %cmp1 = icmp eq i32* %4, null, !dbg !177
  br i1 %cmp1, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !179
  br label %return, !dbg !179

if.end:                                           ; preds = %lor.lhs.false
  %a2 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !181
  %5 = load i32*, i32** %a2, align 8, !dbg !181
  %b3 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !183
  %6 = load i32*, i32** %b3, align 8, !dbg !183
  %cmp4 = icmp ne i32* %5, %6, !dbg !184
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !185

if.then5:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !186
  br label %return, !dbg !186

if.end6:                                          ; preds = %if.end
  %a7 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !188
  %7 = load i32*, i32** %a7, align 8, !dbg !188
  %b8 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !190
  %8 = load i32*, i32** %b8, align 8, !dbg !190
  %cmp9 = icmp eq i32* %7, %8, !dbg !191
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !192

if.then10:                                        ; preds = %if.end6
  store i32 3, i32* %retval, align 4, !dbg !193
  br label %return, !dbg !193

if.end11:                                         ; preds = %if.end6
  call void @__assert_rtn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ex206StructFieldPointerSingleElementInstances, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !195
  unreachable, !dbg !195

return:                                           ; preds = %if.then10, %if.then5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !196
  ret i32 %9, !dbg !196
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex207StructFieldPointerMultipleElementValues(i32* %s.coerce) #0 !dbg !197 {
entry:
  %s = alloca %struct.s207, align 8
  %coerce.dive = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0
  store i32* %s.coerce, i32** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !203, metadata !DIExpression()), !dbg !204
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !205
  %0 = load i32*, i32** %a, align 8, !dbg !205
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !206
  %1 = load i32, i32* %arrayidx, align 4, !dbg !206
  %a1 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !207
  %2 = load i32*, i32** %a1, align 8, !dbg !207
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !208
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !208
  %add = add nsw i32 %1, %3, !dbg !209
  %a3 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !210
  %4 = load i32*, i32** %a3, align 8, !dbg !210
  %arrayidx4 = getelementptr inbounds i32, i32* %4, i64 2, !dbg !211
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !211
  %add5 = add nsw i32 %add, %5, !dbg !212
  %a6 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !213
  %6 = load i32*, i32** %a6, align 8, !dbg !213
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 3, !dbg !214
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !214
  %add8 = add nsw i32 %add5, %7, !dbg !215
  ret i32 %add8, !dbg !216
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(i32 (...)* %s.coerce) #0 !dbg !217 {
entry:
  %s = alloca %struct.s208, align 8
  %coerce.dive = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0
  store i32 (...)* %s.coerce, i32 (...)** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !223, metadata !DIExpression()), !dbg !224
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0, !dbg !225
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !225
  %call = call i32 (...) %0(), !dbg !226
  ret i32 %call, !dbg !227
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
!78 = !DILocation(line: 41, column: 24, scope: !72)
!79 = !DILocation(line: 41, column: 22, scope: !72)
!80 = !DILocation(line: 41, column: 31, scope: !72)
!81 = !DILocation(line: 41, column: 29, scope: !72)
!82 = !DILocation(line: 41, column: 3, scope: !72)
!83 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 44, type: !84, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!84 = !DISubroutineType(types: !85)
!85 = !{!16, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!16, null}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !8, line: 44, type: !86)
!90 = !DILocation(line: 44, column: 32, scope: !83)
!91 = !DILocation(line: 45, column: 10, scope: !83)
!92 = !DILocation(line: 45, column: 3, scope: !83)
!93 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !94, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!94 = !DISubroutineType(types: !95)
!95 = !{!16, !96}
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 50, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !96, file: !8, line: 51, baseType: !16, size: 32)
!99 = !DILocalVariable(name: "s", arg: 1, scope: !93, file: !8, line: 53, type: !96)
!100 = !DILocation(line: 53, column: 37, scope: !93)
!101 = !DILocation(line: 54, column: 12, scope: !93)
!102 = !DILocation(line: 54, column: 3, scope: !93)
!103 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 62, type: !104, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!104 = !DISubroutineType(types: !105)
!105 = !{!16, !106}
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 32, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !106, file: !8, line: 60, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inner", file: !8, line: 58, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !109, file: !8, line: 59, baseType: !16, size: 32)
!112 = !DILocalVariable(name: "s", arg: 1, scope: !103, file: !8, line: 62, type: !106)
!113 = !DILocation(line: 62, column: 40, scope: !103)
!114 = !DILocation(line: 63, column: 12, scope: !103)
!115 = !DILocation(line: 63, column: 18, scope: !103)
!116 = !DILocation(line: 63, column: 3, scope: !103)
!117 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 69, type: !118, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!118 = !DISubroutineType(types: !119)
!119 = !{!16, !120}
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 66, size: 128, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !120, file: !8, line: 67, baseType: !123, size: 128)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DILocalVariable(name: "s", arg: 1, scope: !117, file: !8, line: 69, type: !120)
!127 = !DILocation(line: 69, column: 50, scope: !117)
!128 = !DILocation(line: 70, column: 12, scope: !117)
!129 = !DILocation(line: 70, column: 10, scope: !117)
!130 = !DILocation(line: 70, column: 21, scope: !117)
!131 = !DILocation(line: 70, column: 19, scope: !117)
!132 = !DILocation(line: 70, column: 17, scope: !117)
!133 = !DILocation(line: 70, column: 3, scope: !117)
!134 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 77, type: !135, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!135 = !DISubroutineType(types: !136)
!136 = !{!16, !137}
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 73, size: 32, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !137, file: !8, line: 74, baseType: !16, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !137, file: !8, line: 75, baseType: !141, offset: 32)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: -1)
!144 = !DILocalVariable(name: "s", arg: 1, scope: !134, file: !8, line: 77, type: !137)
!145 = !DILocation(line: 77, column: 53, scope: !134)
!146 = !DILocation(line: 78, column: 12, scope: !134)
!147 = !DILocation(line: 78, column: 10, scope: !134)
!148 = !DILocation(line: 78, column: 21, scope: !134)
!149 = !DILocation(line: 78, column: 19, scope: !134)
!150 = !DILocation(line: 78, column: 17, scope: !134)
!151 = !DILocation(line: 78, column: 3, scope: !134)
!152 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 84, type: !153, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!153 = !DISubroutineType(types: !154)
!154 = !{!16, !155}
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 81, size: 64, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !155, file: !8, line: 82, baseType: !34, size: 64)
!158 = !DILocalVariable(name: "s", arg: 1, scope: !152, file: !8, line: 84, type: !155)
!159 = !DILocation(line: 84, column: 59, scope: !152)
!160 = !DILocation(line: 85, column: 13, scope: !152)
!161 = !DILocation(line: 85, column: 10, scope: !152)
!162 = !DILocation(line: 85, column: 3, scope: !152)
!163 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 92, type: !164, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!164 = !DISubroutineType(types: !165)
!165 = !{!16, !166}
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 88, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !166, file: !8, line: 89, baseType: !34, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !166, file: !8, line: 90, baseType: !34, size: 64, offset: 64)
!170 = !DILocalVariable(name: "s", arg: 1, scope: !163, file: !8, line: 92, type: !166)
!171 = !DILocation(line: 92, column: 63, scope: !163)
!172 = !DILocation(line: 93, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !163, file: !8, line: 93, column: 7)
!174 = !DILocation(line: 93, column: 11, scope: !173)
!175 = !DILocation(line: 93, column: 19, scope: !173)
!176 = !DILocation(line: 93, column: 24, scope: !173)
!177 = !DILocation(line: 93, column: 26, scope: !173)
!178 = !DILocation(line: 93, column: 7, scope: !163)
!179 = !DILocation(line: 95, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !8, line: 93, column: 35)
!181 = !DILocation(line: 97, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !163, file: !8, line: 97, column: 7)
!183 = !DILocation(line: 97, column: 16, scope: !182)
!184 = !DILocation(line: 97, column: 11, scope: !182)
!185 = !DILocation(line: 97, column: 7, scope: !163)
!186 = !DILocation(line: 98, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !8, line: 97, column: 19)
!188 = !DILocation(line: 100, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !163, file: !8, line: 100, column: 7)
!190 = !DILocation(line: 100, column: 16, scope: !189)
!191 = !DILocation(line: 100, column: 11, scope: !189)
!192 = !DILocation(line: 100, column: 7, scope: !163)
!193 = !DILocation(line: 102, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !8, line: 100, column: 19)
!195 = !DILocation(line: 104, column: 3, scope: !163)
!196 = !DILocation(line: 105, column: 1, scope: !163)
!197 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 110, type: !198, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!198 = !DISubroutineType(types: !199)
!199 = !{!16, !200}
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 107, size: 64, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !200, file: !8, line: 108, baseType: !34, size: 64)
!203 = !DILocalVariable(name: "s", arg: 1, scope: !197, file: !8, line: 110, type: !200)
!204 = !DILocation(line: 110, column: 62, scope: !197)
!205 = !DILocation(line: 112, column: 12, scope: !197)
!206 = !DILocation(line: 112, column: 10, scope: !197)
!207 = !DILocation(line: 112, column: 21, scope: !197)
!208 = !DILocation(line: 112, column: 19, scope: !197)
!209 = !DILocation(line: 112, column: 17, scope: !197)
!210 = !DILocation(line: 112, column: 30, scope: !197)
!211 = !DILocation(line: 112, column: 28, scope: !197)
!212 = !DILocation(line: 112, column: 26, scope: !197)
!213 = !DILocation(line: 112, column: 39, scope: !197)
!214 = !DILocation(line: 112, column: 37, scope: !197)
!215 = !DILocation(line: 112, column: 35, scope: !197)
!216 = !DILocation(line: 112, column: 3, scope: !197)
!217 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 118, type: !218, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!218 = !DISubroutineType(types: !219)
!219 = !{!16, !220}
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 115, size: 64, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !220, file: !8, line: 116, baseType: !86, size: 64)
!223 = !DILocalVariable(name: "s", arg: 1, scope: !217, file: !8, line: 118, type: !220)
!224 = !DILocation(line: 118, column: 49, scope: !217)
!225 = !DILocation(line: 119, column: 12, scope: !217)
!226 = !DILocation(line: 119, column: 10, scope: !217)
!227 = !DILocation(line: 119, column: 3, scope: !217)
