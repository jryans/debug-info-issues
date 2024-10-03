#include <stdint.h>

static uint64_t tr2tls_us_start_process;

void tr2tls_start_process_clock() {
	if (tr2tls_us_start_process)
		return;
	tr2tls_us_start_process = 1;
}

void trace2_initialize_clock() {
	tr2tls_start_process_clock();
}

int main(int argc, const char **argv) {
  trace2_initialize_clock();
}
