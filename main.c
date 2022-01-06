#include <stdio.h>
#include "sqlite3.h"

int main() {
	const char* v = sqlite3_libversion();
	printf("sqlite version = %s\n", v);
	return 0;
}
