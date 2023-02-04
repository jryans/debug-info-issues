#include <time.h>

time_t example(struct tm *tm) {
  int b[] = {9, 4};
  int c = tm->tm_year, d = tm->tm_mon;
  int day = tm->tm_mday;
  day--;
  return c + b[d] + day;
}

int main() {
	struct tm test = {};
	return example(&test);
}
