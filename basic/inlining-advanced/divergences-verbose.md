## Divergences by source coordinates

CoordinatesRemoved
  Before events:
    RF: memory_limit_check at wrapper.c:35:1
  After events:
    IRF: memory_limit_check at wrapper.c:0:0
  Occurrences: 1
  Example trace lines: -26, +35

CoordinatesRemoved
  Before events:
    RF: strbuf_avail at strbuf.h:141:2
  After events:
    IRF: strbuf_avail at strbuf.h:0:0
  Occurrences: 2
  Example trace lines: -19, +22

CoordinatesRemoved
  Before events:
    RF: strbuf_grow at strbuf.c:102:1
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
  Occurrences: 1
  Example trace lines: -32, +47

CoordinatesRemoved
  Before events:
    RF: strbuf_setlen at strbuf.h:169:1
  After events:
    IRF: strbuf_setlen at strbuf.h:0:0
  Occurrences: 1
  Example trace lines: -40, +55

CoordinatesRemoved
  Before events:
    RF: xstrdup_or_null at git-compat-util.h:1169:2
  After events:
    IRF: xstrdup_or_null at git-compat-util.h:0:0
  Occurrences: 1
  Example trace lines: -10, +10

CoordinatesChangedSmall
  Before events:
    CT: do_git_config_sequence at config.c:2124:0
  After events:
    ICT: do_git_config_sequence at config.c:2122:0
  Occurrences: 1
  Example trace lines: -3, +3

CoordinatesChangedSmall
  Before events:
    CT: git_system_config at config.c:2073:0
  After events:
    ICT: git_system_config at config.c:2072:0
  Occurrences: 1
  Example trace lines: -5, +5

CoordinatesChangedSmall
  Before events:
    CT: memory_limit_check at wrapper.c:18:0
  After events:
    ICT: memory_limit_check at wrapper.c:17:0
  Occurrences: 1
  Example trace lines: -26, +35

CoordinatesChangedSmall
  Before events:
    CT: strbuf_avail at strbuf.h:140:0
  After events:
    ICT: strbuf_avail at strbuf.h:139:0
  Occurrences: 2
  Example trace lines: -19, +22

CoordinatesChangedSmall
  Before events:
    CT: strbuf_grow at strbuf.c:92:0
  After events:
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 1
  Example trace lines: -22, +46

CoordinatesChangedSmall
  Before events:
    CT: strbuf_setlen at strbuf.h:161:0
  After events:
    ICT: strbuf_setlen at strbuf.h:160:0
  Occurrences: 1
  Example trace lines: -40, +55

CoordinatesChangedSmall
  Before events:
    CT: xstrdup_or_null at git-compat-util.h:1168:0
  After events:
    ICT: xstrdup_or_null at git-compat-util.h:1167:0
  Occurrences: 1
  Example trace lines: -10, +10

UnexpectedReturnAdded
  After events:
    IRF: git_system_config at config.c:0:0
  Occurrences: 1
  Example trace lines: -1, +12

UnexpectedReturnAdded
  After events:
    IRF: strbuf_avail at strbuf.h:0:0
  Occurrences: 2
  Example trace lines: -1, +29

UnexpectedReturnAdded
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
  Occurrences: 2
  Example trace lines: -1, +26

Uncategorised
  After events:
    ICF: strbuf_vaddf at strbuf.c:394:7
  Occurrences: 1
  Example trace lines: -1, +21

Uncategorised
  After events:
    ICF: strbuf_vaddf at strbuf.c:395:3
  Occurrences: 1
  Example trace lines: -1, +24

Uncategorised
  After events:
    ICT: git_system_config at config.c:2072:0
  Occurrences: 1
  Example trace lines: -1, +14

Uncategorised
  After events:
    ICT: strbuf_avail at strbuf.h:139:0
  Occurrences: 2
  Example trace lines: -1, +28

Uncategorised
  After events:
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 2
  Example trace lines: -1, +25

Uncategorised
  Before events:
    CF: strbuf_vaddf at strbuf.c:394:7
  Occurrences: 1
  Example trace lines: -18, +1

Uncategorised
  Before events:
    CF: strbuf_vaddf at strbuf.c:395:3
  Occurrences: 1
  Example trace lines: -21, +1

## Divergences with unique coordinates by type

CoordinatesRemoved
  Unique divergence coordinates: 5

CoordinatesChangedSmall
  Unique divergence coordinates: 7

UnexpectedReturnAdded
  Unique divergence coordinates: 3

Uncategorised
  Unique divergence coordinates: 7

## Summary

22 unique divergence coordinates
28 divergence occurrences
