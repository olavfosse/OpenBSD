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

int main(int argc, char** argv) {
	if(argc == 1) {
		fprintf(stderr, "usage: %s errno\n", argv[0]);
		exit(1);
	}
	printf("%s\n", strerror(atoi(argv[1])));
}
