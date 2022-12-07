# Issue

SROA and further passes end up adding `undef` debug info to `func_1`, though
this seems mainly centered around various `i` loop variables that are considered
dead code with no observable effect.

## IR before `SROA`

```llvm
for.body8:                                        ; preds = %for.cond5
  %12 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12)
  call void @llvm.dbg.declare(metadata i32* %i9, metadata !205, metadata !DIExpression())
  %13 = load i32, i32* @g_13, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [1 x i64], [1 x i64]* %l_16, i64 0, i64 %idxprom10
  %14 = load i64, i64* %arrayidx11, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %if.then, label %if.end
```

## IR after `SROA`

```llvm
for.body8:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* undef, metadata !205, metadata !DIExpression())
  %5 = load i32, i32* @g_13, align 4
  %idxprom10 = sext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds [1 x i64], [1 x i64]* %l_16, i64 0, i64 %idxprom10
  %6 = load i64, i64* %arrayidx11, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then, label %if.end
```

# Issue

* Not filed yet
* Have not checked upstream issues yet
* Upstream likely disinterested, dead code removed correctly
