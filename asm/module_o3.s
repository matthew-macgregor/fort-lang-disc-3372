	.file	"module.f90"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	__mmodule_MOD___copy_mmodule_Moa_view_type
	.def	__mmodule_MOD___copy_mmodule_Moa_view_type;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___copy_mmodule_Moa_view_type
__mmodule_MOD___copy_mmodule_Moa_view_type:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movdqu	xmm0, XMMWORD PTR [rcx]
	movdqu	xmm1, XMMWORD PTR 16[rcx]
	movdqu	xmm2, XMMWORD PTR 32[rcx]
	movdqu	xmm3, XMMWORD PTR 48[rcx]
	movdqu	xmm4, XMMWORD PTR 64[rcx]
	movdqu	xmm5, XMMWORD PTR 80[rcx]
	mov	rax, QWORD PTR 128[rcx]
	movups	XMMWORD PTR [rdx], xmm0
	movdqu	xmm0, XMMWORD PTR 96[rcx]
	mov	rsi, rcx
	mov	rdi, rdx
	movups	XMMWORD PTR 16[rdx], xmm1
	movdqu	xmm1, XMMWORD PTR 112[rcx]
	mov	QWORD PTR 128[rdx], rax
	movups	XMMWORD PTR 32[rdx], xmm2
	movups	XMMWORD PTR 48[rdx], xmm3
	movups	XMMWORD PTR 64[rdx], xmm4
	movups	XMMWORD PTR 80[rdx], xmm5
	movups	XMMWORD PTR 96[rdx], xmm0
	movups	XMMWORD PTR 112[rdx], xmm1
	cmp	rdx, rcx
	je	.L1
	mov	r12, QWORD PTR 8[rcx]
	test	r12, r12
	je	.L4
	mov	rax, QWORD PTR 64[rcx]
	sub	rax, QWORD PTR 56[rcx]
	mov	ecx, 1
	lea	rbx, 4[0+rax*4]
	test	rbx, rbx
	cmovne	rcx, rbx
	call	malloc
	mov	r8, rbx
	mov	rdx, r12
	mov	QWORD PTR 8[rdi], rax
	mov	rcx, rax
	call	memcpy
.L5:
	movdqu	xmm2, XMMWORD PTR 72[rsi]
	movdqu	xmm3, XMMWORD PTR 88[rsi]
	movdqu	xmm4, XMMWORD PTR 104[rsi]
	movdqu	xmm5, XMMWORD PTR 120[rsi]
	mov	r12, QWORD PTR 72[rsi]
	movups	XMMWORD PTR 72[rdi], xmm2
	movups	XMMWORD PTR 88[rdi], xmm3
	movups	XMMWORD PTR 104[rdi], xmm4
	movups	XMMWORD PTR 120[rdi], xmm5
	test	r12, r12
	je	.L6
	mov	rbp, QWORD PTR 128[rsi]
	sub	rbp, QWORD PTR 120[rsi]
	mov	ecx, 1
	lea	rax, 1[rbp]
	mov	rbx, rax
	sal	rbx, 4
	add	rbx, rax
	sal	rbx, 3
	cmovne	rcx, rbx
	call	malloc
	mov	r8, rbx
	mov	rdx, r12
	mov	QWORD PTR 72[rdi], rax
	mov	rcx, rax
	call	memcpy
	test	rbp, rbp
	js	.L1
	xor	r13d, r13d
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rdx, QWORD PTR 64[rax]
	sub	rdx, QWORD PTR 56[rax]
	mov	ecx, 1
	lea	r12, 4[0+rdx*4]
	test	r12, r12
	cmovne	rcx, r12
	call	malloc
	mov	r8, rax
	mov	rax, QWORD PTR 72[rdi]
	add	rax, rbx
	mov	QWORD PTR 8[rax], r8
	mov	rax, QWORD PTR 72[rdi]
	mov	r8, r12
	add	rax, rbx
	add	rbx, QWORD PTR 72[rsi]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR 8[rbx]
	call	memcpy
	lea	rax, 1[r13]
	cmp	rbp, r13
	je	.L1
.L13:
	mov	r12, QWORD PTR 72[rsi]
	mov	r13, rax
.L10:
	mov	rbx, r13
	sal	rbx, 4
	add	rbx, r13
	sal	rbx, 3
	lea	rax, [r12+rbx]
	cmp	QWORD PTR 8[rax], 0
	jne	.L12
	add	rbx, QWORD PTR 72[rdi]
	lea	rax, 1[r13]
	mov	QWORD PTR 8[rbx], 0
	cmp	rbp, r13
	jne	.L13
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	QWORD PTR 8[rdx], 0
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	mov	QWORD PTR 72[rdi], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	__mmodule_MOD___copy_mmodule_Moa_basic_view
	.def	__mmodule_MOD___copy_mmodule_Moa_basic_view;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___copy_mmodule_Moa_basic_view
__mmodule_MOD___copy_mmodule_Moa_basic_view:
	push	r12
	.seh_pushreg	r12
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movdqu	xmm0, XMMWORD PTR [rcx]
	movdqu	xmm1, XMMWORD PTR 16[rcx]
	movdqu	xmm2, XMMWORD PTR 32[rcx]
	movdqu	xmm3, XMMWORD PTR 48[rcx]
	movdqu	xmm4, XMMWORD PTR 64[rcx]
	movdqu	xmm5, XMMWORD PTR 80[rcx]
	mov	rax, QWORD PTR 128[rcx]
	movups	XMMWORD PTR [rdx], xmm0
	movdqu	xmm0, XMMWORD PTR 96[rcx]
	mov	rbx, rdx
	movups	XMMWORD PTR 16[rdx], xmm1
	movdqu	xmm1, XMMWORD PTR 112[rcx]
	mov	QWORD PTR 128[rdx], rax
	movups	XMMWORD PTR 32[rdx], xmm2
	movups	XMMWORD PTR 48[rdx], xmm3
	movups	XMMWORD PTR 64[rdx], xmm4
	movups	XMMWORD PTR 80[rdx], xmm5
	movups	XMMWORD PTR 96[rdx], xmm0
	movups	XMMWORD PTR 112[rdx], xmm1
	cmp	rdx, rcx
	je	.L14
	mov	r12, QWORD PTR 8[rcx]
	test	r12, r12
	je	.L16
	mov	rax, QWORD PTR 64[rcx]
	sub	rax, QWORD PTR 56[rcx]
	mov	ecx, 1
	lea	rsi, 4[0+rax*4]
	test	rsi, rsi
	cmovne	rcx, rsi
	call	malloc
	mov	r8, rsi
	mov	rdx, r12
	mov	rcx, rax
	mov	QWORD PTR 8[rbx], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	r12
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L16:
	mov	QWORD PTR 8[rdx], 0
.L14:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	__mmodule_MOD___final_mmodule_Moa_view_type
	.def	__mmodule_MOD___final_mmodule_Moa_view_type;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___final_mmodule_Moa_view_type
__mmodule_MOD___final_mmodule_Moa_view_type:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	eax, eax
	movsx	rdi, BYTE PTR 28[rcx]
	mov	r15, rdi
	mov	r14, rcx
	lea	rcx, 1[rdi]
	mov	QWORD PTR 136[rsp], rdx
	test	rcx, rcx
	cmovs	rcx, rax
	mov	eax, 1
	sal	rcx, 3
	cmove	rcx, rax
	call	malloc
	xor	ecx, ecx
	test	rdi, rdi
	cmovns	rcx, rdi
	mov	r12, rax
	mov	eax, 1
	sal	rcx, 3
	cmove	rcx, rax
	call	malloc
	mov	QWORD PTR [r12], 1
	mov	r13, rax
	test	rdi, rdi
	jle	.L23
	mov	rax, QWORD PTR 40[r14]
	mov	QWORD PTR 0[r13], rax
	cmp	rdi, 1
	je	.L21
	mov	rax, QWORD PTR 64[r14]
	mov	QWORD PTR 8[r13], rax
	cmp	rdi, 2
	je	.L21
	mov	rax, QWORD PTR 88[r14]
	mov	QWORD PTR 16[r13], rax
	cmp	rdi, 3
	je	.L21
	mov	rax, QWORD PTR 112[r14]
	mov	QWORD PTR 24[r13], rax
	cmp	rdi, 4
	je	.L21
	mov	rax, QWORD PTR 136[r14]
	mov	QWORD PTR 32[r13], rax
	cmp	rdi, 5
	je	.L21
	mov	rax, QWORD PTR 160[r14]
	mov	QWORD PTR 40[r13], rax
	cmp	rdi, 6
	je	.L21
	mov	rax, QWORD PTR 184[r14]
	mov	QWORD PTR 48[r13], rax
	cmp	rdi, 7
	je	.L21
	mov	rax, QWORD PTR 208[r14]
	mov	QWORD PTR 56[r13], rax
	cmp	rdi, 8
	je	.L21
	mov	rax, QWORD PTR 232[r14]
	mov	QWORD PTR 64[r13], rax
	cmp	rdi, 9
	je	.L21
	mov	rax, QWORD PTR 256[r14]
	mov	QWORD PTR 72[r13], rax
	cmp	rdi, 10
	je	.L21
	mov	rax, QWORD PTR 280[r14]
	mov	QWORD PTR 80[r13], rax
	cmp	rdi, 11
	je	.L21
	mov	rax, QWORD PTR 304[r14]
	mov	QWORD PTR 88[r13], rax
	cmp	rdi, 12
	je	.L21
	mov	rax, QWORD PTR 328[r14]
	mov	QWORD PTR 96[r13], rax
	cmp	rdi, 13
	je	.L21
	mov	rax, QWORD PTR 352[r14]
	mov	QWORD PTR 104[r13], rax
	cmp	rdi, 14
	je	.L21
	mov	rax, QWORD PTR 376[r14]
	mov	QWORD PTR 112[r13], rax
	cmp	rdi, 15
	je	.L21
	mov	rax, QWORD PTR 400[r14]
	mov	QWORD PTR 120[r13], rax
	cmp	rdi, 16
	je	.L21
	lea	rdx, 424[r14]
	mov	eax, 17
.L22:
	mov	rcx, QWORD PTR [rdx]
	add	rdx, 24
	mov	QWORD PTR -8[r13+rax*8], rcx
	add	rax, 1
	cmp	rdi, rax
	jge	.L22
	.p2align 4,,10
	.p2align 3
.L21:
	lea	rcx, 48[r14]
	mov	rdx, r12
	lea	r10, [r12+rdi*8]
	mov	r8d, 1
	.p2align 4,,10
	.p2align 3
.L24:
	mov	rax, QWORD PTR 8[rcx]
	sub	rax, QWORD PTR [rcx]
	mov	r9d, 0
	add	rax, 1
	cmovs	rax, r9
	add	rdx, 8
	add	rcx, 24
	imul	r8, rax
	mov	QWORD PTR [rdx], r8
	cmp	rdx, r10
	jne	.L24
.L23:
	mov	rax, QWORD PTR [r12+rdi*8]
	mov	QWORD PTR 40[rsp], rax
	test	rax, rax
	jle	.L19
	xor	ebp, ebp
	test	rdi, rdi
	jle	.L37
	.p2align 4,,10
	.p2align 3
.L102:
	cmp	r15b, 2
	jle	.L38
	lea	r11, -3[rdi]
	mov	r10d, 1
	xor	r8d, r8d
	mov	ecx, 1
	and	r11, -2
	add	r11, 3
.L27:
	mov	r15, QWORD PTR [r12+rcx*8]
	mov	rax, rbp
	mov	r9, QWORD PTR -8[r13+rcx*8]
	cqo
	idiv	r15
	mov	rax, rdx
	cqo
	idiv	r10
	mov	r10, QWORD PTR 8[r12+rcx*8]
	imul	r9, rax
	mov	rax, rbp
	cqo
	idiv	r10
	add	r9, r8
	mov	r8, QWORD PTR 0[r13+rcx*8]
	add	rcx, 2
	mov	rax, rdx
	cqo
	idiv	r15
	imul	r8, rax
	add	r8, r9
	cmp	r11, rcx
	jne	.L27
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, rbp
	cqo
	idiv	QWORD PTR [r12+rcx*8]
	mov	rax, rdx
	cqo
	idiv	QWORD PTR -8[r12+rcx*8]
	imul	rax, QWORD PTR -8[r13+rcx*8]
	add	rcx, 1
	add	r8, rax
	cmp	rdi, rcx
	jge	.L28
	imul	r8, QWORD PTR 136[rsp]
.L25:
	mov	rdi, r8
	add	rdi, QWORD PTR [r14]
	je	.L30
	mov	rcx, QWORD PTR 8[rdi]
	test	rcx, rcx
	je	.L31
	call	free
	mov	QWORD PTR 8[rdi], 0
.L31:
	mov	r8, QWORD PTR 72[rdi]
	test	r8, r8
	jne	.L101
.L30:
	add	rbp, 1
	cmp	QWORD PTR 40[rsp], rbp
	je	.L19
.L103:
	movsx	rdi, BYTE PTR 28[r14]
	mov	r15, rdi
	test	rdi, rdi
	jg	.L102
.L37:
	xor	r8d, r8d
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L101:
	mov	r15, QWORD PTR 128[rdi]
	sub	r15, QWORD PTR 120[rdi]
	js	.L32
	xor	ebx, ebx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rbx, rax
.L34:
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	lea	rsi, 0[0+rax*8]
	mov	rcx, QWORD PTR 8[r8+rsi]
	test	rcx, rcx
	je	.L33
	call	free
	mov	rax, QWORD PTR 72[rdi]
	add	rax, rsi
	mov	QWORD PTR 8[rax], 0
	mov	r8, QWORD PTR 72[rdi]
.L33:
	lea	rax, 1[rbx]
	cmp	r15, rbx
	jne	.L39
	test	r8, r8
	je	.L30
.L32:
	mov	rcx, r8
	add	rbp, 1
	call	free
	mov	QWORD PTR 72[rdi], 0
	cmp	QWORD PTR 40[rsp], rbp
	jne	.L103
.L19:
	mov	rcx, r13
	call	free
	mov	rcx, r12
	call	free
	xor	eax, eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L38:
	xor	r8d, r8d
	mov	ecx, 1
	jmp	.L28
	.seh_endproc
	.p2align 4
	.globl	__mmodule_MOD___final_mmodule_Moa_basic_view
	.def	__mmodule_MOD___final_mmodule_Moa_basic_view;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___final_mmodule_Moa_basic_view
__mmodule_MOD___final_mmodule_Moa_basic_view:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	xor	eax, eax
	movsx	r14, BYTE PTR 28[rcx]
	mov	r15, r14
	mov	rsi, rcx
	lea	rcx, 1[r14]
	mov	rdi, rdx
	test	rcx, rcx
	cmovs	rcx, rax
	mov	eax, 1
	sal	rcx, 3
	cmove	rcx, rax
	call	malloc
	xor	ecx, ecx
	test	r14, r14
	cmovns	rcx, r14
	mov	r12, rax
	mov	eax, 1
	sal	rcx, 3
	cmove	rcx, rax
	call	malloc
	mov	QWORD PTR [r12], 1
	mov	r13, rax
	test	r14, r14
	jle	.L110
	mov	rax, QWORD PTR 40[rsi]
	mov	QWORD PTR 0[r13], rax
	cmp	r14, 1
	je	.L108
	mov	rax, QWORD PTR 64[rsi]
	mov	QWORD PTR 8[r13], rax
	cmp	r14, 2
	je	.L108
	mov	rax, QWORD PTR 88[rsi]
	mov	QWORD PTR 16[r13], rax
	cmp	r14, 3
	je	.L108
	mov	rax, QWORD PTR 112[rsi]
	mov	QWORD PTR 24[r13], rax
	cmp	r14, 4
	je	.L108
	mov	rax, QWORD PTR 136[rsi]
	mov	QWORD PTR 32[r13], rax
	cmp	r14, 5
	je	.L108
	mov	rax, QWORD PTR 160[rsi]
	mov	QWORD PTR 40[r13], rax
	cmp	r14, 6
	je	.L108
	mov	rax, QWORD PTR 184[rsi]
	mov	QWORD PTR 48[r13], rax
	cmp	r14, 7
	je	.L108
	mov	rax, QWORD PTR 208[rsi]
	mov	QWORD PTR 56[r13], rax
	cmp	r14, 8
	je	.L108
	mov	rax, QWORD PTR 232[rsi]
	mov	QWORD PTR 64[r13], rax
	cmp	r14, 9
	je	.L108
	mov	rax, QWORD PTR 256[rsi]
	mov	QWORD PTR 72[r13], rax
	cmp	r14, 10
	je	.L108
	mov	rax, QWORD PTR 280[rsi]
	mov	QWORD PTR 80[r13], rax
	cmp	r14, 11
	je	.L108
	mov	rax, QWORD PTR 304[rsi]
	mov	QWORD PTR 88[r13], rax
	cmp	r14, 12
	je	.L108
	mov	rax, QWORD PTR 328[rsi]
	mov	QWORD PTR 96[r13], rax
	cmp	r14, 13
	je	.L108
	mov	rax, QWORD PTR 352[rsi]
	mov	QWORD PTR 104[r13], rax
	cmp	r14, 14
	je	.L108
	mov	rax, QWORD PTR 376[rsi]
	mov	QWORD PTR 112[r13], rax
	cmp	r14, 15
	je	.L108
	mov	rax, QWORD PTR 400[rsi]
	mov	QWORD PTR 120[r13], rax
	cmp	r14, 16
	je	.L108
	lea	rdx, 424[rsi]
	mov	eax, 17
.L109:
	mov	rcx, QWORD PTR [rdx]
	add	rdx, 24
	mov	QWORD PTR -8[r13+rax*8], rcx
	add	rax, 1
	cmp	r14, rax
	jge	.L109
	.p2align 4,,10
	.p2align 3
.L108:
	lea	rcx, 48[rsi]
	mov	rdx, r12
	lea	r10, [r12+r14*8]
	mov	r8d, 1
	.p2align 4,,10
	.p2align 3
.L111:
	mov	rax, QWORD PTR 8[rcx]
	sub	rax, QWORD PTR [rcx]
	mov	r9d, 0
	add	rax, 1
	cmovs	rax, r9
	add	rdx, 8
	add	rcx, 24
	imul	r8, rax
	mov	QWORD PTR [rdx], r8
	cmp	rdx, r10
	jne	.L111
.L110:
	mov	rbp, QWORD PTR [r12+r14*8]
	test	rbp, rbp
	jle	.L106
	xor	ebx, ebx
	test	r14, r14
	jle	.L117
	.p2align 4,,10
	.p2align 3
.L176:
	cmp	r15b, 2
	jle	.L118
	lea	rcx, -3[r14]
	mov	r11d, 1
	xor	r8d, r8d
	mov	r10d, 1
	and	rcx, -2
	add	rcx, 3
.L114:
	mov	r15, QWORD PTR [r12+r10*8]
	mov	rax, rbx
	mov	r9, QWORD PTR -8[r13+r10*8]
	cqo
	idiv	r15
	mov	rax, rdx
	cqo
	idiv	r11
	mov	r11, QWORD PTR 8[r12+r10*8]
	imul	r9, rax
	mov	rax, rbx
	cqo
	idiv	r11
	add	r9, r8
	mov	r8, QWORD PTR 0[r13+r10*8]
	add	r10, 2
	mov	rax, rdx
	cqo
	idiv	r15
	imul	r8, rax
	add	r8, r9
	cmp	r10, rcx
	jne	.L114
	.p2align 4,,10
	.p2align 3
.L115:
	mov	rax, rbx
	cqo
	idiv	QWORD PTR [r12+rcx*8]
	mov	rax, rdx
	cqo
	idiv	QWORD PTR -8[r12+rcx*8]
	imul	rax, QWORD PTR -8[r13+rcx*8]
	add	rcx, 1
	add	r8, rax
	cmp	r14, rcx
	jge	.L115
	imul	r8, rdi
.L112:
	mov	r14, r8
	add	r14, QWORD PTR [rsi]
	je	.L116
	mov	rcx, QWORD PTR 8[r14]
	test	rcx, rcx
	je	.L116
	call	free
	mov	QWORD PTR 8[r14], 0
.L116:
	add	rbx, 1
	cmp	rbp, rbx
	je	.L106
	movsx	r14, BYTE PTR 28[rsi]
	mov	r15, r14
	test	r14, r14
	jg	.L176
.L117:
	xor	r8d, r8d
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L106:
	mov	rcx, r13
	call	free
	mov	rcx, r12
	call	free
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L118:
	xor	r8d, r8d
	mov	ecx, 1
	jmp	.L115
	.seh_endproc
	.p2align 4
	.globl	__mmodule_MOD_get_pointer
	.def	__mmodule_MOD_get_pointer;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_get_pointer
__mmodule_MOD_get_pointer:
	.seh_endprologue
	lea	rax, dummy.1[rip]
	mov	DWORD PTR [r9], 1
	mov	QWORD PTR [r8], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__mmodule_MOD_get_pointer_dummy
	.def	__mmodule_MOD_get_pointer_dummy;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_get_pointer_dummy
__mmodule_MOD_get_pointer_dummy:
	.seh_endprologue
	lea	rax, dummy.0[rip]
	mov	DWORD PTR [r8], 1
	mov	QWORD PTR [rdx], rax
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "src\\module.f90\0"
.LC1:
	.ascii "(a,g12.6)"
.LC2:
	.ascii "Wall clock (s): "
.LC3:
	.ascii "CPU time (s):   "
	.text
	.p2align 4
	.globl	__mmodule_MOD_stop_timer
	.def	__mmodule_MOD_stop_timer;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_stop_timer
__mmodule_MOD_stop_timer:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 584
	.seh_stackalloc	584
	.seh_endprologue
	xor	r8d, r8d
	xor	edx, edx
	lea	rsi, .LC0[rip]
	lea	rbx, .LC1[rip]
	lea	rcx, 40[rsp]
	lea	r12, 48[rsp]
	call	_gfortran_system_clock_4
	mov	eax, DWORD PTR 40[rsp]
	lea	r13, 44[rsp]
	lea	rcx, __mmodule_MOD_cpu_last[rip]
	mov	DWORD PTR __mmodule_MOD_time_last[rip], eax
	call	_gfortran_cpu_time_4
	mov	eax, DWORD PTR __mmodule_MOD_lurep[rip]
	mov	rcx, r12
	mov	QWORD PTR 56[rsp], rsi
	mov	DWORD PTR 64[rsp], 47
	mov	DWORD PTR 52[rsp], eax
	mov	QWORD PTR 128[rsp], rbx
	mov	QWORD PTR 136[rsp], 9
	mov	DWORD PTR 48[rsp], 4096
	call	_gfortran_st_write
	mov	rcx, r12
	mov	r8d, 16
	lea	rdx, .LC2[rip]
	call	_gfortran_transfer_character_write
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	mov	rdx, r13
	mov	eax, DWORD PTR __mmodule_MOD_time_last[rip]
	sub	eax, DWORD PTR __mmodule_MOD_time_first[rip]
	mov	r8d, 4
	mov	rcx, r12
	cvtsi2ss	xmm1, DWORD PTR __mmodule_MOD_time_rate[rip]
	cvtsi2ss	xmm0, eax
	divss	xmm0, xmm1
	movss	DWORD PTR 44[rsp], xmm0
	call	_gfortran_transfer_real_write
	mov	rcx, r12
	call	_gfortran_st_write_done
	mov	eax, DWORD PTR __mmodule_MOD_lurep[rip]
	mov	rcx, r12
	mov	QWORD PTR 56[rsp], rsi
	mov	DWORD PTR 64[rsp], 48
	mov	DWORD PTR 52[rsp], eax
	mov	QWORD PTR 128[rsp], rbx
	mov	QWORD PTR 136[rsp], 9
	mov	DWORD PTR 48[rsp], 4096
	call	_gfortran_st_write
	mov	rcx, r12
	mov	r8d, 16
	lea	rdx, .LC3[rip]
	call	_gfortran_transfer_character_write
	movss	xmm0, DWORD PTR __mmodule_MOD_cpu_last[rip]
	mov	rdx, r13
	mov	rcx, r12
	subss	xmm0, DWORD PTR __mmodule_MOD_cpu_first[rip]
	mov	r8d, 4
	movss	DWORD PTR 44[rsp], xmm0
	call	_gfortran_transfer_real_write
	mov	rcx, r12
	call	_gfortran_st_write_done
	nop
	add	rsp, 584
	pop	rbx
	pop	rsi
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	__mmodule_MOD_start_timer
	.def	__mmodule_MOD_start_timer;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_start_timer
__mmodule_MOD_start_timer:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r8d, r8d
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	call	_gfortran_system_clock_4
	mov	eax, DWORD PTR 40[rsp]
	lea	rcx, __mmodule_MOD_cpu_first[rip]
	mov	DWORD PTR __mmodule_MOD_time_first[rip], eax
	mov	eax, DWORD PTR 44[rsp]
	mov	DWORD PTR __mmodule_MOD_time_rate[rip], eax
	call	_gfortran_cpu_time_4
	nop
	add	rsp, 56
	ret
	.seh_endproc
.lcomm dummy.0,4,4
.lcomm dummy.1,4,4
	.globl	__mmodule_MOD_time_rate
	.bss
	.align 4
__mmodule_MOD_time_rate:
	.space 4
	.globl	__mmodule_MOD_time_last
	.align 4
__mmodule_MOD_time_last:
	.space 4
	.globl	__mmodule_MOD_time_first
	.align 4
__mmodule_MOD_time_first:
	.space 4
	.globl	__mmodule_MOD_lurep
	.data
	.align 4
__mmodule_MOD_lurep:
	.long	6
	.globl	__mmodule_MOD_cpu_last
	.bss
	.align 4
__mmodule_MOD_cpu_last:
	.space 4
	.globl	__mmodule_MOD_cpu_first
	.align 4
__mmodule_MOD_cpu_first:
	.space 4
	.globl	__mmodule_MOD___vtab_mmodule_Moa_view_type
	.data
	.align 32
__mmodule_MOD___vtab_mmodule_Moa_view_type:
	.long	59588046
	.space 4
	.quad	136
	.quad	0
	.quad	__mmodule_MOD___def_init_mmodule_Moa_view_type
	.quad	__mmodule_MOD___copy_mmodule_Moa_view_type
	.quad	__mmodule_MOD___final_mmodule_Moa_view_type
	.quad	0
	.globl	__mmodule_MOD___vtab_mmodule_Moa_basic_view
	.align 32
__mmodule_MOD___vtab_mmodule_Moa_basic_view:
	.long	50479292
	.space 4
	.quad	136
	.quad	0
	.quad	__mmodule_MOD___def_init_mmodule_Moa_basic_view
	.quad	__mmodule_MOD___copy_mmodule_Moa_basic_view
	.quad	__mmodule_MOD___final_mmodule_Moa_basic_view
	.quad	0
	.globl	__mmodule_MOD___def_init_mmodule_Moa_view_type
	.section .rdata,"dr"
	.align 32
__mmodule_MOD___def_init_mmodule_Moa_view_type:
	.long	1
	.space 132
	.globl	__mmodule_MOD___def_init_mmodule_Moa_basic_view
	.align 32
__mmodule_MOD___def_init_mmodule_Moa_basic_view:
	.space 136
	.ident	"GCC: (GNU) 11.2.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_gfortran_system_clock_4;	.scl	2;	.type	32;	.endef
	.def	_gfortran_cpu_time_4;	.scl	2;	.type	32;	.endef
	.def	_gfortran_st_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_transfer_character_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_transfer_real_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_st_write_done;	.scl	2;	.type	32;	.endef
