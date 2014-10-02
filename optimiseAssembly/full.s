	.file	"assembly.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB34:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	call	rand
	movl	%eax, %ebx
	call	rand
	cmpl	%eax, %ebx
	jle	.L2
	movl	%ebx, %edx
	subl	%eax, %edx
	cmpl	$179, %edx
	setle	%dl
.L3:
	testb	%dl, %dl
	je	.L4
	movl	%ebx, %edx
	movl	%eax, %ecx
	subl	%eax, %edx
	subl	%ebx, %ecx
	cmpl	%eax, %ebx
	cmovle	%ecx, %edx
.L6:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
.L2:
	.cfi_restore_state
	movl	%eax, %edx
	subl	%ebx, %edx
	cmpl	$179, %edx
	setle	%dl
	jmp	.L3
.L4:
	cmpl	%eax, %ebx
	jle	.L7
	subl	%ebx, %eax
	leal	360(%rax), %edx
	jmp	.L6
.L7:
	subl	%eax, %ebx
	leal	360(%rbx), %edx
	jmp	.L6
	.cfi_endproc
.LFE34:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
