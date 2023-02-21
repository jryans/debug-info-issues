# `example`

## Before

Computing generations: `i` (decl src ln 3)
  asm ln 24, prod ln 3.12, live ln 3, gen 0
  asm ln 59, prod ln 3.27, live ln 3, gen 1

## After baseline

Computing generations: `i` (decl src ln 3)
  asm ln 18, prod ln 3.0, live ln 3, gen 0
  asm ln 47, prod ln 3.21, live ln 3, gen 1

Building live ranges: `i` (decl src ln 3)
  asm ln 18, prod ln 3.0, live ln 3, gen 0
    prod ln 3, gen 0 →
    prod ln 3, gen 1
  asm ln 47, prod ln 3.21, live ln 3, gen 1
    prod ln 3, gen 1 →
    prod ln ∞, gen ∞

## After new

Computing generations: `i` (decl src ln 3)
  asm ln 18, prod ln 3.0, live ln 3, gen 0
  asm ln 37, prod ln 3.21, live ln 4, gen 1  NEW! REMOVED!
  asm ln 47, prod ln 3.21, live ln 3, gen 2
