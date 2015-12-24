	.file	"tail.cpp"
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1094:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1094:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LCOLDE0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTE0:
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4,,15
	.type	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1, @function
_ZNSs4_Rep10_M_disposeERKSaIcE.part.1:
.LFB2325:
	.cfi_startproc
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L3
	movl	$-1, %eax
	lock xaddl	%eax, 16(%rdi)
.L4:
	testl	%eax, %eax
	jle	.L7
	rep ret
.L3:
	movl	16(%rdi), %eax
	leal	-1(%rax), %edx
	movl	%edx, 16(%rdi)
	jmp	.L4
.L7:
	jmp	_ZNSs4_Rep10_M_destroyERKSaIcE
	.cfi_endproc
.LFE2325:
	.size	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1, .-_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely._ZNSt5dequeISsSaISsEED2Ev,"axG",@progbits,_ZNSt5dequeISsSaISsEED5Ev,comdat
	.align 2
.LCOLDB2:
	.section	.text._ZNSt5dequeISsSaISsEED2Ev,"axG",@progbits,_ZNSt5dequeISsSaISsEED5Ev,comdat
.LHOTB2:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt5dequeISsSaISsEED2Ev
	.type	_ZNSt5dequeISsSaISsEED2Ev, @function
_ZNSt5dequeISsSaISsEED2Ev:
.LFB2063:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	72(%rdi), %r8
	movq	48(%rdi), %r9
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	40(%rdi), %rax
	movq	56(%rdi), %r13
	movq	16(%rdi), %r15
	movq	32(%rdi), %r11
	leaq	8(%rax), %r14
	movq	%rax, 40(%rsp)
	cmpq	%r14, %r8
	jbe	.L24
	.p2align 4,,10
	.p2align 3
.L69:
	movq	(%r14), %rbx
	testq	%r10, %r10
	leaq	512(%rbx), %rbp
	jne	.L70
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L20:
	addq	$8, %rbx
	cmpq	%rbp, %rbx
	je	.L18
.L70:
	movq	(%rbx), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L20
	movl	$-1, %esi
	lock xaddl	%esi, -8(%rax)
	testl	%esi, %esi
	jg	.L20
	leaq	55(%rsp), %rsi
	addq	$8, %rbx
	movq	%r10, 32(%rsp)
	movq	%r11, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	cmpq	%rbp, %rbx
	movq	32(%rsp), %r10
	movq	24(%rsp), %r11
	movq	16(%rsp), %r8
	movq	8(%rsp), %r9
	jne	.L70
	.p2align 4,,10
	.p2align 3
.L18:
	addq	$8, %r14
	cmpq	%r14, %r8
	ja	.L69
.L24:
	cmpq	40(%rsp), %r8
	je	.L94
	cmpq	%r11, %r15
	je	.L95
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	jne	.L67
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L39:
	addq	$8, %r15
	cmpq	%r15, %r11
	je	.L96
.L67:
	movq	(%r15), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L39
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L39
	leaq	55(%rsp), %rsi
	movq	%r11, 16(%rsp)
	movq	%r9, 8(%rsp)
	addq	$8, %r15
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	16(%rsp), %r11
	movq	8(%rsp), %r9
	cmpq	%r15, %r11
	jne	.L67
.L96:
	cmpq	%r13, %r9
	jne	.L52
	.p2align 4,,10
	.p2align 3
.L30:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L8
	movq	72(%r12), %rax
	movq	40(%r12), %rbx
	leaq	8(%rax), %rbp
	cmpq	%rbx, %rbp
	jbe	.L63
	.p2align 4,,10
	.p2align 3
.L64:
	movq	(%rbx), %rdi
	addq	$8, %rbx
	call	_ZdlPv
	cmpq	%rbx, %rbp
	ja	.L64
	movq	(%r12), %rdi
.L63:
	call	_ZdlPv
.L8:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L97
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L98:
	.cfi_restore_state
	movl	-8(%rax), %edx
	leal	-1(%rdx), %esi
	testl	%edx, %edx
	movl	%esi, -8(%rax)
	jg	.L15
	leaq	55(%rsp), %rsi
	movq	%r10, 32(%rsp)
	movq	%r11, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	8(%rsp), %r9
	movq	16(%rsp), %r8
	movq	24(%rsp), %r11
	movq	32(%rsp), %r10
	.p2align 4,,10
	.p2align 3
.L15:
	addq	$8, %rbx
	cmpq	%rbp, %rbx
	je	.L18
.L17:
	movq	(%rbx), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L15
	jmp	.L98
.L100:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %esi
	testl	%edx, %edx
	movl	%esi, -8(%rax)
	jg	.L34
	leaq	55(%rsp), %rsi
	movq	%r11, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	8(%rsp), %r9
	movq	16(%rsp), %r11
.L34:
	addq	$8, %r15
	cmpq	%r15, %r11
	je	.L99
	.p2align 4,,10
	.p2align 3
.L36:
	movq	(%r15), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L100
	addq	$8, %r15
	cmpq	%r15, %r11
	jne	.L36
.L99:
	cmpq	%r13, %r9
	jne	.L48
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L95:
	cmpq	%r13, %r9
	je	.L30
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	jne	.L52
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L50:
	addq	$8, %r13
	cmpq	%r13, %r9
	je	.L30
.L52:
	movq	0(%r13), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L50
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L50
	leaq	55(%rsp), %rsi
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	8(%rsp), %r9
	jmp	.L50
.L101:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %esi
	testl	%edx, %edx
	movl	%esi, -8(%rax)
	jg	.L46
	leaq	55(%rsp), %rsi
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	8(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L46:
	addq	$8, %r13
	cmpq	%r13, %r9
	je	.L30
.L48:
	movq	0(%r13), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L46
	jmp	.L101
.L94:
	cmpq	%r9, %r15
	je	.L30
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L58
	movq	(%r15), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L102
	.p2align 4,,10
	.p2align 3
.L60:
	addq	$8, %r15
	cmpq	%r15, %r9
	je	.L30
	movq	(%r15), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L60
.L102:
	movl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	testl	%edx, %edx
	jg	.L60
	leaq	55(%rsp), %rsi
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	8(%rsp), %r9
	jmp	.L60
.L103:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, -8(%rax)
	jg	.L56
	leaq	55(%rsp), %rsi
	movq	%r9, 8(%rsp)
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	8(%rsp), %r9
.L56:
	addq	$8, %r15
	cmpq	%r15, %r9
	je	.L30
.L58:
	movq	(%r15), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L56
	jmp	.L103
.L97:
	call	__stack_chk_fail
	.cfi_endproc
.LFE2063:
	.size	_ZNSt5dequeISsSaISsEED2Ev, .-_ZNSt5dequeISsSaISsEED2Ev
	.section	.text.unlikely._ZNSt5dequeISsSaISsEED2Ev,"axG",@progbits,_ZNSt5dequeISsSaISsEED5Ev,comdat
.LCOLDE2:
	.section	.text._ZNSt5dequeISsSaISsEED2Ev,"axG",@progbits,_ZNSt5dequeISsSaISsEED5Ev,comdat
.LHOTE2:
	.weak	_ZNSt5dequeISsSaISsEED1Ev
	.set	_ZNSt5dequeISsSaISsEED1Ev,_ZNSt5dequeISsSaISsEED2Ev
	.section	.text.unlikely._ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,comdat
	.align 2
.LCOLDB3:
	.section	.text._ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,comdat
.LHOTB3:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm:
.LFB2205:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2205
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$8, %eax
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	movq	%rsi, %rdi
	shrq	$6, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	1(%rdi), %rbx
	addq	$3, %rdi
	movq	%rsi, %r13
	cmpq	$8, %rdi
	cmovb	%rax, %rdi
	movq	%rdi, 8(%r12)
	salq	$3, %rdi
.LEHB0:
	call	_Znwm
.LEHE0:
	movq	8(%r12), %rdx
	movq	%rax, (%r12)
	subq	%rbx, %rdx
	shrq	%rdx
	leaq	(%rax,%rdx,8), %r14
	leaq	(%r14,%rbx,8), %rbp
	cmpq	%rbp, %r14
	jnb	.L105
	movq	%r14, %rbx
	.p2align 4,,10
	.p2align 3
.L106:
	movl	$512, %edi
.LEHB1:
	call	_Znwm
.LEHE1:
	movq	%rax, (%rbx)
	addq	$8, %rbx
	cmpq	%rbx, %rbp
	ja	.L106
.L105:
	movq	%r14, 40(%r12)
	movq	(%r14), %rdx
	andl	$63, %r13d
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	512(%rdx), %rax
	movq	%rdx, 24(%r12)
	movq	%rax, 32(%r12)
	leaq	-8(%rbp), %rax
	movq	%rax, 72(%r12)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	movq	%rdx, 16(%r12)
	movq	%rax, 56(%r12)
	leaq	512(%rax), %rcx
	leaq	(%rax,%r13,8), %rax
	movq	%rcx, 64(%r12)
	movq	%rax, 48(%r12)
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L114:
	.cfi_restore_state
.L108:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	cmpq	%r14, %rbx
	jbe	.L111
.L116:
	movq	(%r14), %rdi
	addq	$8, %r14
	call	_ZdlPv
	cmpq	%r14, %rbx
	ja	.L116
.L111:
.LEHB2:
	call	__cxa_rethrow
.LEHE2:
.L115:
	movq	%rax, %rbx
.L107:
	call	__cxa_end_catch
	movq	%rbx, %rdi
	call	__cxa_begin_catch
	movq	(%r12), %rdi
	call	_ZdlPv
	movq	$0, (%r12)
	movq	$0, 8(%r12)
.LEHB3:
	call	__cxa_rethrow
.LEHE3:
.L113:
	movq	%rax, %rbx
.L112:
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
	.cfi_endproc
.LFE2205:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,comdat
	.align 4
.LLSDA2205:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT2205-.LLSDATTD2205
.LLSDATTD2205:
	.byte	0x1
	.uleb128 .LLSDACSE2205-.LLSDACSB2205
.LLSDACSB2205:
	.uleb128 .LEHB0-.LFB2205
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2205
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L114-.LFB2205
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB2205
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L115-.LFB2205
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB2205
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L113-.LFB2205
	.uleb128 0
	.uleb128 .LEHB4-.LFB2205
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2205:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT2205:
	.section	.text._ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm
	.section	.text.unlikely._ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,comdat
.LCOLDE3:
	.section	.text._ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm,comdat
.LHOTE3:
	.section	.text.unlikely._ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,"axG",@progbits,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,comdat
	.align 2
.LCOLDB4:
	.section	.text._ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,"axG",@progbits,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,comdat
.LHOTB4:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_
	.type	_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_, @function
_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_:
.LFB2216:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2216
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	72(%rdi), %rbp
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movq	%rbp, %rax
	subq	%rcx, %rax
	movq	%rdx, %rsi
	sarq	$3, %rax
	subq	%rax, %rsi
	cmpq	$1, %rsi
	jbe	.L145
.L122:
	movl	$512, %edi
.LEHB5:
	call	_Znwm
.LEHE5:
	movq	%rax, 8(%rbp)
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L130
	movq	%r12, %rsi
.LEHB6:
	call	_ZNSsC1ERKSs
.LEHE6:
.L130:
	movq	72(%rbx), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 72(%rbx)
	movq	8(%rax), %rax
	leaq	512(%rax), %rdx
	movq	%rax, 56(%rbx)
	movq	%rax, 48(%rbx)
	movq	%rdx, 64(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L145:
	.cfi_restore_state
	movq	40(%rdi), %rsi
	movq	%rbp, %rax
	subq	%rsi, %rax
	sarq	$3, %rax
	leaq	2(%rax), %r14
	leaq	1(%rax), %r13
	leaq	(%r14,%r14), %rax
	cmpq	%rax, %rdx
	ja	.L146
	testq	%rdx, %rdx
	je	.L133
	leaq	2(%rdx,%rdx), %rbp
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rbp
	ja	.L147
.L127:
	leaq	0(,%rbp,8), %rdi
.LEHB7:
	call	_Znwm
	movq	%rbp, %rdx
	movq	%rax, %r15
	movq	40(%rbx), %rsi
	subq	%r14, %rdx
	shrq	%rdx
	leaq	(%rax,%rdx,8), %r14
	movq	72(%rbx), %rax
	leaq	8(%rax), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	jne	.L148
.L128:
	movq	(%rbx), %rdi
	call	_ZdlPv
	movq	%r15, (%rbx)
	movq	%rbp, 8(%rbx)
.L144:
	salq	$3, %r13
.L126:
	movq	%r14, 40(%rbx)
	movq	(%r14), %rax
	leaq	-8(%r14,%r13), %rbp
	movq	%rbp, 72(%rbx)
	movq	%rax, 24(%rbx)
	addq	$512, %rax
	movq	%rax, 32(%rbx)
	movq	0(%rbp), %rax
	movq	%rax, 56(%rbx)
	addq	$512, %rax
	movq	%rax, 64(%rbx)
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L146:
	subq	%r14, %rdx
	shrq	%rdx
	leaq	(%rcx,%rdx,8), %r14
	cmpq	%r14, %rsi
	jbe	.L124
	leaq	8(%rbp), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L144
	movq	%r14, %rdi
	salq	$3, %r13
	call	memmove
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L133:
	movl	$3, %ebp
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L148:
	movq	%r14, %rdi
	call	memmove
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L124:
	leaq	8(%rbp), %rdx
	salq	$3, %r13
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L126
	movq	%r13, %rdi
	subq	%rdx, %rdi
	addq	%r14, %rdi
	call	memmove
	jmp	.L126
.L147:
	call	_ZSt17__throw_bad_allocv
.LEHE7:
.L134:
.L132:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	72(%rbx), %rax
	movq	8(%rax), %rdi
	call	_ZdlPv
.LEHB8:
	call	__cxa_rethrow
.LEHE8:
.L135:
	movq	%rax, %rbx
.L131:
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
	.cfi_endproc
.LFE2216:
	.section	.gcc_except_table._ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,"aG",@progbits,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,comdat
	.align 4
.LLSDA2216:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT2216-.LLSDATTD2216
.LLSDATTD2216:
	.byte	0x1
	.uleb128 .LLSDACSE2216-.LLSDACSB2216
.LLSDACSB2216:
	.uleb128 .LEHB5-.LFB2216
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2216
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L134-.LFB2216
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB2216
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2216
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L135-.LFB2216
	.uleb128 0
	.uleb128 .LEHB9-.LFB2216
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2216:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2216:
	.section	.text._ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,"axG",@progbits,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,comdat
	.size	_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_, .-_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_
	.section	.text.unlikely._ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,"axG",@progbits,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,comdat
.LCOLDE4:
	.section	.text._ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,"axG",@progbits,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_,comdat
.LHOTE4:
	.weak	_ZNSt5dequeISsSaISsEE16_M_push_back_auxIJRKSsEEEvDpOT_
	.set	_ZNSt5dequeISsSaISsEE16_M_push_back_auxIJRKSsEEEvDpOT_,_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"Usage: tail [FILE] [NO OF LINES]\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"stoi"
.LC7:
	.string	"Failed to open file "
.LC8:
	.string	"\n"
	.section	.text.unlikely
.LCOLDB9:
	.section	.text.startup,"ax",@progbits
.LHOTB9:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1982:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1982
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$728, %rsp
	.cfi_def_cfa_offset 768
	movq	%fs:40, %rax
	movq	%rax, 712(%rsp)
	xorl	%eax, %eax
	cmpl	$3, %edi
	jne	.L248
	movq	%rsi, %rbx
	movq	16(%rsi), %rsi
	leaq	15(%rsp), %rdx
	leaq	32(%rsp), %rdi
.LEHB10:
	call	_ZNSsC1EPKcRKSaIcE
	movq	32(%rsp), %r12
	call	__errno_location
	leaq	112(%rsp), %rsi
	movl	$0, (%rax)
	movl	$10, %edx
	movq	%r12, %rdi
	movq	%rax, %rbp
	call	strtol
	cmpq	112(%rsp), %r12
	movq	%rax, %r13
	je	.L249
	cmpl	$34, 0(%rbp)
	je	.L153
	movl	$2147483648, %edx
	addq	%rax, %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	ja	.L153
	movq	32(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L250
.L155:
	movq	8(%rbx), %rsi
	leaq	192(%rsp), %rdi
	movl	$8, %edx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE10:
	leaq	312(%rsp), %rdi
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 16(%rsp)
	call	_ZNKSt12__basic_fileIcE7is_openEv
	testb	%al, %al
	je	.L156
	pxor	%xmm0, %xmm0
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 176(%rsp)
.LEHB11:
	call	_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm
.LEHE11:
	pxor	%xmm0, %xmm0
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 96(%rsp)
.LEHB12:
	call	_ZNSt11_Deque_baseISsSaISsEE17_M_initialize_mapEm
.LEHE12:
	movq	112(%rsp), %rax
	testq	%rax, %rax
	je	.L157
	movq	48(%rsp), %r10
	movq	56(%rsp), %r9
	leaq	48(%rsp), %rdi
	movq	64(%rsp), %r8
	movq	72(%rsp), %rdx
	leaq	128(%rsp), %rsi
	movl	$8, %ecx
	rep movsl
	movq	%r10, 128(%rsp)
	movq	%r9, 136(%rsp)
	leaq	80(%rsp), %rdi
	movq	%r8, 144(%rsp)
	movq	%rdx, 152(%rsp)
	leaq	160(%rsp), %rsi
	movq	104(%rsp), %rdx
	movq	80(%rsp), %r10
	movq	88(%rsp), %r9
	movq	96(%rsp), %r8
	movb	$8, %cl
	rep movsl
	movq	%rdx, 184(%rsp)
	movq	%r10, 160(%rsp)
	movq	%r9, 168(%rsp)
	movq	%r8, 176(%rsp)
	movq	32(%rsp), %rdx
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rax
	movq	%rdx, 112(%rsp)
	movq	120(%rsp), %rdx
	movq	%rax, 120(%rsp)
	movq	%rdx, 40(%rsp)
.L157:
	leaq	112(%rsp), %rdi
	xorl	%r12d, %r12d
	movl	$1, %ebp
	call	_ZNSt5dequeISsSaISsEED1Ev
	.p2align 4,,10
	.p2align 3
.L158:
	movq	192(%rsp), %rax
	movq	-24(%rax), %rax
	movq	432(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L251
	cmpb	$0, 56(%rbx)
	je	.L174
	movsbl	67(%rbx), %edx
.L175:
	leaq	16(%rsp), %rsi
	leaq	192(%rsp), %rdi
.LEHB13:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L252
	movq	96(%rsp), %rax
	movq	80(%rsp), %rdi
	subq	$8, %rax
	cmpq	%rax, %rdi
	je	.L253
	testq	%rdi, %rdi
	je	.L159
	leaq	16(%rsp), %rsi
	call	_ZNSsC1ERKSs
.LEHE13:
	movq	80(%rsp), %rdi
.L159:
	addq	$8, %rdi
	movq	%rdi, 80(%rsp)
.L160:
	testb	%r12b, %r12b
	jne	.L254
	cmpl	%r13d, %ebp
	je	.L205
	addl	$1, %ebp
	jmp	.L158
.L156:
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	movq	8(%rbx), %rbx
.LEHB14:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE14:
.L193:
	movq	16(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L255
.L194:
	leaq	192(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	xorl	%eax, %eax
.L151:
	movq	712(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L256
	addq	$728, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L174:
	.cfi_restore_state
	movq	%rbx, %rdi
.LEHB15:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L175
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %edx
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L254:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rax
	leaq	-8(%rcx), %rdx
	cmpq	%rdx, %rax
	je	.L162
	movq	(%rax), %rdx
	leaq	-24(%rdx), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L257
.L163:
	addq	$8, %rax
	movq	%rax, 48(%rsp)
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L205:
	movl	$1, %r12d
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L252:
	leaq	192(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	movq	48(%rsp), %rax
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ebp
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L261:
	movsbl	67(%rbx), %esi
.L180:
	movq	%r12, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rax
	leaq	-8(%rcx), %rdx
	cmpq	%rdx, %rax
	je	.L181
	movq	(%rax), %rdx
	leaq	-24(%rdx), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L258
.L182:
	addq	$8, %rax
	movq	%rax, 48(%rsp)
.L203:
	cmpq	%rax, 80(%rsp)
	je	.L259
.L192:
	movq	(%rax), %rsi
	movl	$_ZSt4cout, %edi
	movq	-24(%rsi), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L260
	cmpb	$0, 56(%rbx)
	jne	.L261
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L180
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L258:
	testq	%rbp, %rbp
	je	.L183
	movl	$-1, %eax
	lock xaddl	%eax, -8(%rdx)
.L184:
	testl	%eax, %eax
	jle	.L262
.L243:
	movq	48(%rsp), %rax
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L253:
	leaq	16(%rsp), %rsi
	leaq	32(%rsp), %rdi
	call	_ZNSt5dequeISsSaISsEE16_M_push_back_auxIIRKSsEEEvDpOT_
.LEHE15:
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L181:
	movq	(%rax), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L263
.L188:
	movq	56(%rsp), %rdi
	call	_ZdlPv
	movq	72(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 72(%rsp)
	movq	8(%rax), %rax
	cmpq	%rax, 80(%rsp)
	leaq	512(%rax), %rdx
	movq	%rax, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rdx, 64(%rsp)
	jne	.L192
.L259:
	leaq	32(%rsp), %rdi
	call	_ZNSt5dequeISsSaISsEED1Ev
	jmp	.L193
.L183:
	movl	-8(%rdx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -8(%rdx)
	jmp	.L184
.L257:
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L164
	orl	$-1, %eax
	lock xaddl	%eax, -8(%rdx)
.L165:
	testl	%eax, %eax
	jle	.L264
.L242:
	movq	48(%rsp), %rax
	jmp	.L163
.L162:
	movq	(%rax), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L265
.L169:
	movq	56(%rsp), %rdi
	call	_ZdlPv
	movq	72(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 72(%rsp)
	movq	8(%rax), %rax
	leaq	512(%rax), %rdx
	movq	%rax, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rdx, 64(%rsp)
	jmp	.L158
.L262:
	leaq	112(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L243
.L164:
	movl	-8(%rdx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -8(%rdx)
	jmp	.L165
.L248:
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
.LEHB16:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE16:
	orl	$-1, %eax
	jmp	.L151
.L263:
	testq	%rbp, %rbp
	je	.L189
	orl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	movl	%edx, %eax
.L190:
	testl	%eax, %eax
	jg	.L188
	leaq	112(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L188
.L250:
	leaq	112(%rsp), %rsi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L155
.L255:
	leaq	112(%rsp), %rsi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L194
.L264:
	leaq	112(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L242
.L189:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L190
.L265:
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %edx
	testq	%rdx, %rdx
	je	.L170
	orl	$-1, %edx
	lock xaddl	%edx, -8(%rax)
	movl	%edx, %eax
.L171:
	testl	%eax, %eax
	jg	.L169
	leaq	112(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L169
.L170:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L171
.L260:
.LEHB17:
	call	_ZSt16__throw_bad_castv
.LEHE17:
.L211:
	leaq	32(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZNSt5dequeISsSaISsEED1Ev
.L198:
	movq	16(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L200
	leaq	32(%rsp), %rsi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
.L200:
	leaq	192(%rsp), %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.L244:
	movq	%rbx, %rdi
.LEHB18:
	call	_Unwind_Resume
.LEHE18:
.L251:
.LEHB19:
	call	_ZSt16__throw_bad_castv
.LEHE19:
.L256:
	call	__stack_chk_fail
.L153:
	movl	$.LC6, %edi
.LEHB20:
	call	_ZSt20__throw_out_of_rangePKc
.L210:
	leaq	112(%rsp), %rdi
	movq	%rax, %rbx
	call	_ZNSt5dequeISsSaISsEED1Ev
	jmp	.L198
.L208:
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	je	.L244
	leaq	16(%rsp), %rsi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE.part.1
	jmp	.L244
.L209:
	movq	%rax, %rbx
	jmp	.L198
.L249:
	movl	$.LC6, %edi
	call	_ZSt24__throw_invalid_argumentPKc
.LEHE20:
	.cfi_endproc
.LFE1982:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1982:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1982-.LLSDACSB1982
.LLSDACSB1982:
	.uleb128 .LEHB10-.LFB1982
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1982
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L209-.LFB1982
	.uleb128 0
	.uleb128 .LEHB12-.LFB1982
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L210-.LFB1982
	.uleb128 0
	.uleb128 .LEHB13-.LFB1982
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L211-.LFB1982
	.uleb128 0
	.uleb128 .LEHB14-.LFB1982
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L209-.LFB1982
	.uleb128 0
	.uleb128 .LEHB15-.LFB1982
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L211-.LFB1982
	.uleb128 0
	.uleb128 .LEHB16-.LFB1982
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB1982
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L211-.LFB1982
	.uleb128 0
	.uleb128 .LEHB18-.LFB1982
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB1982
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L211-.LFB1982
	.uleb128 0
	.uleb128 .LEHB20-.LFB1982
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L208-.LFB1982
	.uleb128 0
.LLSDACSE1982:
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE9:
	.section	.text.startup
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.section	.text.startup
.LHOTB10:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2323:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2323:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.text.unlikely
.LCOLDE10:
	.section	.text.startup
.LHOTE10:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
