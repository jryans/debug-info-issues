Analysing divergences…

Divergence analysis complete!

## Divergences by source coordinates

CoordinatesRemoved
  Before events:
    RF: memory_limit_check at wrapper.c:35:1
  After events:
    IRF: memory_limit_check at wrapper.c:0:0
  Occurrences: 1

CoordinatesRemoved
  Before events:
    RF: strbuf_avail at strbuf.h:141:2
  After events:
    IRF: strbuf_avail at strbuf.h:0:0
  Occurrences: 2

CoordinatesRemoved
  Before events:
    RF: strbuf_grow at strbuf.c:102:1
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
  Occurrences: 1

CoordinatesRemoved
  Before events:
    RF: strbuf_setlen at strbuf.h:169:1
  After events:
    IRF: strbuf_setlen at strbuf.h:0:0
  Occurrences: 1

CoordinatesRemoved
  Before events:
    RF: xstrdup_or_null at git-compat-util.h:1169:2
  After events:
    IRF: xstrdup_or_null at git-compat-util.h:0:0
  Occurrences: 1

CoordinatesChangedSmall
  Before events:
    CT: do_git_config_sequence at config.c:2124:0
  After events:
    ICT: do_git_config_sequence at config.c:2122:0
  Occurrences: 1

CoordinatesChangedSmall
  Before events:
    CT: git_system_config at config.c:2073:0
  After events:
    ICT: git_system_config at config.c:2072:0
  Occurrences: 1

CoordinatesChangedSmall
  Before events:
    CT: memory_limit_check at wrapper.c:18:0
  After events:
    ICT: memory_limit_check at wrapper.c:17:0
  Occurrences: 1

CoordinatesChangedSmall
  Before events:
    CT: strbuf_avail at strbuf.h:140:0
  After events:
    ICT: strbuf_avail at strbuf.h:139:0
  Occurrences: 2

CoordinatesChangedSmall
  Before events:
    CT: strbuf_grow at strbuf.c:92:0
  After events:
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 1

CoordinatesChangedSmall
  Before events:
    CT: strbuf_setlen at strbuf.h:161:0
  After events:
    ICT: strbuf_setlen at strbuf.h:160:0
  Occurrences: 1

CoordinatesChangedSmall
  Before events:
    CT: xstrdup_or_null at git-compat-util.h:1168:0
  After events:
    ICT: xstrdup_or_null at git-compat-util.h:1167:0
  Occurrences: 1

UnexpectedReturnAdded
  After events:
    IRF: git_system_config at config.c:0:0
  Occurrences: 1

UnexpectedReturnAdded
  After events:
    IRF: strbuf_avail at strbuf.h:0:0
  Occurrences: 2

UnexpectedReturnAdded
  After events:
    IRF: strbuf_grow at strbuf.c:0:0
  Occurrences: 2

Uncategorised
  After events:
    ICF: do_git_config_sequence at config.c:2126:24
  Occurrences: 1

Uncategorised
  After events:
    ICF: strbuf_vaddf at strbuf.c:394:7
  Occurrences: 2

Uncategorised
  After events:
    ICF: strbuf_vaddf at strbuf.c:395:3
  Occurrences: 2

Uncategorised
  After events:
    ICT: git_system_config at config.c:2072:0
  Occurrences: 1

Uncategorised
  After events:
    ICT: strbuf_avail at strbuf.h:139:0
  Occurrences: 2

Uncategorised
  After events:
    ICT: strbuf_grow at strbuf.c:91:0
  Occurrences: 2

## Divergences with unique coordinates by type

CoordinatesRemoved
  Unique divergence coordinates: 5

CoordinatesChangedSmall
  Unique divergence coordinates: 7

UnexpectedReturnAdded
  Unique divergence coordinates: 3

Uncategorised
  Unique divergence coordinates: 6

## Summary

21 unique divergence coordinates
29 divergence occurrences
