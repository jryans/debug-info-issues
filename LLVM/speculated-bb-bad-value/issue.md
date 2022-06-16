# Issue

[[DebugInfo@O2][Dexter] Speculated BB presents illegal variable value to debugger](https://github.com/llvm/llvm-project/issues/38111)

# Description

Speculating a basic block into a select IR insn causes an illegal variable value
to be presented to the debugger. Taking the code below, compiled -O2 -g for
x86_64 with trunk, on the line "if (read == 4)" both gdb and lldb report that
the value of "result" is two, where it should be zero.

The value two isn't calculated in the execution of this program, and when
compiled with -O0 "result" is correctly reported zero on that line. More
interestingly, the illegal value doesn't actually seem to be read from a
speculated instruction, "result" is reported as two from the moment the volatile
loads are done.

I get the impression that something DWARFy is going wrong, as the DW_AT_location
expression for "result" looks way more complicated that it needs to be.

## IR before `SimplifyCFG`

```llvm
define i32 @main() {
  ...
  %5 = icmp eq i32 %3, 4, !dbg line: 7
  br i1 %5, label %6, label %8, !dbg line: 7

  %7 = add nsw i32 %4, 2, !dbg line: 8
  call void @llvm.dbg.value(metadata i32 %7, "result", ...), !dbg line: 6
  br label %10, !dbg line: 9

  %9 = add nsw i32 %4, -2, !dbg line: 10
  call void @llvm.dbg.value(metadata i32 %9, "result", ...), !dbg line: 6
  br label %10

  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i32 %11, "result", ...), !dbg line: 6
  ret i32 %11, !dbg line: 13
}
```

## IR after `SimplifyCFG`

```llvm
define i32 @main() {
  ...
  %5 = icmp eq i32 %3, 4, !dbg line: 7
  %6 = add nsw i32 %4, 2, !dbg line: 8
  call void @llvm.dbg.value(metadata i32 %6, "result", ...), !dbg line: 6
  %7 = add nsw i32 %4, -2, !dbg line: 10
  call void @llvm.dbg.value(metadata i32 %7, "result", ...), !dbg line: 6
  %8 = select i1 %5, i32 %6, i32 %7, !dbg line: 7
  call void @llvm.dbg.value(metadata i32 %8, "result", ...), !dbg line: 6
  ret i32 %8, !dbg line: 13
}
```

## Debug info for `result`

```
$ $(brew --prefix llvm)/bin/llvm-dwarfdump a.out.dSYM/Contents/Resources/DWARF/a.out -n result
DW_TAG_variable
  DW_AT_location   (0x00000023:
    [0x0000000100003fa1, 0x0000000100003fa1): 
      DW_OP_consts +0, DW_OP_stack_value
    [0x0000000100003fa1, 0x0000000100003fa1): 
      DW_OP_breg2 RCX+2, DW_OP_constu 0xffffffff, 
      DW_OP_and, DW_OP_stack_value
    [0x0000000100003fa1, 0x0000000100003fad): 
      DW_OP_breg2 RCX+0, DW_OP_constu 0xffffffff, 
      DW_OP_and, DW_OP_constu 0x2, 
      DW_OP_minus, DW_OP_stack_value
    [0x0000000100003fad, 0x0000000100003faf): 
      DW_OP_reg0 RAX)
  DW_AT_name       ("result")
  DW_AT_decl_line  (6)
  DW_AT_type       (0x0000007f "int")
```

## Debugger view

```
(lldb) dis -n main -m

** 1   	int main() {

a.out`main:
    0x100003f90 <+0>:  push   rbp
    0x100003f91 <+1>:  mov    rbp, rsp

** 2   	  volatile int foo = 4;

    0x100003f94 <+4>:  mov    dword ptr [rbp - 0x4], 0x4

** 3   	  int read = foo;

    0x100003f9b <+11>: mov    eax, dword ptr [rbp - 0x4]

** 4   	  int read1 = foo;
   5
   6   	  int result = 0;

    0x100003f9e <+14>: mov    ecx, dword ptr [rbp - 0x4]

-> 7   	  if (read == 4) { // debugger shows `result: 2` here
-> 8   	    result = read1 + 2;
-> 9   	  } else {

->  0x100003fa1 <+17>: xor    edx, edx
    0x100003fa3 <+19>: cmp    eax, 0x4
    0x100003fa6 <+22>: sete   dl
    0x100003fa9 <+25>: lea    eax, [rcx + 4*rdx - 0x2]

   11  	  }
   12
** 13  	  return result;
   14  	}

    0x100003fad <+29>: pop    rbp
    0x100003fae <+30>: ret

(lldb) reg read
General Purpose Registers:
       rax = 0x0000000000000004
       rbx = 0x00000001000c0060
       rcx = 0x0000000000000004
       rdx = 0x00007ff7bfefdf88
       rdi = 0x0000000000000001
       rsi = 0x00007ff7bfefdf78
       rbp = 0x00007ff7bfefde40
       rsp = 0x00007ff7bfefde40
        r8 = 0x00000000000de67e
        r9 = 0xffffffff00000000
       r10 = 0x0000000000000000
       r11 = 0x0000000000000246
       r12 = 0x00000001000883a0  dyld`_NSConcreteStackBlock
       r13 = 0x00007ff7bfefdef8
       r14 = 0x0000000100003f90  a.out`main at example.c:1
       r15 = 0x0000000100074010  dyld`dyld4::sConfigBuffer
       rip = 0x0000000100003fa1  a.out`main + 17 at example.c:7:12
    rflags = 0x0000000000000246
        cs = 0x000000000000002b
        fs = 0x0000000000000000
        gs = 0x0000000000000000
```

# Reproduction

1. Use official release of clang 7.0.0
2. `clang -g -02 -mllvm -opt-bisect-limit=...` with 10 vs. 11 for before vs.
   after

# Issue resolution

At the time of the issue (2018), LLVM didn't have a way to express debug values
involving multiple SSA locations, such as this case with speculation via a
`select` instruction, so the only choice back then was to drop the debug info as
part of `SimplifyCFG` (where the instruction change took place).

```diff
   // Move all 'aggressive' instructions, which are defined in the
   // conditional parts of the if's up to the dominating block.
   if (IfBlock1) {
     for (auto &I : *IfBlock1) {
       I.dropUnknownNonDebugMetadata();
+      dropDebugUsers(I);
     }
     DomBlock->getInstList().splice(InsertPt->getIterator(),
                                    IfBlock1->getInstList(), IfBlock1->begin(),
                                    IfBlock1->getTerminator()->getIterator());
   }
   if (IfBlock2) {
     for (auto &I : *IfBlock2) {
       I.dropUnknownNonDebugMetadata();
+      dropDebugUsers(I);
     }
     DomBlock->getInstList().splice(InsertPt->getIterator(),
                                    IfBlock2->getInstList(), IfBlock2->begin(),
                                    IfBlock2->getTerminator()->getIterator());
   }
```

# Commentary

* Adds common utils
* Debug info lost
* Blocked on insufficient expressiveness in LLVM IR

An somewhat interesting case in terms of our desire to find what's wrong in
debug info handling... Our (future) tooling would presumably mark this pass as
removing debug info, but that was also the only correct option without a larger
rework of LLVM debug metadata.
