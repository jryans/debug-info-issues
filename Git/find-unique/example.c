#include <stddef.h>
#include <string.h>

// git-compat-util.h

__attribute__((__noreturn__)) void die(const char *err, ...) __attribute__((format (printf, 1, 2))) {
  exit(1);
}

// string-list.h

struct string_list_item {
  char *string;
  void *util;
};

struct string_list {
  struct string_list_item *items;
  size_t nr;
  size_t alloc;
  unsigned int strdup_strings:1;
};

// clean.c

struct menu_item {
  char hotkey;
  const char *title;
  int selected;
  int (*fn)(void);
};

enum menu_stuff_type {
  MENU_STUFF_TYPE_STRING_LIST = 1,
  MENU_STUFF_TYPE_MENU_ITEM
};

struct menu_stuff {
  enum menu_stuff_type type;
  int nr;
  void *stuff;
};

int find_unique(const char *choice, struct menu_stuff *menu_stuff)
{
  struct menu_item *menu_item;
  struct string_list_item *string_list_item;
  int i, len, found = 0;

  len = strlen(choice);
  switch (menu_stuff->type) {
  default:
    die("Bad type of menu_stuff when parse choice");
  case MENU_STUFF_TYPE_MENU_ITEM:

    menu_item = (struct menu_item *)menu_stuff->stuff;
    for (i = 0; i < menu_stuff->nr; i++, menu_item++) {
      if (len == 1 && *choice == menu_item->hotkey) {
        found = i + 1;
        break;
      }
      if (!strncasecmp(choice, menu_item->title, len)) {
        if (found) {
          if (len == 1) {
            /* continue for hotkey matching */
            found = -1;
          } else {
            found = 0;
            break;
          }
        } else {
          found = i + 1;
        }
      }
    }
    break;
  case MENU_STUFF_TYPE_STRING_LIST:
    string_list_item = ((struct string_list *)menu_stuff->stuff)->items;
    for (i = 0; i < menu_stuff->nr; i++, string_list_item++) {
      if (!strncasecmp(choice, string_list_item->string, len)) {
        if (found) {
          found = 0;
          break;
        }
        found = i + 1;
      }
    }
    break;
  }
  return found;
}

int main(void) {
  const char choice[] = "a";
  const struct string_list_item items[2] = {{"a"}, {"b"}};
  const struct string_list list = {&items};
  const struct menu_stuff menu = {
      MENU_STUFF_TYPE_STRING_LIST,
      2,
      &list,
  };
  return find_unique(choice, &menu);
}
