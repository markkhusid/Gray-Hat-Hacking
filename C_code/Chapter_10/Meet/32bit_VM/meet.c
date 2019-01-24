#include <stdio.h>                              // needed for screen printing
#include <string.h>

void greeting (char * temp1, char * temp2) {    // greeting function to say hello
    char name[400];                             // string variable to hold name
    printf ("The address of the name array is: %p\n", (void*) &name);		// for diagnostics
    printf ("The address of temp1 is: %p\n", (void*) &temp1);			// for diagnostics
    printf ("The address of temp2 is: %p\n", (void*) &temp2);			// for diagnostics
    strcpy (name, temp2);                       // copy the function argumemt to name
    printf ("Hello %s %s\n", temp1, name);      // print out the greeting
}

void main (int argc, char * argv[]) {           // note the format for the argumemts
    greeting (argv[1], argv[2]);                // call function, pass title and name
    printf ("Bye %s %s\n", argv[1], argv[2]);   // say "bye"
}                                               // exit program
