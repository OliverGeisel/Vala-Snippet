	.file	"first.vala.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"Hello World! This is Vala!"
	.text
	.globl	_vala_main
	.type	_vala_main, @function
_vala_main:
.LFB169:
	.file 1 "/mnt/d/Uni-Stoff/Winter 20-21/Hauptseminar/testcode/first.vala.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.file 2 "/mnt/d/Uni-Stoff/Winter 20-21/Hauptseminar/testcode/first.vala"
	.loc 2 4 0
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	g_print@PLT
	.file 3 "first.vala.c"
	.loc 3 21 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	_vala_main, .-_vala_main
	.globl	main
	.type	main, @function
main:
.LFB170:
	.loc 3 27 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 3 0
	call	_vala_main
	.loc 2 3 0
	movl	$0, %eax
	.loc 3 33 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	main, .-main
.Letext0:
	.file 4 "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/glib-2.0/glib/gtypes.h"
	.file 7 "/usr/include/glib-2.0/glib/gquark.h"
	.file 8 "/usr/include/glib-2.0/glib/gerror.h"
	.file 9 "/usr/include/glib-2.0/glib/gthread.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/glib-2.0/glib/gmem.h"
	.file 12 "/usr/include/glib-2.0/glib/gslist.h"
	.file 13 "/usr/include/glib-2.0/glib/gmain.h"
	.file 14 "/usr/include/glib-2.0/glib/gunicode.h"
	.file 15 "/usr/include/glib-2.0/glib/giochannel.h"
	.file 16 "/usr/include/glib-2.0/glib/gstrfuncs.h"
	.file 17 "/usr/include/glib-2.0/glib/gtestutils.h"
	.file 18 "/usr/include/glib-2.0/glib/gversion.h"
	.file 19 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
	.file 20 "/usr/include/glib-2.0/gobject/gtype.h"
	.file 21 "/usr/include/glib-2.0/gobject/gparamspecs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xae0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF153
	.byte	0xc
	.long	.LASF154
	.long	.LASF155
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x4
	.byte	0x28
	.long	0x75
	.uleb128 0x5
	.long	0x65
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.byte	0x2d
	.long	0x87
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0x34
	.long	0x34
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x42
	.long	0x34
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0xac
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x5
	.long	0xac
	.uleb128 0x7
	.byte	0x8
	.long	0xb3
	.uleb128 0x5
	.long	0xb8
	.uleb128 0x8
	.long	0xa6
	.long	0xd3
	.uleb128 0x9
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x9f
	.long	0xc3
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0xa0
	.long	0x3b
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0xa1
	.long	0x2d
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0xa6
	.long	0xc3
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0xae
	.long	0x3b
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0xaf
	.long	0x2d
	.uleb128 0x4
	.long	.LASF20
	.byte	0x6
	.byte	0x2e
	.long	0xac
	.uleb128 0x5
	.long	0x115
	.uleb128 0x4
	.long	.LASF21
	.byte	0x6
	.byte	0x30
	.long	0x2d
	.uleb128 0x4
	.long	.LASF22
	.byte	0x6
	.byte	0x31
	.long	0x3b
	.uleb128 0x4
	.long	.LASF23
	.byte	0x6
	.byte	0x32
	.long	0x130
	.uleb128 0x4
	.long	.LASF24
	.byte	0x6
	.byte	0x36
	.long	0x34
	.uleb128 0x4
	.long	.LASF25
	.byte	0x6
	.byte	0x37
	.long	0x87
	.uleb128 0x5
	.long	0x151
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF26
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF27
	.uleb128 0x4
	.long	.LASF28
	.byte	0x6
	.byte	0x4d
	.long	0xa4
	.uleb128 0x4
	.long	.LASF29
	.byte	0x6
	.byte	0x57
	.long	0x185
	.uleb128 0x7
	.byte	0x8
	.long	0x18b
	.uleb128 0xb
	.long	0x196
	.uleb128 0xc
	.long	0x16f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x120
	.uleb128 0x5
	.long	0x196
	.uleb128 0xd
	.long	.LASF30
	.byte	0x6
	.value	0x1f9
	.long	0x1ad
	.uleb128 0xe
	.long	.LASF35
	.byte	0x10
	.byte	0x6
	.value	0x1fb
	.long	0x1d5
	.uleb128 0xf
	.long	.LASF31
	.byte	0x6
	.value	0x1fd
	.long	0x125
	.byte	0
	.uleb128 0xf
	.long	.LASF32
	.byte	0x6
	.value	0x1fe
	.long	0x125
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x115
	.uleb128 0x7
	.byte	0x8
	.long	0x16f
	.uleb128 0x4
	.long	.LASF33
	.byte	0x7
	.byte	0x24
	.long	0x7c
	.uleb128 0x4
	.long	.LASF34
	.byte	0x8
	.byte	0x29
	.long	0x1f7
	.uleb128 0x10
	.long	.LASF36
	.byte	0x10
	.byte	0x8
	.byte	0x2b
	.long	0x228
	.uleb128 0x11
	.long	.LASF37
	.byte	0x8
	.byte	0x2d
	.long	0x1e1
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0x8
	.byte	0x2e
	.long	0x130
	.byte	0x4
	.uleb128 0x11
	.long	.LASF39
	.byte	0x8
	.byte	0x2f
	.long	0x1d5
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x22e
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF40
	.uleb128 0x4
	.long	.LASF41
	.byte	0x9
	.byte	0x2f
	.long	0x241
	.uleb128 0x7
	.byte	0x8
	.long	0x247
	.uleb128 0x13
	.long	0x16f
	.long	0x256
	.uleb128 0xc
	.long	0x16f
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x9
	.byte	0x33
	.long	0x261
	.uleb128 0x14
	.long	.LASF156
	.byte	0x8
	.byte	0x9
	.byte	0x3a
	.long	0x280
	.uleb128 0x15
	.string	"p"
	.byte	0x9
	.byte	0x3d
	.long	0x16f
	.uleb128 0x15
	.string	"i"
	.byte	0x9
	.byte	0x3e
	.long	0x2e6
	.byte	0
	.uleb128 0x4
	.long	.LASF43
	.byte	0x9
	.byte	0x36
	.long	0x28b
	.uleb128 0x10
	.long	.LASF44
	.byte	0x10
	.byte	0x9
	.byte	0x48
	.long	0x2ac
	.uleb128 0x16
	.string	"p"
	.byte	0x9
	.byte	0x4b
	.long	0x16f
	.byte	0
	.uleb128 0x16
	.string	"i"
	.byte	0x9
	.byte	0x4c
	.long	0x2e6
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF45
	.byte	0x9
	.byte	0x37
	.long	0x2b7
	.uleb128 0x10
	.long	.LASF46
	.byte	0x20
	.byte	0x9
	.byte	0x57
	.long	0x2e6
	.uleb128 0x16
	.string	"p"
	.byte	0x9
	.byte	0x5a
	.long	0x16f
	.byte	0
	.uleb128 0x11
	.long	.LASF47
	.byte	0x9
	.byte	0x5b
	.long	0x17a
	.byte	0x8
	.uleb128 0x11
	.long	.LASF48
	.byte	0x9
	.byte	0x5c
	.long	0x2f6
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x151
	.long	0x2f6
	.uleb128 0x9
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0x16f
	.long	0x306
	.uleb128 0x9
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0xbe
	.long	0x316
	.uleb128 0x9
	.long	0x34
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x306
	.uleb128 0x17
	.long	.LASF49
	.byte	0xa
	.value	0x11e
	.long	0x316
	.uleb128 0x17
	.long	.LASF50
	.byte	0xa
	.value	0x11f
	.long	0x316
	.uleb128 0x4
	.long	.LASF51
	.byte	0xb
	.byte	0x33
	.long	0x33e
	.uleb128 0xe
	.long	.LASF52
	.byte	0x30
	.byte	0xb
	.value	0x159
	.long	0x39a
	.uleb128 0xf
	.long	.LASF53
	.byte	0xb
	.value	0x15a
	.long	0x3a9
	.byte	0
	.uleb128 0xf
	.long	.LASF54
	.byte	0xb
	.value	0x15b
	.long	0x3c3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF55
	.byte	0xb
	.value	0x15d
	.long	0x185
	.byte	0x10
	.uleb128 0xf
	.long	.LASF56
	.byte	0xb
	.value	0x15f
	.long	0x3dd
	.byte	0x18
	.uleb128 0xf
	.long	.LASF57
	.byte	0xb
	.value	0x161
	.long	0x3a9
	.byte	0x20
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.value	0x162
	.long	0x3c3
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x16f
	.long	0x3a9
	.uleb128 0xc
	.long	0x99
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x39a
	.uleb128 0x13
	.long	0x16f
	.long	0x3c3
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x99
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3af
	.uleb128 0x13
	.long	0x16f
	.long	0x3dd
	.uleb128 0xc
	.long	0x99
	.uleb128 0xc
	.long	0x99
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3c9
	.uleb128 0x17
	.long	.LASF59
	.byte	0xb
	.value	0x16a
	.long	0x13b
	.uleb128 0x17
	.long	.LASF60
	.byte	0xb
	.value	0x16e
	.long	0x3fb
	.uleb128 0x7
	.byte	0x8
	.long	0x333
	.uleb128 0x7
	.byte	0x8
	.long	0x407
	.uleb128 0x13
	.long	0x13b
	.long	0x416
	.uleb128 0xc
	.long	0x16f
	.byte	0
	.uleb128 0x4
	.long	.LASF61
	.byte	0xc
	.byte	0x25
	.long	0x421
	.uleb128 0x10
	.long	.LASF62
	.byte	0x10
	.byte	0xc
	.byte	0x27
	.long	0x446
	.uleb128 0x11
	.long	.LASF63
	.byte	0xc
	.byte	0x29
	.long	0x16f
	.byte	0
	.uleb128 0x11
	.long	.LASF64
	.byte	0xc
	.byte	0x2a
	.long	0x446
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x416
	.uleb128 0x4
	.long	.LASF65
	.byte	0xd
	.byte	0x30
	.long	0x457
	.uleb128 0x18
	.long	.LASF81
	.uleb128 0x4
	.long	.LASF66
	.byte	0xd
	.byte	0x40
	.long	0x467
	.uleb128 0x10
	.long	.LASF67
	.byte	0x60
	.byte	0xd
	.byte	0xb9
	.long	0x510
	.uleb128 0x11
	.long	.LASF68
	.byte	0xd
	.byte	0xbc
	.long	0x16f
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0xd
	.byte	0xbd
	.long	0x5cc
	.byte	0x8
	.uleb128 0x11
	.long	.LASF70
	.byte	0xd
	.byte	0xbf
	.long	0x5d2
	.byte	0x10
	.uleb128 0x11
	.long	.LASF71
	.byte	0xd
	.byte	0xc0
	.long	0x151
	.byte	0x18
	.uleb128 0x11
	.long	.LASF72
	.byte	0xd
	.byte	0xc2
	.long	0x5d8
	.byte	0x20
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.byte	0xc4
	.long	0x130
	.byte	0x28
	.uleb128 0x11
	.long	.LASF74
	.byte	0xd
	.byte	0xc5
	.long	0x151
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF75
	.byte	0xd
	.byte	0xc6
	.long	0x151
	.byte	0x30
	.uleb128 0x11
	.long	.LASF76
	.byte	0xd
	.byte	0xc8
	.long	0x446
	.byte	0x38
	.uleb128 0x11
	.long	.LASF77
	.byte	0xd
	.byte	0xca
	.long	0x5de
	.byte	0x40
	.uleb128 0x11
	.long	.LASF64
	.byte	0xd
	.byte	0xcb
	.long	0x5de
	.byte	0x48
	.uleb128 0x11
	.long	.LASF78
	.byte	0xd
	.byte	0xcd
	.long	0xa6
	.byte	0x50
	.uleb128 0x11
	.long	.LASF79
	.byte	0xd
	.byte	0xcf
	.long	0x5e4
	.byte	0x58
	.byte	0
	.uleb128 0x4
	.long	.LASF80
	.byte	0xd
	.byte	0x41
	.long	0x51b
	.uleb128 0x18
	.long	.LASF82
	.uleb128 0x4
	.long	.LASF83
	.byte	0xd
	.byte	0x4d
	.long	0x52b
	.uleb128 0x10
	.long	.LASF84
	.byte	0x18
	.byte	0xd
	.byte	0xd2
	.long	0x55c
	.uleb128 0x16
	.string	"ref"
	.byte	0xd
	.byte	0xd4
	.long	0x185
	.byte	0
	.uleb128 0x11
	.long	.LASF85
	.byte	0xd
	.byte	0xd5
	.long	0x185
	.byte	0x8
	.uleb128 0x16
	.string	"get"
	.byte	0xd
	.byte	0xd6
	.long	0x60a
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF86
	.byte	0xd
	.byte	0x85
	.long	0x56c
	.uleb128 0x5
	.long	0x55c
	.uleb128 0x10
	.long	.LASF87
	.byte	0x30
	.byte	0xd
	.byte	0xe4
	.long	0x5c1
	.uleb128 0x11
	.long	.LASF88
	.byte	0xd
	.byte	0xe6
	.long	0x635
	.byte	0
	.uleb128 0x11
	.long	.LASF89
	.byte	0xd
	.byte	0xe8
	.long	0x64a
	.byte	0x8
	.uleb128 0x11
	.long	.LASF90
	.byte	0xd
	.byte	0xe9
	.long	0x669
	.byte	0x10
	.uleb128 0x11
	.long	.LASF91
	.byte	0xd
	.byte	0xec
	.long	0x67a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF92
	.byte	0xd
	.byte	0xf0
	.long	0x5c1
	.byte	0x20
	.uleb128 0x11
	.long	.LASF93
	.byte	0xd
	.byte	0xf1
	.long	0x610
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.long	.LASF94
	.byte	0xd
	.byte	0xa9
	.long	0x401
	.uleb128 0x7
	.byte	0x8
	.long	0x520
	.uleb128 0x7
	.byte	0x8
	.long	0x567
	.uleb128 0x7
	.byte	0x8
	.long	0x44c
	.uleb128 0x7
	.byte	0x8
	.long	0x45c
	.uleb128 0x7
	.byte	0x8
	.long	0x510
	.uleb128 0xb
	.long	0x604
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x5de
	.uleb128 0xc
	.long	0x604
	.uleb128 0xc
	.long	0x1db
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5c1
	.uleb128 0x7
	.byte	0x8
	.long	0x5ea
	.uleb128 0x4
	.long	.LASF95
	.byte	0xd
	.byte	0xe2
	.long	0x228
	.uleb128 0x13
	.long	0x13b
	.long	0x62f
	.uleb128 0xc
	.long	0x5de
	.uleb128 0xc
	.long	0x62f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x130
	.uleb128 0x7
	.byte	0x8
	.long	0x61b
	.uleb128 0x13
	.long	0x13b
	.long	0x64a
	.uleb128 0xc
	.long	0x5de
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x63b
	.uleb128 0x13
	.long	0x13b
	.long	0x669
	.uleb128 0xc
	.long	0x5de
	.uleb128 0xc
	.long	0x5c1
	.uleb128 0xc
	.long	0x16f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x650
	.uleb128 0xb
	.long	0x67a
	.uleb128 0xc
	.long	0x5de
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x66f
	.uleb128 0x17
	.long	.LASF96
	.byte	0xd
	.value	0x28b
	.long	0x55c
	.uleb128 0x17
	.long	.LASF97
	.byte	0xd
	.value	0x28c
	.long	0x55c
	.uleb128 0x17
	.long	.LASF98
	.byte	0xd
	.value	0x28d
	.long	0x55c
	.uleb128 0x17
	.long	.LASF99
	.byte	0xd
	.value	0x28f
	.long	0x55c
	.uleb128 0x17
	.long	.LASF100
	.byte	0xd
	.value	0x290
	.long	0x55c
	.uleb128 0x17
	.long	.LASF101
	.byte	0xe
	.value	0x2d1
	.long	0x19c
	.uleb128 0x7
	.byte	0x8
	.long	0x6ce
	.uleb128 0x7
	.byte	0x8
	.long	0x1ec
	.uleb128 0x17
	.long	.LASF102
	.byte	0xf
	.value	0x147
	.long	0x55c
	.uleb128 0xa
	.long	.LASF103
	.byte	0x10
	.byte	0x36
	.long	0x6f1
	.uleb128 0x7
	.byte	0x8
	.long	0x70
	.uleb128 0x5
	.long	0x6eb
	.uleb128 0x19
	.byte	0x18
	.byte	0x11
	.value	0x15b
	.long	0x74e
	.uleb128 0xf
	.long	.LASF104
	.byte	0x11
	.value	0x15c
	.long	0x13b
	.byte	0
	.uleb128 0xf
	.long	.LASF105
	.byte	0x11
	.value	0x15d
	.long	0x13b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF106
	.byte	0x11
	.value	0x15e
	.long	0x13b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x11
	.value	0x15f
	.long	0x13b
	.byte	0xc
	.uleb128 0xf
	.long	.LASF108
	.byte	0x11
	.value	0x160
	.long	0x13b
	.byte	0x10
	.uleb128 0xf
	.long	.LASF109
	.byte	0x11
	.value	0x161
	.long	0x13b
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.long	.LASF110
	.byte	0x11
	.value	0x162
	.long	0x6f6
	.uleb128 0x5
	.long	0x74e
	.uleb128 0x17
	.long	.LASF111
	.byte	0x11
	.value	0x163
	.long	0x771
	.uleb128 0x7
	.byte	0x8
	.long	0x75a
	.uleb128 0x5
	.long	0x76b
	.uleb128 0xa
	.long	.LASF112
	.byte	0x12
	.byte	0x24
	.long	0x15c
	.uleb128 0xa
	.long	.LASF113
	.byte	0x12
	.byte	0x25
	.long	0x15c
	.uleb128 0xa
	.long	.LASF114
	.byte	0x12
	.byte	0x26
	.long	0x15c
	.uleb128 0xa
	.long	.LASF115
	.byte	0x12
	.byte	0x27
	.long	0x15c
	.uleb128 0xa
	.long	.LASF116
	.byte	0x12
	.byte	0x28
	.long	0x15c
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x87
	.byte	0x13
	.byte	0x27
	.long	0x7d3
	.uleb128 0x1b
	.long	.LASF117
	.byte	0
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF121
	.byte	0x13
	.byte	0x2c
	.long	0x7ad
	.uleb128 0x4
	.long	.LASF122
	.byte	0x13
	.byte	0x3b
	.long	0x7e9
	.uleb128 0x10
	.long	.LASF123
	.byte	0xa8
	.byte	0x13
	.byte	0x3c
	.long	0x8f2
	.uleb128 0x11
	.long	.LASF124
	.byte	0x13
	.byte	0x3e
	.long	0x8fd
	.byte	0
	.uleb128 0x11
	.long	.LASF125
	.byte	0x13
	.byte	0x3f
	.long	0x90e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF126
	.byte	0x13
	.byte	0x40
	.long	0x923
	.byte	0x10
	.uleb128 0x11
	.long	.LASF127
	.byte	0x13
	.byte	0x41
	.long	0x90e
	.byte	0x18
	.uleb128 0x11
	.long	.LASF128
	.byte	0x13
	.byte	0x42
	.long	0x90e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF129
	.byte	0x13
	.byte	0x43
	.long	0x934
	.byte	0x28
	.uleb128 0x11
	.long	.LASF130
	.byte	0x13
	.byte	0x44
	.long	0x945
	.byte	0x30
	.uleb128 0x11
	.long	.LASF131
	.byte	0x13
	.byte	0x45
	.long	0x945
	.byte	0x38
	.uleb128 0x11
	.long	.LASF132
	.byte	0x13
	.byte	0x46
	.long	0x95b
	.byte	0x40
	.uleb128 0x11
	.long	.LASF133
	.byte	0x13
	.byte	0x48
	.long	0x980
	.byte	0x48
	.uleb128 0x11
	.long	.LASF134
	.byte	0x13
	.byte	0x4b
	.long	0x945
	.byte	0x50
	.uleb128 0x11
	.long	.LASF135
	.byte	0x13
	.byte	0x4c
	.long	0x99b
	.byte	0x58
	.uleb128 0x11
	.long	.LASF136
	.byte	0x13
	.byte	0x4d
	.long	0x9b0
	.byte	0x60
	.uleb128 0x11
	.long	.LASF137
	.byte	0x13
	.byte	0x4e
	.long	0x9c6
	.byte	0x68
	.uleb128 0x11
	.long	.LASF138
	.byte	0x13
	.byte	0x50
	.long	0x9fa
	.byte	0x70
	.uleb128 0x11
	.long	.LASF139
	.byte	0x13
	.byte	0x58
	.long	0x228
	.byte	0x78
	.uleb128 0x11
	.long	.LASF140
	.byte	0x13
	.byte	0x59
	.long	0x185
	.byte	0x80
	.uleb128 0x11
	.long	.LASF141
	.byte	0x13
	.byte	0x5a
	.long	0x228
	.byte	0x88
	.uleb128 0x11
	.long	.LASF142
	.byte	0x13
	.byte	0x5b
	.long	0xa10
	.byte	0x90
	.uleb128 0x11
	.long	.LASF143
	.byte	0x13
	.byte	0x5d
	.long	0x185
	.byte	0x98
	.uleb128 0x11
	.long	.LASF144
	.byte	0x13
	.byte	0x5e
	.long	0xa2a
	.byte	0xa0
	.byte	0
	.uleb128 0x1c
	.long	0x8f7
	.uleb128 0x7
	.byte	0x8
	.long	0x256
	.uleb128 0x7
	.byte	0x8
	.long	0x8f2
	.uleb128 0xb
	.long	0x90e
	.uleb128 0xc
	.long	0x8f7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x903
	.uleb128 0x13
	.long	0x13b
	.long	0x923
	.uleb128 0xc
	.long	0x8f7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x914
	.uleb128 0x1c
	.long	0x92e
	.uleb128 0x7
	.byte	0x8
	.long	0x280
	.uleb128 0x7
	.byte	0x8
	.long	0x929
	.uleb128 0xb
	.long	0x945
	.uleb128 0xc
	.long	0x92e
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x93a
	.uleb128 0xb
	.long	0x95b
	.uleb128 0xc
	.long	0x92e
	.uleb128 0xc
	.long	0x8f7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x94b
	.uleb128 0x13
	.long	0x13b
	.long	0x97a
	.uleb128 0xc
	.long	0x92e
	.uleb128 0xc
	.long	0x8f7
	.uleb128 0xc
	.long	0x97a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1a1
	.uleb128 0x7
	.byte	0x8
	.long	0x961
	.uleb128 0x13
	.long	0x995
	.long	0x995
	.uleb128 0xc
	.long	0x17a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2ac
	.uleb128 0x7
	.byte	0x8
	.long	0x986
	.uleb128 0x13
	.long	0x16f
	.long	0x9b0
	.uleb128 0xc
	.long	0x995
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9a1
	.uleb128 0xb
	.long	0x9c6
	.uleb128 0xc
	.long	0x995
	.uleb128 0xc
	.long	0x16f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9b6
	.uleb128 0xb
	.long	0x9fa
	.uleb128 0xc
	.long	0x236
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x146
	.uleb128 0xc
	.long	0x13b
	.uleb128 0xc
	.long	0x13b
	.uleb128 0xc
	.long	0x7d3
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x6c8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9cc
	.uleb128 0xb
	.long	0xa10
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x7d3
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa00
	.uleb128 0x13
	.long	0x13b
	.long	0xa2a
	.uleb128 0xc
	.long	0x16f
	.uleb128 0xc
	.long	0x16f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa16
	.uleb128 0xa
	.long	.LASF145
	.byte	0x13
	.byte	0x62
	.long	0x7de
	.uleb128 0xa
	.long	.LASF146
	.byte	0x13
	.byte	0x63
	.long	0x13b
	.uleb128 0x1c
	.long	0x8e
	.uleb128 0xa
	.long	.LASF147
	.byte	0x13
	.byte	0x65
	.long	0xa56
	.uleb128 0x7
	.byte	0x8
	.long	0xa46
	.uleb128 0x17
	.long	.LASF148
	.byte	0x13
	.value	0x110
	.long	0x13b
	.uleb128 0xd
	.long	.LASF149
	.byte	0x14
	.value	0x17e
	.long	0x99
	.uleb128 0x7
	.byte	0x8
	.long	0xa68
	.uleb128 0x17
	.long	.LASF150
	.byte	0x15
	.value	0x48e
	.long	0xa74
	.uleb128 0x1d
	.long	.LASF157
	.byte	0x3
	.byte	0x19
	.long	0x3b
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.long	0xac4
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x3
	.byte	0x19
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x3
	.byte	0x1a
	.long	0xac4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa6
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x1
	.byte	0x10
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"_GSList"
.LASF53:
	.string	"malloc"
.LASF29:
	.string	"GDestroyNotify"
.LASF48:
	.string	"future"
.LASF25:
	.string	"guint"
.LASF91:
	.string	"finalize"
.LASF68:
	.string	"callback_data"
.LASF81:
	.string	"_GMainContext"
.LASF153:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF77:
	.string	"prev"
.LASF85:
	.string	"unref"
.LASF128:
	.string	"mutex_free"
.LASF122:
	.string	"GThreadFunctions"
.LASF0:
	.string	"long int"
.LASF120:
	.string	"G_THREAD_PRIORITY_URGENT"
.LASF40:
	.string	"long long unsigned int"
.LASF83:
	.string	"GSourceCallbackFuncs"
.LASF33:
	.string	"GQuark"
.LASF64:
	.string	"next"
.LASF110:
	.string	"GTestConfig"
.LASF123:
	.string	"_GThreadFunctions"
.LASF158:
	.string	"_vala_main"
.LASF16:
	.string	"__timezone"
.LASF2:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF119:
	.string	"G_THREAD_PRIORITY_HIGH"
.LASF131:
	.string	"cond_broadcast"
.LASF150:
	.string	"g_param_spec_types"
.LASF88:
	.string	"prepare"
.LASF76:
	.string	"poll_fds"
.LASF90:
	.string	"dispatch"
.LASF70:
	.string	"source_funcs"
.LASF148:
	.string	"g_threads_got_initialized"
.LASF92:
	.string	"closure_callback"
.LASF89:
	.string	"check"
.LASF11:
	.string	"guint64"
.LASF144:
	.string	"thread_equal"
.LASF80:
	.string	"GSourcePrivate"
.LASF99:
	.string	"g_unix_signal_funcs"
.LASF27:
	.string	"double"
.LASF106:
	.string	"test_perf"
.LASF86:
	.string	"GSourceFuncs"
.LASF157:
	.string	"main"
.LASF51:
	.string	"GMemVTable"
.LASF54:
	.string	"realloc"
.LASF113:
	.string	"glib_minor_version"
.LASF107:
	.string	"test_verbose"
.LASF19:
	.string	"timezone"
.LASF43:
	.string	"GCond"
.LASF105:
	.string	"test_quick"
.LASF52:
	.string	"_GMemVTable"
.LASF145:
	.string	"g_thread_functions_for_glib_use"
.LASF65:
	.string	"GMainContext"
.LASF10:
	.string	"unsigned int"
.LASF58:
	.string	"try_realloc"
.LASF30:
	.string	"GTimeVal"
.LASF1:
	.string	"long unsigned int"
.LASF111:
	.string	"g_test_config_vars"
.LASF147:
	.string	"g_thread_gettime"
.LASF78:
	.string	"name"
.LASF63:
	.string	"data"
.LASF72:
	.string	"context"
.LASF133:
	.string	"cond_timed_wait"
.LASF66:
	.string	"GSource"
.LASF109:
	.string	"test_undefined"
.LASF45:
	.string	"GPrivate"
.LASF101:
	.string	"g_utf8_skip"
.LASF124:
	.string	"mutex_new"
.LASF73:
	.string	"priority"
.LASF121:
	.string	"GThreadPriority"
.LASF127:
	.string	"mutex_unlock"
.LASF34:
	.string	"GError"
.LASF108:
	.string	"test_quiet"
.LASF141:
	.string	"thread_exit"
.LASF142:
	.string	"thread_set_priority"
.LASF50:
	.string	"sys_siglist"
.LASF42:
	.string	"GMutex"
.LASF93:
	.string	"closure_marshal"
.LASF20:
	.string	"gchar"
.LASF8:
	.string	"guint16"
.LASF137:
	.string	"private_set"
.LASF57:
	.string	"try_malloc"
.LASF23:
	.string	"gboolean"
.LASF84:
	.string	"_GSourceCallbackFuncs"
.LASF140:
	.string	"thread_join"
.LASF104:
	.string	"test_initialized"
.LASF155:
	.string	"/mnt/d/Uni-Stoff/Winter 20-21/Hauptseminar/testcode"
.LASF103:
	.string	"g_ascii_table"
.LASF49:
	.string	"_sys_siglist"
.LASF39:
	.string	"message"
.LASF112:
	.string	"glib_major_version"
.LASF130:
	.string	"cond_signal"
.LASF41:
	.string	"GThreadFunc"
.LASF60:
	.string	"glib_mem_profiler_table"
.LASF61:
	.string	"GSList"
.LASF117:
	.string	"G_THREAD_PRIORITY_LOW"
.LASF79:
	.string	"priv"
.LASF44:
	.string	"_GCond"
.LASF26:
	.string	"float"
.LASF24:
	.string	"gulong"
.LASF31:
	.string	"tv_sec"
.LASF5:
	.string	"unsigned char"
.LASF136:
	.string	"private_get"
.LASF116:
	.string	"glib_binary_age"
.LASF35:
	.string	"_GTimeVal"
.LASF6:
	.string	"short int"
.LASF115:
	.string	"glib_interface_age"
.LASF125:
	.string	"mutex_lock"
.LASF114:
	.string	"glib_micro_version"
.LASF102:
	.string	"g_io_watch_funcs"
.LASF143:
	.string	"thread_self"
.LASF129:
	.string	"cond_new"
.LASF126:
	.string	"mutex_trylock"
.LASF46:
	.string	"_GPrivate"
.LASF15:
	.string	"__daylight"
.LASF32:
	.string	"tv_usec"
.LASF138:
	.string	"thread_create"
.LASF18:
	.string	"daylight"
.LASF132:
	.string	"cond_wait"
.LASF96:
	.string	"g_timeout_funcs"
.LASF3:
	.string	"long double"
.LASF135:
	.string	"private_new"
.LASF47:
	.string	"notify"
.LASF13:
	.string	"char"
.LASF97:
	.string	"g_child_watch_funcs"
.LASF98:
	.string	"g_idle_funcs"
.LASF75:
	.string	"source_id"
.LASF12:
	.string	"gsize"
.LASF100:
	.string	"g_unix_fd_source_funcs"
.LASF59:
	.string	"g_mem_gc_friendly"
.LASF71:
	.string	"ref_count"
.LASF146:
	.string	"g_thread_use_default_impl"
.LASF7:
	.string	"short unsigned int"
.LASF55:
	.string	"free"
.LASF154:
	.string	"/mnt/d/Uni-Stoff/Winter 20-21/Hauptseminar/testcode/first.vala.c"
.LASF28:
	.string	"gpointer"
.LASF22:
	.string	"gint"
.LASF82:
	.string	"_GSourcePrivate"
.LASF38:
	.string	"code"
.LASF36:
	.string	"_GError"
.LASF94:
	.string	"GSourceFunc"
.LASF149:
	.string	"GType"
.LASF56:
	.string	"calloc"
.LASF67:
	.string	"_GSource"
.LASF156:
	.string	"_GMutex"
.LASF21:
	.string	"glong"
.LASF74:
	.string	"flags"
.LASF95:
	.string	"GSourceDummyMarshal"
.LASF37:
	.string	"domain"
.LASF151:
	.string	"argc"
.LASF69:
	.string	"callback_funcs"
.LASF118:
	.string	"G_THREAD_PRIORITY_NORMAL"
.LASF14:
	.string	"__tzname"
.LASF152:
	.string	"argv"
.LASF87:
	.string	"_GSourceFuncs"
.LASF17:
	.string	"tzname"
.LASF134:
	.string	"cond_free"
.LASF9:
	.string	"guint32"
.LASF139:
	.string	"thread_yield"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
