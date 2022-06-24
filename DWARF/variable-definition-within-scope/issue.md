# Description

DWARF debug info [does not contain][roc] any data detailing where a source
variable first becomes live in the middle of a given block.

This complicates debug info metrics like "source variable bytes covered" because
they will never reach 100% (since for some bytes, the variables aren't live, and
it's thus correct to not cover them).

LLVM IR however is fully aware when a source variable first becomes live, so
finding a way to pass this through to DWARF would improve metrics.

Thinking a bit further though... why don't existing tools try going from
declaration line to address and treat that as the start of the live window? ...
Actually, we want to know when the variable is first _defined_, and that is not
explicitly captured in DWARF debug info.

## IR

```llvm
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !18, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i8** %argv, metadata !19, metadata !DIExpression()), !dbg !22
  %tobool = icmp ne i32 %argc, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.else, !dbg !25

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %argc, metadata !20, metadata !DIExpression()), !dbg !22
  br label %if.end, !dbg !26

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 2, metadata !20, metadata !DIExpression()), !dbg !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bob.0 = phi i32 [ %argc, %if.then ], [ 2, %if.else ], !dbg !28
  call void @llvm.dbg.value(metadata i32 %bob.0, metadata !20, metadata !DIExpression()), !dbg !22
  %add1 = add nsw i32 %argc, %bob.0, !dbg !29
  %add2 = add nsw i32 %add1, 1, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add2, metadata !21, metadata !DIExpression()), !dbg !22
  %add3 = add nsw i32 %bob.0, %add2, !dbg !31
  ret i32 %add3, !dbg !32
}
```

## Debug info

```
0x00000032:   DW_TAG_subprogram
                DW_AT_low_pc    (0x0000000100003f90)
                DW_AT_high_pc   (0x0000000100003fad)
                DW_AT_frame_base        (DW_OP_reg6 RBP)
                DW_AT_call_all_calls    (true)
                DW_AT_name      ("main")
                DW_AT_decl_line (1)
                DW_AT_prototyped        (true)
                DW_AT_type      (0x00000084 "int")
                DW_AT_external  (true)
                DW_AT_APPLE_optimized   (true)

0x0000004b:     DW_TAG_formal_parameter
                  DW_AT_location        (0x00000000:
                     [0x0000000100003f94, 0x0000000100003fa6): DW_OP_reg5 RDI
                     [0x0000000100003fa6, 0x0000000100003fad): DW_OP_entry_value(DW_OP_reg5 RDI), DW_OP_stack_value)
                  DW_AT_name    ("argc")
                  DW_AT_decl_line       (1)
                  DW_AT_type    (0x00000084 "int")

0x0000005a:     DW_TAG_formal_parameter
                  DW_AT_name    ("argv")
                  DW_AT_decl_line       (1)
                  DW_AT_type    (0x0000008b "char**")

0x00000065:     DW_TAG_variable
                  DW_AT_location        (0x00000039:
                     [0x0000000100003f99, 0x0000000100003f9d): DW_OP_reg5 RDI
                     [0x0000000100003f9d, 0x0000000100003fa4): DW_OP_consts +2, DW_OP_stack_value
                     [0x0000000100003fa4, 0x0000000100003fab): DW_OP_reg0 RAX)
                  DW_AT_name    ("bob")
                  DW_AT_decl_line       (2)
                  DW_AT_type    (0x00000084 "int")

0x00000074:     DW_TAG_variable
                  DW_AT_location        (0x00000084:
                     [0x0000000100003fa9, 0x0000000100003fad): DW_OP_reg5 RDI)
                  DW_AT_name    ("tom")
                  DW_AT_decl_line       (3)
                  DW_AT_type    (0x00000084 "int")
```

```
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000100003f90      1      0      1   0             0  is_stmt
0x0000000100003f94      4      7      1   0             0  is_stmt prologue_end
0x0000000100003f97      4      7      1   0             0 
0x0000000100003f99      0      7      1   0             0
0x0000000100003f9b      6      3      1   0             0  is_stmt
0x0000000100003f9d      0      3      1   0             0 
0x0000000100003fa4      9     14      1   0             0  is_stmt
0x0000000100003fa6      9     20      1   0             0 
0x0000000100003fa9     10     14      1   0             0  is_stmt
0x0000000100003fab     10      3      1   0             0
0x0000000100003fad     10      3      1   0             0  end_sequence
```

## Debugger view

```
(lldb) dis -n main -m

** 1    int main(int argc, char* argv[]) {

a.out`main:
a.out[0x100003f90] <+0>:  push   rbp
a.out[0x100003f91] <+1>:  mov    rbp, rsp

   2      int bob;
   3      int tom;
** 4      if (argc) {
   5        bob = argc;

a.out[0x100003f94] <+4>:  cmp    edi, 0x0
a.out[0x100003f97] <+7>:  je     0x100003f9d               ; <+13> at example.c

   1    int main(int argc, char* argv[]) {

a.out[0x100003f99] <+9>:  mov    eax, edi

** 6      } else {
   7        bob = argc + 2;
   8      }

a.out[0x100003f9b] <+11>: jmp    0x100003fa4               ; <+20> at example.c:9:14

   1    int main(int argc, char* argv[]) {

a.out[0x100003f9d] <+13>: mov    eax, 0x2
a.out[0x100003fa2] <+18>: jmp    0x100003fa4               ; <+20> at example.c:9:14

** 9      tom = argc + bob + 1;

a.out[0x100003fa4] <+20>: add    edi, eax
a.out[0x100003fa6] <+22>: add    edi, 0x1

** 10     return bob + tom;
   11   }

a.out[0x100003fa9] <+25>: add    eax, edi
a.out[0x100003fab] <+27>: pop    rbp
a.out[0x100003fac] <+28>: ret
```

[roc]:
  https://robert.ocallahan.org/2018/11/comparing-quality-of-debug-information.html
