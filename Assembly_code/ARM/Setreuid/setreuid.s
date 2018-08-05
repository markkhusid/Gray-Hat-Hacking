.text

.global _start

_start:
    eor r1, r1
    mov r7, #70
    swi 0
    
_exit:
    eor r1, r1
    mov r7, #1
    swi 0
