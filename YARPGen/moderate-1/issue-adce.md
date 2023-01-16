# Description

* Version
  * First tested 13.0.0
  * Confirmed on main as well
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

ADCE (Aggressive Dead Code Elimination) works out that the debug info related to
(already removed) macro invocation `min(x, x)` is dead, so it drops this
associated debug info.

## IR before `ADCE`

```llvm
if.then:                                          ; preds = %cond.end29
  call void @llvm.dbg.value(metadata i16 %var_11, metadata !41, metadata !DIExpression())
  %conv39 = zext i1 %var_8 to i32
  call void @llvm.dbg.value(metadata i32 %conv39, metadata !45, metadata !DIExpression())
  %cmp40 = icmp ult i32 %conv2, %conv39
  %cond47 = select i1 %cmp40, i32 %conv2, i32 %conv39
  call void @llvm.dbg.value(metadata i8 %var_14, metadata !46, metadata !DIExpression())
  call void @llvm.dbg.value(metadata i8 %var_14, metadata !48, metadata !DIExpression())
  %div = sdiv i32 %cond47, %conv
  %tobool61.not = icmp eq i32 %div, 0
  br i1 %tobool61.not, label %cond.false83, label %cond.true63
```

## IR after `ADCE`

```llvm
if.then:                                          ; preds = %cond.end29
  call void @llvm.dbg.value(metadata i16 %var_11, metadata !41, metadata !DIExpression())
  %conv39 = zext i1 %var_8 to i32
  call void @llvm.dbg.value(metadata i32 %conv39, metadata !45, metadata !DIExpression())
  %cmp40 = icmp ult i32 %conv2, %conv39
  %cond47 = select i1 %cmp40, i32 %conv2, i32 %conv39
  %div = sdiv i32 %cond47, %conv
  %tobool61.not = icmp eq i32 %div, 0
  br i1 %tobool61.not, label %cond.false83, label %cond.true63
```

# Issue

* Not filed yet
* No existing issues found
* Upstream likely disinterested, dead code removed correctly
