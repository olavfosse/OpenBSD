/*
 * Synopsis
 * -----------------------------------------------------------------------------
 * Print human readable error of errno argument
 *
 * Usage
 * -----------------------------------------------------------------------------
 * errno errno
 */

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <limits.h>
#include <stdlib.h>

void die();

int main(int argc, char** argv) {
	if(argc == 1) die();
	printf("%s\n", strerror(atoi(argv[1])));
}

void die() {
	fprintf(stderr, "usage: errno errno\n");
	exit(1);
}
