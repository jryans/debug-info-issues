#!/usr/bin/env bash

# Must use absolute paths, this will be run from a temp directory
source "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/vars.sh"

rm -rf reduce.tmp
mkdir reduce.tmp

ulimit -t 2

if
  # Check for required source characteristics
  grep -F 'int day = tm->tm_mday;' ${SRC_FILE} && \
  grep -E 'return.*\bday' ${SRC_FILE} && \
  # Ensure the reduced program parses and compiles in general
  ${CLANG} -Weverything -O0 -c ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} -o /dev/null 2> reduce.tmp/cc-O0 && \
  # Avoid various forms of bad behaviour
  ! grep -F 'unused variable' reduce.tmp/cc-O0 && \
  ! grep -F 'expression result unused' reduce.tmp/cc-O0 && \
  ! grep -F "'return' will never be executed" reduce.tmp/cc-O0 && \
  ! grep -F "uninitialized when used" reduce.tmp/cc-O0 && \
  ! grep -F 'type specifier missing' reduce.tmp/cc-O0 && \
  ! grep -F 'tentative array definition' reduce.tmp/cc-O0 && \
  ! grep -F 'incompatible pointer' reduce.tmp/cc-O0 && \
  ! grep -F 'past the end of the array' reduce.tmp/cc-O0 && \
  ! grep -F 'non-void function does not return' reduce.tmp/cc-O0 && \
  ! grep -F 'zero size arrays are an extension' reduce.tmp/cc-O0 && \
  # Produce the optimised version
  ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_CG_IR_OPTS} ${CC_O1_OPTS} -o /dev/null 2> reduce.tmp/O1-cg-raw.ll && \
  filter_cg_ir reduce.tmp/O1-cg-raw.ll reduce.tmp/O1-cg.ll && \
  ${PRINT_MODULE} reduce.tmp/O1-cg.ll > reduce.tmp/O1-cg-di.ll && \
  # Check for required optimised IR characteristics
  grep -F '@dbg.value(i32 undef, "day" l10)' reduce.tmp/O1-cg-di.ll
then
  exit 0
else
  exit 1
fi
