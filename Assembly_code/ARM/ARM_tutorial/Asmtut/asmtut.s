.text

.global _start

_start:
    mov r0, #65
    mov r7, #1
    
SWI 0
