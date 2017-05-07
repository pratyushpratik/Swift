	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
_top_level_code:
	.cfi_startproc
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:
	.cfi_startproc
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__TFSsa6C_ARGCVSs5Int32
	movl	-4(%rbp), %edi
	movl	%edi, (%rax)
	callq	__TFSsa6C_ARGVGVSs20UnsafeMutablePointerGS_VSs4Int8__
	movq	-16(%rbp), %rsi
	movq	%rsi, (%rax)
	callq	_top_level_code
	movl	$0, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.linker_option "-lswiftCore"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	512


.subsections_via_symbols
