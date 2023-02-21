# `cb_insert`

## Before

Computing generations: `c` (decl src ln 65)
  asm ln 172, prod ln 92.7, live ln 93, gen 0
  asm ln 283, prod ln 113.9, live ln 114, gen 1
Computing generations: `newbyte` (decl src ln 64)
  asm ln 86, prod ln 80.16, live ln 80, gen 0
  asm ln 120, prod ln 80.44, live ln 80, gen 1
Computing generations: `wherep` (decl src ln 67)
  asm ln 201, prod ln 100.16, live ln 101, gen 0
  asm ln 300, prod ln 115.23, live ln 101, gen 1

## After baseline

Computing generations: `c` (decl src ln 65)
  asm ln 92, prod ln 81.9, live ln 93, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm ln 43, prod ln 64.0, live ln 80, gen 0
  asm ln 67, prod ln 80.44, live ln 80, gen 1
Computing generations: `wherep` (decl src ln 67)
  asm ln 108, prod ln 71.11, live ln 101, gen 0
  asm ln 163, prod ln 115.23, live ln 116, gen 1

Building live ranges: `c` (decl src ln 65)
  asm ln 92, prod ln 81.9, live ln 93, gen 0
    prod ln 81, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `newbyte` (decl src ln 64)
  asm ln 43, prod ln 64.0, live ln 80, gen 0
    prod ln 64, gen 0 →
    prod ln 80, gen 1
  asm ln 67, prod ln 80.44, live ln 80, gen 1
    prod ln 80, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `wherep` (decl src ln 67)
  asm ln 108, prod ln 71.11, live ln 101, gen 0
    prod ln 71, gen 0 →
    prod ln 115, gen 1
  asm ln 163, prod ln 115.23, live ln 116, gen 1
    prod ln 115, gen 1 →
    prod ln ∞, gen ∞

## After new

Computing generations: `c` (decl src ln 65)
  asm ln 92, prod ln 81.9, live ln 93, gen 0
  asm ln 153, prod ln 113.26, live ln 114, gen 1   NEW!
Computing generations: `newbyte` (decl src ln 64)
  asm ln 43, prod ln 64.0, live ln 80, gen 0
  asm ln 67, prod ln 80.44, live ln 80, gen 1
  asm ln 54, prod ln 80.44, live ln 81, gen 2      NEW!
Computing generations: `wherep` (decl src ln 67)
  asm ln 169, prod ln 115.23, live ln 67, gen 0    NEW!
  asm ln 108, prod ln 71.11, live ln 101, gen 1
  asm ln 113, prod ln 71.11, live ln 105, gen 2    NEW!
  asm ln 163, prod ln 115.23, live ln 116, gen 3

Unable to check, need to reach more states
