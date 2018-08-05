section .text		; start the code section of the asm
global _start		; declare a global label
_start:				; keeps the linker from complaining or guessing
xor eax, eax		; clear the eax registry, prepare the next line
mov al, 0x46		; set the syscall value to decimal 70 or hex 46, one byte
xor ebx, ebx		; clear the ebx register, set to 0
xor ecx, ecx		; clear the ecx register, set to 0
int 0x80			; call kernel to execute the syscall
mov al, 0x01		; set the syscall number to 1 for exit ()
int 0x80			; call kernel to execute the syscall


