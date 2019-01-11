// smallbuf.c
// This is a smaple vulnerable program with a small buffer

#include <string.h>

int main(int argc, char * argv[]) {
	char buff[10]; 			// small buffer
	strcpy (buff, argv[1]);		// problem: vulnerable function call
}

