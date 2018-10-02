To get a root shell, enter:

sudo chown root shellcode2

Then enter:

sudo chmod +s shellcode2

Then, from a user (non-root) prompt, enter:

$ ./shellcode2

You will get a root shell.  To confirm, enter:

whoami

Make sure to change owner back to the user and mode back to -s, or you will have a security threat on your computer.


