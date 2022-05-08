	.file	"module.f90"
	.intel_syntax noprefix
	.text
	.globl	__mmodule_MOD___def_init_mmodule_Moa_basic_view
	.section .rdata,"dr"
	.align 32
__mmodule_MOD___def_init_mmodule_Moa_basic_view:
	.space 136
	.globl	__mmodule_MOD___def_init_mmodule_Moa_view_type
	.align 32
__mmodule_MOD___def_init_mmodule_Moa_view_type:
	.long	1
	.space 132
	.globl	__mmodule_MOD___vtab_mmodule_Moa_basic_view
	.data
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
	.globl	__mmodule_MOD___vtab_mmodule_Moa_view_type
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
	.globl	__mmodule_MOD_cpu_first
	.bss
	.align 4
__mmodule_MOD_cpu_first:
	.space 4
	.globl	__mmodule_MOD_cpu_last
	.align 4
__mmodule_MOD_cpu_last:
	.space 4
	.globl	__mmodule_MOD_lurep
	.data
	.align 4
__mmodule_MOD_lurep:
	.long	6
	.globl	__mmodule_MOD_time_first
	.bss
	.align 4
__mmodule_MOD_time_first:
	.space 4
	.globl	__mmodule_MOD_time_last
	.align 4
__mmodule_MOD_time_last:
	.space 4
	.globl	__mmodule_MOD_time_rate
	.align 4
__mmodule_MOD_time_rate:
	.space 4
	.text
	.globl	__mmodule_MOD___final_mmodule_Moa_view_type
	.def	__mmodule_MOD___final_mmodule_Moa_view_type;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___final_mmodule_Moa_view_type
__mmodule_MOD___final_mmodule_Moa_view_type:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 152
	.seh_stackalloc	152
	lea	rbp, 144[rsp]
	.seh_setframe	rbp, 144
	.seh_endprologue
	mov	QWORD PTR 48[rbp], rcx
	mov	QWORD PTR 56[rbp], rdx
	mov	BYTE PTR 64[rbp], r8b
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rax, al
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 1
	mov	edx, 0
	test	rax, rax
	cmovs	rax, rdx
	mov	rdx, rax
	mov	r10, rdx
	mov	r11d, 0
	sal	rax, 3
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rax, al
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	edx, 0
	test	rax, rax
	cmovs	rax, rdx
	mov	rdx, rax
	mov	rsi, rdx
	mov	edi, 0
	sal	rax, 3
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -88[rbp], 0
	mov	DWORD PTR -60[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], 1
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rdx, al
	mov	QWORD PTR -8[rbp], 1
.L4:
	cmp	QWORD PTR -8[rbp], rdx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L20
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, -1[rax]
	mov	r9, QWORD PTR 48[rbp]
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 3
	add	rax, r9
	add	rax, 40
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax+r8*8], rcx
	mov	r10, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax+rcx*8]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, -1[rax]
	mov	rax, r8
	add	rax, rax
	add	rax, r8
	sal	rax, 3
	add	rax, r10
	add	rax, 56
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	r9, -1[rax]
	mov	rax, r9
	add	rax, rax
	add	rax, r9
	sal	rax, 3
	add	rax, r10
	add	rax, 48
	mov	r9, QWORD PTR [rax]
	mov	rax, r8
	sub	rax, r9
	add	rax, 1
	mov	r8d, 0
	test	rax, rax
	cmovs	rax, r8
	imul	rcx, rax
	mov	r8, rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax+rcx*8], r8
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rax+rcx*8]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax+r8*8]
	cmp	rcx, rax
	je	.L3
	mov	DWORD PTR -60[rbp], 0
.L3:
	add	QWORD PTR -8[rbp], 1
	jmp	.L4
.L20:
	nop
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rdx, al
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax+rdx*8]
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	mov	rsi, QWORD PTR -72[rbp]
	mov	QWORD PTR -8[rbp], 0
.L18:
	cmp	QWORD PTR -8[rbp], rsi
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L21
	mov	QWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rcx, al
	mov	QWORD PTR -16[rbp], 1
.L7:
	cmp	QWORD PTR -16[rbp], rcx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L22
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	r8, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -8[rbp]
	cqo
	idiv	r8
	mov	r8, rdx
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, QWORD PTR [rax+rdx*8]
	mov	rax, r8
	cqo
	idiv	rdi
	mov	r8, rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax+rdx*8]
	imul	rax, r8
	add	QWORD PTR -24[rbp], rax
	add	QWORD PTR -16[rbp], 1
	jmp	.L7
.L22:
	nop
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, QWORD PTR 56[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -96[rbp], rax
	mov	eax, 8
	mov	edx, 8
	cmp	rdx, rax
	cmovle	rax, rdx
	mov	edx, 0
	test	rax, rax
	cmovs	rax, rdx
	mov	r8, rax
	lea	rdx, -104[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rdx
	mov	rdx, r8
	mov	r8, rdx
	mov	rdx, rax
	call	memcpy
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	QWORD PTR -80[rbp], rax
	cmp	QWORD PTR -80[rbp], 0
	je	.L8
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L9
	mov	DWORD PTR -108[rbp], 1
	jmp	.L10
.L9:
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	DWORD PTR -108[rbp], 0
.L10:
	mov	eax, DWORD PTR -108[rbp]
	mov	DWORD PTR -84[rbp], eax
.L8:
	cmp	QWORD PTR -80[rbp], 0
	je	.L11
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 72[rax]
	test	rax, rax
	je	.L12
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR 128[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR 120[rax]
	mov	rax, rdx
	sub	rax, rcx
	add	rax, 1
	lea	rdi, -1[rax]
	mov	ebx, 0
.L15:
	cmp	rbx, rdi
	jg	.L12
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L14
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 8
	mov	QWORD PTR [rax], 0
.L14:
	add	rbx, 1
	jmp	.L15
.L12:
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 72[rax]
	test	rax, rax
	jne	.L16
	mov	DWORD PTR -112[rbp], 1
	jmp	.L17
.L16:
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 72[rax]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR 72[rax], 0
	mov	DWORD PTR -112[rbp], 0
.L17:
	mov	eax, DWORD PTR -112[rbp]
	mov	DWORD PTR -84[rbp], eax
.L11:
	add	QWORD PTR -8[rbp], 1
	jmp	.L18
.L21:
	nop
	mov	ebx, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	free
	mov	eax, ebx
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	__mmodule_MOD___copy_mmodule_Moa_view_type
	.def	__mmodule_MOD___copy_mmodule_Moa_view_type;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___copy_mmodule_Moa_view_type
__mmodule_MOD___copy_mmodule_Moa_view_type:
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
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 48[rbp], rcx
	mov	QWORD PTR 56[rbp], rdx
	mov	rax, QWORD PTR 56[rbp]
	cmp	rax, QWORD PTR 48[rbp]
	sete	al
	movzx	r8d, al
	mov	rax, QWORD PTR 56[rbp]
	mov	rdx, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rbx, QWORD PTR 8[rdx]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR 16[rdx]
	mov	rbx, QWORD PTR 24[rdx]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rcx, QWORD PTR 32[rdx]
	mov	rbx, QWORD PTR 40[rdx]
	mov	QWORD PTR 32[rax], rcx
	mov	QWORD PTR 40[rax], rbx
	mov	rcx, QWORD PTR 48[rdx]
	mov	rbx, QWORD PTR 56[rdx]
	mov	QWORD PTR 48[rax], rcx
	mov	QWORD PTR 56[rax], rbx
	mov	rcx, QWORD PTR 64[rdx]
	mov	rbx, QWORD PTR 72[rdx]
	mov	QWORD PTR 64[rax], rcx
	mov	QWORD PTR 72[rax], rbx
	mov	rcx, QWORD PTR 80[rdx]
	mov	rbx, QWORD PTR 88[rdx]
	mov	QWORD PTR 80[rax], rcx
	mov	QWORD PTR 88[rax], rbx
	mov	rcx, QWORD PTR 96[rdx]
	mov	rbx, QWORD PTR 104[rdx]
	mov	QWORD PTR 96[rax], rcx
	mov	QWORD PTR 104[rax], rbx
	mov	rcx, QWORD PTR 112[rdx]
	mov	rbx, QWORD PTR 120[rdx]
	mov	QWORD PTR 112[rax], rcx
	mov	QWORD PTR 120[rax], rbx
	mov	rdx, QWORD PTR 128[rdx]
	mov	QWORD PTR 128[rax], rdx
	test	r8d, r8d
	jne	.L32
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L25
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 64[rax]
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 56[rax]
	mov	rax, rdx
	sub	rax, rcx
	lea	rbx, 1[rax]
	lea	rax, 0[0+rbx*4]
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	QWORD PTR 8[rax], rdx
	lea	rax, 0[0+rbx*4]
	mov	rcx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	jmp	.L26
.L25:
	mov	rax, QWORD PTR 56[rbp]
	mov	QWORD PTR 8[rax], 0
.L26:
	mov	rax, QWORD PTR 56[rbp]
	mov	rdx, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 72[rdx]
	mov	rbx, QWORD PTR 80[rdx]
	mov	QWORD PTR 72[rax], rcx
	mov	QWORD PTR 80[rax], rbx
	mov	rcx, QWORD PTR 88[rdx]
	mov	rbx, QWORD PTR 96[rdx]
	mov	QWORD PTR 88[rax], rcx
	mov	QWORD PTR 96[rax], rbx
	mov	rcx, QWORD PTR 104[rdx]
	mov	rbx, QWORD PTR 112[rdx]
	mov	QWORD PTR 104[rax], rcx
	mov	QWORD PTR 112[rax], rbx
	mov	rcx, QWORD PTR 120[rdx]
	mov	rbx, QWORD PTR 128[rdx]
	mov	QWORD PTR 120[rax], rcx
	mov	QWORD PTR 128[rax], rbx
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR 72[rax]
	test	rax, rax
	je	.L27
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 128[rax]
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 120[rax]
	mov	rax, rdx
	sub	rax, rcx
	lea	rbx, 1[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	QWORD PTR 72[rax], rdx
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	mov	rcx, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rax, QWORD PTR 72[rax]
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 128[rax]
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 120[rax]
	mov	rax, rdx
	sub	rax, rcx
	add	rax, 1
	lea	rdi, -1[rax]
	mov	ebx, 0
.L31:
	cmp	rbx, rdi
	jg	.L24
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L29
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 64
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 48[rbp]
	mov	rcx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rcx
	add	rax, 56
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	lea	rsi, 1[rax]
	lea	rax, 0[0+rsi*4]
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rcx
	add	rax, 8
	mov	QWORD PTR [rax], rdx
	lea	rax, 0[0+rsi*4]
	mov	r8, rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 8
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 56[rbp]
	mov	rcx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rcx
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rcx, r8
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	jmp	.L30
.L29:
	mov	rax, QWORD PTR 56[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, rbx
	sal	rax, 4
	add	rax, rbx
	sal	rax, 3
	add	rax, rdx
	add	rax, 8
	mov	QWORD PTR [rax], 0
.L30:
	add	rbx, 1
	jmp	.L31
.L27:
	mov	rax, QWORD PTR 56[rbp]
	mov	QWORD PTR 72[rax], 0
	jmp	.L32
.L24:
.L32:
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	__mmodule_MOD___final_mmodule_Moa_basic_view
	.def	__mmodule_MOD___final_mmodule_Moa_basic_view;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___final_mmodule_Moa_basic_view
__mmodule_MOD___final_mmodule_Moa_basic_view:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 152
	.seh_stackalloc	152
	lea	rbp, 144[rsp]
	.seh_setframe	rbp, 144
	.seh_endprologue
	mov	QWORD PTR 48[rbp], rcx
	mov	QWORD PTR 56[rbp], rdx
	mov	BYTE PTR 64[rbp], r8b
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rax, al
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 1
	mov	edx, 0
	test	rax, rax
	cmovs	rax, rdx
	mov	rdx, rax
	mov	r10, rdx
	mov	r11d, 0
	sal	rax, 3
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rax, al
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	edx, 0
	test	rax, rax
	cmovs	rax, rdx
	mov	rdx, rax
	mov	rsi, rdx
	mov	edi, 0
	sal	rax, 3
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -88[rbp], 0
	mov	DWORD PTR -60[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], 1
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rdx, al
	mov	QWORD PTR -8[rbp], 1
.L36:
	cmp	QWORD PTR -8[rbp], rdx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L45
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, -1[rax]
	mov	r9, QWORD PTR 48[rbp]
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 3
	add	rax, r9
	add	rax, 40
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax+r8*8], rcx
	mov	r10, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax+rcx*8]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, -1[rax]
	mov	rax, r8
	add	rax, rax
	add	rax, r8
	sal	rax, 3
	add	rax, r10
	add	rax, 56
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	r9, -1[rax]
	mov	rax, r9
	add	rax, rax
	add	rax, r9
	sal	rax, 3
	add	rax, r10
	add	rax, 48
	mov	r9, QWORD PTR [rax]
	mov	rax, r8
	sub	rax, r9
	add	rax, 1
	mov	r8d, 0
	test	rax, rax
	cmovs	rax, r8
	imul	rcx, rax
	mov	r8, rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax+rcx*8], r8
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rax+rcx*8]
	mov	rax, QWORD PTR -8[rbp]
	lea	r8, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax+r8*8]
	cmp	rcx, rax
	je	.L35
	mov	DWORD PTR -60[rbp], 0
.L35:
	add	QWORD PTR -8[rbp], 1
	jmp	.L36
.L45:
	nop
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rdx, al
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax+rdx*8]
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	mov	rbx, QWORD PTR -72[rbp]
	mov	QWORD PTR -8[rbp], 0
.L43:
	cmp	QWORD PTR -8[rbp], rbx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L46
	mov	QWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR 48[rbp]
	movzx	eax, BYTE PTR 28[rax]
	movsx	rcx, al
	mov	QWORD PTR -16[rbp], 1
.L39:
	cmp	QWORD PTR -16[rbp], rcx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L47
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	r8, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -8[rbp]
	cqo
	idiv	r8
	mov	r8, rdx
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, QWORD PTR [rax+rdx*8]
	mov	rax, r8
	cqo
	idiv	rdi
	mov	r8, rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax+rdx*8]
	imul	rax, r8
	add	QWORD PTR -24[rbp], rax
	add	QWORD PTR -16[rbp], 1
	jmp	.L39
.L47:
	nop
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, QWORD PTR 56[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -96[rbp], rax
	mov	eax, 8
	mov	edx, 8
	cmp	rdx, rax
	cmovle	rax, rdx
	mov	edx, 0
	test	rax, rax
	cmovs	rax, rdx
	mov	r8, rax
	lea	rdx, -104[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rdx
	mov	rdx, r8
	mov	r8, rdx
	mov	rdx, rax
	call	memcpy
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	QWORD PTR -80[rbp], rax
	cmp	QWORD PTR -80[rbp], 0
	je	.L40
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L41
	mov	DWORD PTR -108[rbp], 1
	jmp	.L42
.L41:
	mov	rax, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	DWORD PTR -108[rbp], 0
.L42:
	mov	eax, DWORD PTR -108[rbp]
	mov	DWORD PTR -84[rbp], eax
.L40:
	add	QWORD PTR -8[rbp], 1
	jmp	.L43
.L46:
	nop
	mov	ebx, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rax
	call	free
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rax
	call	free
	mov	eax, ebx
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	__mmodule_MOD___copy_mmodule_Moa_basic_view
	.def	__mmodule_MOD___copy_mmodule_Moa_basic_view;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD___copy_mmodule_Moa_basic_view
__mmodule_MOD___copy_mmodule_Moa_basic_view:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	rax, QWORD PTR 40[rbp]
	cmp	rax, QWORD PTR 32[rbp]
	sete	al
	movzx	r8d, al
	mov	rax, QWORD PTR 40[rbp]
	mov	rdx, QWORD PTR 32[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rbx, QWORD PTR 8[rdx]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR 16[rdx]
	mov	rbx, QWORD PTR 24[rdx]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rcx, QWORD PTR 32[rdx]
	mov	rbx, QWORD PTR 40[rdx]
	mov	QWORD PTR 32[rax], rcx
	mov	QWORD PTR 40[rax], rbx
	mov	rcx, QWORD PTR 48[rdx]
	mov	rbx, QWORD PTR 56[rdx]
	mov	QWORD PTR 48[rax], rcx
	mov	QWORD PTR 56[rax], rbx
	mov	rcx, QWORD PTR 64[rdx]
	mov	rbx, QWORD PTR 72[rdx]
	mov	QWORD PTR 64[rax], rcx
	mov	QWORD PTR 72[rax], rbx
	mov	rcx, QWORD PTR 80[rdx]
	mov	rbx, QWORD PTR 88[rdx]
	mov	QWORD PTR 80[rax], rcx
	mov	QWORD PTR 88[rax], rbx
	mov	rcx, QWORD PTR 96[rdx]
	mov	rbx, QWORD PTR 104[rdx]
	mov	QWORD PTR 96[rax], rcx
	mov	QWORD PTR 104[rax], rbx
	mov	rcx, QWORD PTR 112[rdx]
	mov	rbx, QWORD PTR 120[rdx]
	mov	QWORD PTR 112[rax], rcx
	mov	QWORD PTR 120[rax], rbx
	mov	rdx, QWORD PTR 128[rdx]
	mov	QWORD PTR 128[rax], rdx
	test	r8d, r8d
	jne	.L51
	mov	rax, QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L50
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 64[rax]
	mov	rax, QWORD PTR 32[rbp]
	mov	rcx, QWORD PTR 56[rax]
	mov	rax, rdx
	sub	rax, rcx
	lea	rbx, 1[rax]
	lea	rax, 0[0+rbx*4]
	mov	edx, 1
	test	rax, rax
	cmove	rax, rdx
	mov	rcx, rax
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR 8[rax], rdx
	lea	rax, 0[0+rbx*4]
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	jmp	.L51
.L50:
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR 8[rax], 0
.L51:
	nop
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__mmodule_MOD_get_pointer
	.def	__mmodule_MOD_get_pointer;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_get_pointer
__mmodule_MOD_get_pointer:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rax, QWORD PTR 40[rbp]
	mov	DWORD PTR [rax], 1
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, dummy.1[rip]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	.seh_endproc
	.globl	__mmodule_MOD_get_pointer_dummy
	.def	__mmodule_MOD_get_pointer_dummy;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_get_pointer_dummy
__mmodule_MOD_get_pointer_dummy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 32[rbp]
	mov	DWORD PTR [rax], 1
	mov	rax, QWORD PTR 24[rbp]
	lea	rdx, dummy.0[rip]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
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
	.globl	__mmodule_MOD_stop_timer
	.def	__mmodule_MOD_stop_timer;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_stop_timer
__mmodule_MOD_stop_timer:
	push	rbp
	.seh_pushreg	rbp
	sub	rsp, 576
	.seh_stackalloc	576
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	lea	rax, 444[rbp]
	mov	r8d, 0
	mov	edx, 0
	mov	rcx, rax
	call	_gfortran_system_clock_4
	mov	eax, DWORD PTR 444[rbp]
	mov	DWORD PTR __mmodule_MOD_time_last[rip], eax
	lea	rax, __mmodule_MOD_cpu_last[rip]
	mov	rcx, rax
	call	_gfortran_cpu_time_4
	lea	rax, .LC0[rip]
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -80[rbp], 47
	lea	rax, .LC1[rip]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], 9
	mov	DWORD PTR -96[rbp], 4096
	mov	eax, DWORD PTR __mmodule_MOD_lurep[rip]
	mov	DWORD PTR -92[rbp], eax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write
	lea	rax, -96[rbp]
	mov	r8d, 16
	lea	rdx, .LC2[rip]
	mov	rcx, rax
	call	_gfortran_transfer_character_write
	mov	eax, DWORD PTR __mmodule_MOD_time_last[rip]
	mov	edx, DWORD PTR __mmodule_MOD_time_first[rip]
	sub	eax, edx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	mov	eax, DWORD PTR __mmodule_MOD_time_rate[rip]
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, eax
	divss	xmm0, xmm1
	movss	DWORD PTR 440[rbp], xmm0
	lea	rdx, 440[rbp]
	lea	rax, -96[rbp]
	mov	r8d, 4
	mov	rcx, rax
	call	_gfortran_transfer_real_write
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write_done
	lea	rax, .LC0[rip]
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -80[rbp], 48
	lea	rax, .LC1[rip]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], 9
	mov	DWORD PTR -96[rbp], 4096
	mov	eax, DWORD PTR __mmodule_MOD_lurep[rip]
	mov	DWORD PTR -92[rbp], eax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write
	lea	rax, -96[rbp]
	mov	r8d, 16
	lea	rdx, .LC3[rip]
	mov	rcx, rax
	call	_gfortran_transfer_character_write
	movss	xmm0, DWORD PTR __mmodule_MOD_cpu_last[rip]
	movss	xmm1, DWORD PTR __mmodule_MOD_cpu_first[rip]
	subss	xmm0, xmm1
	movss	DWORD PTR 436[rbp], xmm0
	lea	rdx, 436[rbp]
	lea	rax, -96[rbp]
	mov	r8d, 4
	mov	rcx, rax
	call	_gfortran_transfer_real_write
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write_done
	nop
	add	rsp, 576
	pop	rbp
	ret
	.seh_endproc
	.globl	__mmodule_MOD_start_timer
	.def	__mmodule_MOD_start_timer;	.scl	2;	.type	32;	.endef
	.seh_proc	__mmodule_MOD_start_timer
__mmodule_MOD_start_timer:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	r8d, 0
	mov	rcx, rax
	call	_gfortran_system_clock_4
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR __mmodule_MOD_time_first[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR __mmodule_MOD_time_rate[rip], eax
	lea	rax, __mmodule_MOD_cpu_first[rip]
	mov	rcx, rax
	call	_gfortran_cpu_time_4
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
.lcomm dummy.1,4,4
.lcomm dummy.0,4,4
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
