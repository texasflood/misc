	.file	"ifelse.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$999, -4(%rbp)
	cmpl	$78, -4(%rbp)
	jne	.L2
	movl	$5, -8(%rbp)
	jmp	.L5
.L2:
	cmpl	$812, -4(%rbp)
	jne	.L4
	movl	$3, -8(%rbp)
	jmp	.L5
.L4:
	movl	$10, -8(%rbp)
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.7.2-5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
