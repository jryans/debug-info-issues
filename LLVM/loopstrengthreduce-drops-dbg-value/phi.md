# `foo`

## Before

Computing generations: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 3, gen 0
  asm ln 41, prod ln 3.37, live ln 3, gen 1

## After baseline

Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 26, prod ln 3.24, live ln 4, gen 1

Building live ranges: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
    prod ln 2, gen 0 →
    prod ln 3, gen 1
  asm ln 26, prod ln 3.24, live ln 4, gen 1
    prod ln 3, gen 1 →
    prod ln ∞, gen ∞

## After new

Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 24, prod ln 3.24, live ln 4, gen 1  NEW! REMOVED!
  asm ln 26, prod ln 3.24, live ln 4, gen 2
  asm ln 15, prod ln 3.24, live ln 3, gen 3  NEW! REMOVED!
  asm ln 16, prod ln 3.24, live ln 3, gen 4  NEW! REMOVED!

Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 26, prod ln 3.24, live ln 4, gen 1
