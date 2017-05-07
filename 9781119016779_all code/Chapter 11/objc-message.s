Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_objc_autoreleasePoolPush
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_3(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_4(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-24(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_6(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	_objc_autoreleasePoolPop
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.cfi_endproc
