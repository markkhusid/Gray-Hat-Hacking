.data
    string:
        .asciz "Hello World\n"  @ .asciz adds a null-byte at the end of the string
    after_string:               @ memory that is right after string
        .set size_of_string, after_string - string      
        @ difference between the two gives size of the string.
            
.text
.global _start

_start:
    mov r0, #1                  @ file descriptor of STDOUT
    ldr r1, addr_of_string      @ load memory address of string
    mov r2, #size_of_string     @ load size of string
    mov r7, #4                  @ write syscall
    swi #0                      @ invoke syscall
    
_exit:
    mov r7, #1                  @ exit syscall
    swi #0                      @ invoke syscall
    
addr_of_string: .word string
