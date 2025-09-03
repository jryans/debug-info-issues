## Divergences by source coordinates

Coordinates removed
  Before events:
    RF: memory_limit_check at wrapper.c:35:1
  After events:
    IRF: memory_limit_check at wrapper.c:0:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:26
    +concrete-trace-O1/default/trace:34

Coordinates removed
  Before events:
    RF: strbuf_avail at strbuf.h:141:2
  After events:
    IRF: strbuf_avail at strbuf.h:0:0
  Occurrences: 2
  Example trace lines:
    -concrete-trace-O0/default/trace:20
    +concrete-trace-O1/default/trace:22

Coordinates removed
  Before events:
    RF: strbuf_grow at strbuf.c:102:1
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:32
    +concrete-trace-O1/default/trace:42

Coordinates removed
  Before events:
    RF: strbuf_setlen at strbuf.h:169:1
  After events:
    IRF: strbuf_setlen at strbuf.h:0:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:40
    +concrete-trace-O1/default/trace:50

Coordinates removed
  Before events:
    RF: xstrdup_or_null at git-compat-util.h:1169:2
  After events:
    IRF: xstrdup_or_null at git-compat-util.h:0:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:10
    +concrete-trace-O1/default/trace:10

Coordinates changed (small)
  Before events:
    CT: do_git_config_sequence at config.c:2124:0
  After events:
    ICT: do_git_config_sequence at config.c:2122:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:3
    +concrete-trace-O1/default/trace:3

Coordinates changed (small)
  Before events:
    CT: git_system_config at config.c:2073:0
  After events:
    ICT: git_system_config at config.c:2072:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:5
    +concrete-trace-O1/default/trace:5

Coordinates changed (small)
  Before events:
    CT: memory_limit_check at wrapper.c:18:0
  After events:
    ICT: memory_limit_check at wrapper.c:17:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:26
    +concrete-trace-O1/default/trace:34

Coordinates changed (small)
  Before events:
    CT: strbuf_avail at strbuf.h:140:0
  After events:
    ICT: strbuf_avail at strbuf.h:139:0
  Occurrences: 2
  Example trace lines:
    -concrete-trace-O0/default/trace:19
    +concrete-trace-O1/default/trace:21

Coordinates changed (small)
  Before events:
    CT: strbuf_grow at strbuf.c:92:0
  After events:
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:22
    +concrete-trace-O1/default/trace:41

Coordinates changed (small)
  Before events:
    CT: strbuf_setlen at strbuf.h:161:0
  After events:
    ICT: strbuf_setlen at strbuf.h:160:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:40
    +concrete-trace-O1/default/trace:50

Coordinates changed (small)
  Before events:
    CT: xstrdup_or_null at git-compat-util.h:1168:0
  After events:
    ICT: xstrdup_or_null at git-compat-util.h:1167:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:10
    +concrete-trace-O1/default/trace:10

Inlined reentry added
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:29

Inlined noise added
  After events:
    ICT: strbuf_avail at strbuf.h:139:0
    IRF: strbuf_avail at strbuf.h:0:0
  Occurrences: 2
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:23

Uncategorised
  After events:
    ICF: strbuf_vaddf at strbuf.c:394:7
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:20

Uncategorised
  After events:
    ICF: strbuf_vaddf at strbuf.c:395:3
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:27

Uncategorised
  After events:
    ICT: git_system_config at config.c:2072:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:13

Uncategorised
  After events:
    IRF: git_system_config at config.c:0:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:55

Uncategorised
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:1
    +concrete-trace-O1/default/trace:40

Uncategorised
  Before events:
    CF: strbuf_vaddf at strbuf.c:394:7
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:18
    +concrete-trace-O1/default/trace:1

Uncategorised
  Before events:
    CF: strbuf_vaddf at strbuf.c:395:3
  Occurrences: 1
  Example trace lines:
    -concrete-trace-O0/default/trace:21
    +concrete-trace-O1/default/trace:1

## Divergences with unique coordinates by type

Coordinates removed
  Unique divergence coordinates: 5
  Divergence countable events: 5

Coordinates changed (small)
  Unique divergence coordinates: 7
  Divergence countable events: 7

Inlined reentry added
  Unique divergence coordinates: 1
  Divergence countable events: 2

Inlined noise added
  Unique divergence coordinates: 1
  Divergence countable events: 2

Uncategorised
  Unique divergence coordinates: 7
  Divergence countable events: 8

## Summary

21 unique divergence coordinates
24 divergence occurrences
