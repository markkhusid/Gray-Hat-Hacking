/*
 * overflowtest.c
 *
 *  Created on: Sep 22, 2017
 *      Author: mark
 */

#include <string.h>
#include <stdio.h>

void overflowed() {
	printf ("%s\n", "Execution Hijacked");

}

void function1(char *str) {
	char buffer[5];
	strcpy(buffer, str);

}

void main(int argc, char *argv[])
{
	function1(argv[1]);
	printf ("%s\n", "Executed normally");
}
