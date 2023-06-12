; ModuleID = '/app/example.cpp'
source_filename = "/app/example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.trains = type { i32, i32, i32, i32 }

$_ZN6trainsC2Ev = comdat any

; Function Attrs: alwaysinline uwtable
define dso_local nonnull %class.trains* @_Z5allocv() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !253 {
entry:
  %foo = alloca i32, align 4
  %foo.0.sroa_cast4 = bitcast i32* %foo to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast4), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !272, metadata !DIExpression()), !dbg !275
  store volatile i32 0, i32* %foo, align 4, !dbg !275, !tbaa !276
  %call = tail call i8* @_Znwm(i64 16) #7, !dbg !280
  %0 = bitcast i8* %call to %class.trains*, !dbg !280
  tail call void @_ZN6trainsC2Ev(%class.trains* nonnull %0), !dbg !281
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !273, metadata !DIExpression()), !dbg !282
  %foo.0.foo.0. = load volatile i32, i32* %foo, align 4, !dbg !283, !tbaa !276
  %cmp = icmp eq i32 %foo.0.foo.0., 0, !dbg !285
  br i1 %cmp, label %if.end, label %if.then, !dbg !286

if.then:                                          ; preds = %entry
  tail call void @abort() #8, !dbg !287
  unreachable, !dbg !287

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast4), !dbg !288
  ret %class.trains* %0, !dbg !289
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nobuiltin
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6trainsC2Ev(%class.trains* %this) unnamed_addr #4 comdat align 2 !dbg !290 {
entry:
  call void @llvm.dbg.value(metadata %class.trains* %this, metadata !292, metadata !DIExpression()), !dbg !293
  %foo = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 0, !dbg !294
  store i32 1, i32* %foo, align 4, !dbg !296, !tbaa !297
  %bar = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 1, !dbg !299
  store i32 2, i32* %bar, align 4, !dbg !300, !tbaa !301
  %baz = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 2, !dbg !302
  store volatile i32 3, i32* %baz, align 4, !dbg !303, !tbaa !304
  %qux = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 3, !dbg !305
  store volatile i32 4, i32* %qux, align 4, !dbg !306, !tbaa !307
  ret void, !dbg !308
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #6 personality i32 (...)* @__gxx_personality_v0 !dbg !309 {
entry:
  %quux.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %quux.i, metadata !314, metadata !DIExpression()), !dbg !318
  %foo.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %foo.i, metadata !272, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !323
  %foo.i.0.sroa_cast = bitcast i32* %foo.i to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.i.0.sroa_cast), !dbg !324
  store volatile i32 0, i32* %foo.i, align 4, !dbg !321, !tbaa !276
  %call.i = tail call i8* @_Znwm(i64 16) #7, !dbg !325
  %0 = bitcast i8* %call.i to %class.trains*, !dbg !325
  tail call void @_ZN6trainsC2Ev(%class.trains* nonnull %0), !dbg !326
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !273, metadata !DIExpression()), !dbg !327
  %foo.i.0.foo.0.foo.0..i = load volatile i32, i32* %foo.i, align 4, !dbg !328, !tbaa !276
  %cmp.i = icmp eq i32 %foo.i.0.foo.0.foo.0..i, 0, !dbg !329
  br i1 %cmp.i, label %if.then, label %if.then.i, !dbg !330

if.then.i:                                        ; preds = %entry
  tail call void @abort() #8, !dbg !331
  unreachable, !dbg !331

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.i.0.sroa_cast), !dbg !332
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !312, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !317, metadata !DIExpression()) #9, !dbg !334
  %quux.i.0.sroa_cast = bitcast i32* %quux.i to i8*, !dbg !335
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %quux.i.0.sroa_cast), !dbg !335
  %foo.i5 = bitcast i8* %call.i to i32*, !dbg !336
  %1 = load i32, i32* %foo.i5, align 4, !dbg !336, !tbaa !297
  %bar.i = getelementptr inbounds i8, i8* %call.i, i64 4, !dbg !337
  %2 = bitcast i8* %bar.i to i32*, !dbg !337
  %3 = load i32, i32* %2, align 4, !dbg !337, !tbaa !301
  %add.i = add nsw i32 %3, %1, !dbg !338
  store volatile i32 %add.i, i32* %quux.i, align 4, !dbg !318, !tbaa !276
  %quux.i.0.quux.0.quux.0..i = load volatile i32, i32* %quux.i, align 4, !dbg !339, !tbaa !276
  %cmp.i6 = icmp sgt i32 %quux.i.0.quux.0.quux.0..i, 0, !dbg !341
  br i1 %cmp.i6, label %if.then.i7, label %if.else.i, !dbg !342

if.then.i7:                                       ; preds = %if.then
  %baz.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !343
  %4 = bitcast i8* %baz.i to i32*, !dbg !343
  %5 = load volatile i32, i32* %4, align 4, !dbg !343, !tbaa !304
  %qux.i = getelementptr inbounds i8, i8* %call.i, i64 12, !dbg !344
  %6 = bitcast i8* %qux.i to i32*, !dbg !344
  %7 = load volatile i32, i32* %6, align 4, !dbg !344, !tbaa !307
  %or.i = or i32 %7, %5, !dbg !345
  %and.i = and i32 %or.i, 11184810, !dbg !346
  %rem.i = urem i32 %and.i, 199, !dbg !347
  br label %if.end, !dbg !348

if.else.i:                                        ; preds = %if.then
  %quux.i.0.quux.0.quux.0.7.i = load volatile i32, i32* %quux.i, align 4, !dbg !349, !tbaa !276
  %cmp2.i = icmp sgt i32 %quux.i.0.quux.0.quux.0.7.i, 10000, !dbg !352
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i, !dbg !353

if.then3.i:                                       ; preds = %if.else.i
  tail call void @abort() #8, !dbg !354
  unreachable, !dbg !354

if.end.i:                                         ; preds = %if.else.i
  %mul.i = mul nsw i32 %3, %1, !dbg !355
  %rem6.i = srem i32 %mul.i, 200, !dbg !356
  br label %if.end, !dbg !357

if.end:                                           ; preds = %if.end.i, %if.then.i7
  %retval.0.i = phi i32 [ %rem.i, %if.then.i7 ], [ %rem6.i, %if.end.i ], !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %quux.i.0.sroa_cast), !dbg !359
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !311, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !311, metadata !DIExpression()), !dbg !323
  ret i32 %retval.0.i, !dbg !360
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { alwaysinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!249, !250, !251}
!llvm.ident = !{!252}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3)
!1 = !DIFile(filename: "/app/example.cpp", directory: "/app")
!2 = !{}
!3 = !{!4, !12, !16, !23, !27, !32, !34, !42, !46, !50, !64, !68, !72, !76, !80, !85, !89, !93, !97, !101, !109, !113, !117, !119, !123, !127, !132, !138, !142, !146, !148, !156, !160, !168, !170, !174, !178, !182, !186, !191, !196, !201, !202, !203, !204, !206, !207, !208, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!4 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !6, file: !11, line: 52)
!5 = !DINamespace(name: "std", scope: null)
!6 = !DISubprogram(name: "abs", scope: !7, file: !7, line: 840, type: !8, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/app")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIFile(filename: "/opt/compiler-explorer/gcc-8.2.0/lib/gcc/x86_64-linux-gnu/8.2.0/../../../../include/c++/8.2.0/bits/std_abs.h", directory: "/app")
!12 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !13, file: !15, line: 127)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !7, line: 62, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!15 = !DIFile(filename: "/opt/compiler-explorer/gcc-8.2.0/lib/gcc/x86_64-linux-gnu/8.2.0/../../../../include/c++/8.2.0/cstdlib", directory: "/app")
!16 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !17, file: !15, line: 128)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !7, line: 70, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 66, size: 128, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !19, identifier: "_ZTS6ldiv_t")
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !18, file: !7, line: 68, baseType: !21, size: 64)
!21 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !18, file: !7, line: 69, baseType: !21, size: 64, offset: 64)
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !24, file: !15, line: 130)
!24 = !DISubprogram(name: "abort", scope: !7, file: !7, line: 591, type: !25, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!25 = !DISubroutineType(types: !26)
!26 = !{null}
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !28, file: !15, line: 134)
!28 = !DISubprogram(name: "atexit", scope: !7, file: !7, line: 595, type: !29, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!29 = !DISubroutineType(types: !30)
!30 = !{!10, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !33, file: !15, line: 137)
!33 = !DISubprogram(name: "at_quick_exit", scope: !7, file: !7, line: 600, type: !29, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !35, file: !15, line: 140)
!35 = !DISubprogram(name: "atof", scope: !7, file: !7, line: 101, type: !36, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !39}
!38 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !43, file: !15, line: 141)
!43 = !DISubprogram(name: "atoi", scope: !7, file: !7, line: 104, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!44 = !DISubroutineType(types: !45)
!45 = !{!10, !39}
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !47, file: !15, line: 142)
!47 = !DISubprogram(name: "atol", scope: !7, file: !7, line: 107, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!48 = !DISubroutineType(types: !49)
!49 = !{!21, !39}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !51, file: !15, line: 143)
!51 = !DISubprogram(name: "bsearch", scope: !7, file: !7, line: 820, type: !52, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55, !55, !57, !57, !60}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 62, baseType: !59)
!58 = !DIFile(filename: "/opt/compiler-explorer/clang-7.0.0/lib/clang/7.0.0/include/stddef.h", directory: "/app")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !7, line: 808, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!10, !55, !55}
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !65, file: !15, line: 144)
!65 = !DISubprogram(name: "calloc", scope: !7, file: !7, line: 542, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!66 = !DISubroutineType(types: !67)
!67 = !{!54, !57, !57}
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !69, file: !15, line: 145)
!69 = !DISubprogram(name: "div", scope: !7, file: !7, line: 852, type: !70, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!70 = !DISubroutineType(types: !71)
!71 = !{!13, !10, !10}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !73, file: !15, line: 146)
!73 = !DISubprogram(name: "exit", scope: !7, file: !7, line: 617, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !10}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !77, file: !15, line: 147)
!77 = !DISubprogram(name: "free", scope: !7, file: !7, line: 565, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !54}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !81, file: !15, line: 148)
!81 = !DISubprogram(name: "getenv", scope: !7, file: !7, line: 634, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !39}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !86, file: !15, line: 149)
!86 = !DISubprogram(name: "labs", scope: !7, file: !7, line: 841, type: !87, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!87 = !DISubroutineType(types: !88)
!88 = !{!21, !21}
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !90, file: !15, line: 150)
!90 = !DISubprogram(name: "ldiv", scope: !7, file: !7, line: 854, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!91 = !DISubroutineType(types: !92)
!92 = !{!17, !21, !21}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !94, file: !15, line: 151)
!94 = !DISubprogram(name: "malloc", scope: !7, file: !7, line: 539, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!95 = !DISubroutineType(types: !96)
!96 = !{!54, !57}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !98, file: !15, line: 153)
!98 = !DISubprogram(name: "mblen", scope: !7, file: !7, line: 922, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!99 = !DISubroutineType(types: !100)
!100 = !{!10, !39, !57}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !102, file: !15, line: 154)
!102 = !DISubprogram(name: "mbstowcs", scope: !7, file: !7, line: 933, type: !103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!103 = !DISubroutineType(types: !104)
!104 = !{!57, !105, !108, !57}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !110, file: !15, line: 155)
!110 = !DISubprogram(name: "mbtowc", scope: !7, file: !7, line: 925, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!111 = !DISubroutineType(types: !112)
!112 = !{!10, !105, !108, !57}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !114, file: !15, line: 157)
!114 = !DISubprogram(name: "qsort", scope: !7, file: !7, line: 830, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !54, !57, !57, !60}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !118, file: !15, line: 160)
!118 = !DISubprogram(name: "quick_exit", scope: !7, file: !7, line: 623, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !120, file: !15, line: 163)
!120 = !DISubprogram(name: "rand", scope: !7, file: !7, line: 453, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!121 = !DISubroutineType(types: !122)
!122 = !{!10}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !124, file: !15, line: 164)
!124 = !DISubprogram(name: "realloc", scope: !7, file: !7, line: 550, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!125 = !DISubroutineType(types: !126)
!126 = !{!54, !54, !57}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !128, file: !15, line: 165)
!128 = !DISubprogram(name: "srand", scope: !7, file: !7, line: 455, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131}
!131 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !133, file: !15, line: 166)
!133 = !DISubprogram(name: "strtod", scope: !7, file: !7, line: 117, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!134 = !DISubroutineType(types: !135)
!135 = !{!38, !108, !136}
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !139, file: !15, line: 167)
!139 = !DISubprogram(name: "strtol", scope: !7, file: !7, line: 176, type: !140, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!140 = !DISubroutineType(types: !141)
!141 = !{!21, !108, !136, !10}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !143, file: !15, line: 168)
!143 = !DISubprogram(name: "strtoul", scope: !7, file: !7, line: 180, type: !144, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!144 = !DISubroutineType(types: !145)
!145 = !{!59, !108, !136, !10}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !147, file: !15, line: 169)
!147 = !DISubprogram(name: "system", scope: !7, file: !7, line: 784, type: !44, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !149, file: !15, line: 171)
!149 = !DISubprogram(name: "wcstombs", scope: !7, file: !7, line: 936, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!150 = !DISubroutineType(types: !151)
!151 = !{!57, !152, !153, !57}
!152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !157, file: !15, line: 172)
!157 = !DISubprogram(name: "wctomb", scope: !7, file: !7, line: 929, type: !158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{!10, !84, !107}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !162, file: !15, line: 200)
!161 = !DINamespace(name: "__gnu_cxx", scope: null)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !7, line: 80, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 76, size: 128, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !164, identifier: "_ZTS7lldiv_t")
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !163, file: !7, line: 78, baseType: !166, size: 64)
!166 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !163, file: !7, line: 79, baseType: !166, size: 64, offset: 64)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !169, file: !15, line: 206)
!169 = !DISubprogram(name: "_Exit", scope: !7, file: !7, line: 629, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !171, file: !15, line: 210)
!171 = !DISubprogram(name: "llabs", scope: !7, file: !7, line: 844, type: !172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!172 = !DISubroutineType(types: !173)
!173 = !{!166, !166}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !175, file: !15, line: 216)
!175 = !DISubprogram(name: "lldiv", scope: !7, file: !7, line: 858, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!176 = !DISubroutineType(types: !177)
!177 = !{!162, !166, !166}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !179, file: !15, line: 227)
!179 = !DISubprogram(name: "atoll", scope: !7, file: !7, line: 112, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!180 = !DISubroutineType(types: !181)
!181 = !{!166, !39}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !183, file: !15, line: 228)
!183 = !DISubprogram(name: "strtoll", scope: !7, file: !7, line: 200, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!184 = !DISubroutineType(types: !185)
!185 = !{!166, !108, !136, !10}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !187, file: !15, line: 229)
!187 = !DISubprogram(name: "strtoull", scope: !7, file: !7, line: 205, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !108, !136, !10}
!190 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !192, file: !15, line: 231)
!192 = !DISubprogram(name: "strtof", scope: !7, file: !7, line: 123, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !108, !136}
!195 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !197, file: !15, line: 232)
!197 = !DISubprogram(name: "strtold", scope: !7, file: !7, line: 126, type: !198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !108, !136}
!200 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !162, file: !15, line: 240)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !169, file: !15, line: 242)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !171, file: !15, line: 244)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !205, file: !15, line: 245)
!205 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !161, file: !15, line: 213, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !175, file: !15, line: 246)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !179, file: !15, line: 248)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !192, file: !15, line: 249)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !183, file: !15, line: 250)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !187, file: !15, line: 251)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !197, file: !15, line: 252)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !24, file: !213, line: 38)
!213 = !DIFile(filename: "/opt/compiler-explorer/gcc-8.2.0/lib/gcc/x86_64-linux-gnu/8.2.0/../../../../include/c++/8.2.0/stdlib.h", directory: "/app")
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !28, file: !213, line: 39)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !73, file: !213, line: 40)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !33, file: !213, line: 43)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !118, file: !213, line: 46)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !13, file: !213, line: 51)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !17, file: !213, line: 52)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !221, file: !213, line: 54)
!221 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !5, file: !11, line: 102, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !224}
!224 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !35, file: !213, line: 55)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !43, file: !213, line: 56)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !47, file: !213, line: 57)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !51, file: !213, line: 58)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !65, file: !213, line: 59)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !205, file: !213, line: 60)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !77, file: !213, line: 61)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !81, file: !213, line: 62)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !86, file: !213, line: 63)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !90, file: !213, line: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !94, file: !213, line: 65)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !98, file: !213, line: 67)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !102, file: !213, line: 68)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !110, file: !213, line: 69)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !114, file: !213, line: 71)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !120, file: !213, line: 72)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !124, file: !213, line: 73)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !128, file: !213, line: 74)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !133, file: !213, line: 75)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !139, file: !213, line: 76)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !143, file: !213, line: 77)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !147, file: !213, line: 78)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !149, file: !213, line: 80)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !157, file: !213, line: 81)
!249 = !{i32 2, !"Dwarf Version", i32 4}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{i32 1, !"wchar_size", i32 4}
!252 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!253 = distinct !DISubprogram(name: "alloc", linkageName: "_Z5allocv", scope: !1, file: !1, line: 28, type: !254, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !271)
!254 = !DISubroutineType(types: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "trains", file: !1, line: 3, size: 128, flags: DIFlagTypePassByValue, elements: !258, identifier: "_ZTS6trains")
!258 = !{!259, !260, !261, !263, !264, !268}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !257, file: !1, line: 5, baseType: !10, size: 32, flags: DIFlagPublic)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !257, file: !1, line: 6, baseType: !10, size: 32, offset: 32, flags: DIFlagPublic)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "baz", scope: !257, file: !1, line: 7, baseType: !262, size: 32, offset: 64, flags: DIFlagPublic)
!262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "qux", scope: !257, file: !1, line: 8, baseType: !262, size: 32, offset: 96, flags: DIFlagPublic)
!264 = !DISubprogram(name: "trains", scope: !257, file: !1, line: 9, type: !265, isLocal: false, isDefinition: false, scopeLine: 9, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!268 = !DISubprogram(name: "something", linkageName: "_ZN6trains9somethingEv", scope: !257, file: !1, line: 16, type: !269, isLocal: false, isDefinition: false, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!269 = !DISubroutineType(types: !270)
!270 = !{!10, !267}
!271 = !{!272, !273}
!272 = !DILocalVariable(name: "foo", scope: !253, file: !1, line: 29, type: !262)
!273 = !DILocalVariable(name: "p", scope: !253, file: !1, line: 30, type: !256)
!274 = !DILocation(line: 29, column: 3, scope: !253)
!275 = !DILocation(line: 29, column: 16, scope: !253)
!276 = !{!277, !277, i64 0}
!277 = !{!"int", !278, i64 0}
!278 = !{!"omnipotent char", !279, i64 0}
!279 = !{!"Simple C++ TBAA"}
!280 = !DILocation(line: 30, column: 13, scope: !253)
!281 = !DILocation(line: 30, column: 17, scope: !253)
!282 = !DILocation(line: 30, column: 9, scope: !253)
!283 = !DILocation(line: 31, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !253, file: !1, line: 31, column: 7)
!285 = !DILocation(line: 31, column: 11, scope: !284)
!286 = !DILocation(line: 31, column: 7, scope: !253)
!287 = !DILocation(line: 32, column: 5, scope: !284)
!288 = !DILocation(line: 34, column: 1, scope: !253)
!289 = !DILocation(line: 33, column: 3, scope: !253)
!290 = distinct !DISubprogram(name: "trains", linkageName: "_ZN6trainsC2Ev", scope: !257, file: !1, line: 9, type: !265, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !264, retainedNodes: !291)
!291 = !{!292}
!292 = !DILocalVariable(name: "this", arg: 1, scope: !290, type: !256, flags: DIFlagArtificial | DIFlagObjectPointer)
!293 = !DILocation(line: 0, scope: !290)
!294 = !DILocation(line: 10, column: 5, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !1, line: 9, column: 12)
!296 = !DILocation(line: 10, column: 9, scope: !295)
!297 = !{!298, !277, i64 0}
!298 = !{!"_ZTS6trains", !277, i64 0, !277, i64 4, !277, i64 8, !277, i64 12}
!299 = !DILocation(line: 11, column: 5, scope: !295)
!300 = !DILocation(line: 11, column: 9, scope: !295)
!301 = !{!298, !277, i64 4}
!302 = !DILocation(line: 12, column: 5, scope: !295)
!303 = !DILocation(line: 12, column: 9, scope: !295)
!304 = !{!298, !277, i64 8}
!305 = !DILocation(line: 13, column: 5, scope: !295)
!306 = !DILocation(line: 13, column: 9, scope: !295)
!307 = !{!298, !277, i64 12}
!308 = !DILocation(line: 14, column: 3, scope: !290)
!309 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !121, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !310)
!310 = !{!311, !312}
!311 = !DILocalVariable(name: "toreturn", scope: !309, file: !1, line: 37, type: !10)
!312 = !DILocalVariable(name: "xyzzy", scope: !313, file: !1, line: 38, type: !256)
!313 = distinct !DILexicalBlock(scope: !309, file: !1, line: 38, column: 12)
!314 = !DILocalVariable(name: "quux", scope: !315, file: !1, line: 17, type: !262)
!315 = distinct !DISubprogram(name: "something", linkageName: "_ZN6trains9somethingEv", scope: !257, file: !1, line: 16, type: !269, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !268, retainedNodes: !316)
!316 = !{!317, !314}
!317 = !DILocalVariable(name: "this", arg: 1, scope: !315, type: !256, flags: DIFlagArtificial | DIFlagObjectPointer)
!318 = !DILocation(line: 17, column: 18, scope: !315, inlinedAt: !319)
!319 = distinct !DILocation(line: 39, column: 23, scope: !320)
!320 = distinct !DILexicalBlock(scope: !313, file: !1, line: 38, column: 29)
!321 = !DILocation(line: 29, column: 16, scope: !253, inlinedAt: !322)
!322 = distinct !DILocation(line: 38, column: 20, scope: !313)
!323 = !DILocation(line: 37, column: 7, scope: !309)
!324 = !DILocation(line: 29, column: 3, scope: !253, inlinedAt: !322)
!325 = !DILocation(line: 30, column: 13, scope: !253, inlinedAt: !322)
!326 = !DILocation(line: 30, column: 17, scope: !253, inlinedAt: !322)
!327 = !DILocation(line: 30, column: 9, scope: !253, inlinedAt: !322)
!328 = !DILocation(line: 31, column: 7, scope: !284, inlinedAt: !322)
!329 = !DILocation(line: 31, column: 11, scope: !284, inlinedAt: !322)
!330 = !DILocation(line: 31, column: 7, scope: !253, inlinedAt: !322)
!331 = !DILocation(line: 32, column: 5, scope: !284, inlinedAt: !322)
!332 = !DILocation(line: 34, column: 1, scope: !253, inlinedAt: !322)
!333 = !DILocation(line: 38, column: 12, scope: !313)
!334 = !DILocation(line: 0, scope: !315, inlinedAt: !319)
!335 = !DILocation(line: 17, column: 5, scope: !315, inlinedAt: !319)
!336 = !DILocation(line: 17, column: 25, scope: !315, inlinedAt: !319)
!337 = !DILocation(line: 17, column: 31, scope: !315, inlinedAt: !319)
!338 = !DILocation(line: 17, column: 29, scope: !315, inlinedAt: !319)
!339 = !DILocation(line: 18, column: 9, scope: !340, inlinedAt: !319)
!340 = distinct !DILexicalBlock(scope: !315, file: !1, line: 18, column: 9)
!341 = !DILocation(line: 18, column: 14, scope: !340, inlinedAt: !319)
!342 = !DILocation(line: 18, column: 9, scope: !315, inlinedAt: !319)
!343 = !DILocation(line: 19, column: 16, scope: !340, inlinedAt: !319)
!344 = !DILocation(line: 19, column: 22, scope: !340, inlinedAt: !319)
!345 = !DILocation(line: 19, column: 20, scope: !340, inlinedAt: !319)
!346 = !DILocation(line: 19, column: 27, scope: !340, inlinedAt: !319)
!347 = !DILocation(line: 19, column: 39, scope: !340, inlinedAt: !319)
!348 = !DILocation(line: 19, column: 7, scope: !340, inlinedAt: !319)
!349 = !DILocation(line: 21, column: 11, scope: !350, inlinedAt: !319)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 21, column: 11)
!351 = distinct !DILexicalBlock(scope: !340, file: !1, line: 20, column: 10)
!352 = !DILocation(line: 21, column: 16, scope: !350, inlinedAt: !319)
!353 = !DILocation(line: 21, column: 11, scope: !351, inlinedAt: !319)
!354 = !DILocation(line: 22, column: 9, scope: !350, inlinedAt: !319)
!355 = !DILocation(line: 23, column: 19, scope: !351, inlinedAt: !319)
!356 = !DILocation(line: 23, column: 26, scope: !351, inlinedAt: !319)
!357 = !DILocation(line: 23, column: 7, scope: !351, inlinedAt: !319)
!358 = !DILocation(line: 0, scope: !351, inlinedAt: !319)
!359 = !DILocation(line: 25, column: 3, scope: !315, inlinedAt: !319)
!360 = !DILocation(line: 41, column: 3, scope: !309)
