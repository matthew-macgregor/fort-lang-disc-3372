	.file	"main.f90"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "app\\main.f90\0"
.LC2:
	.ascii ":: testing get_pointer"
.LC5:
	.ascii ":: testing get_pointer_dummy"
	.text
	.p2align 4
	.def	MAIN__;	.scl	3;	.type	32;	.endef
	.seh_proc	MAIN__
MAIN__:
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
	sub	rsp, 664
	.seh_stackalloc	664
	movaps	XMMWORD PTR 592[rsp], xmm6
	.seh_savexmm	xmm6, 592
	movaps	XMMWORD PTR 608[rsp], xmm7
	.seh_savexmm	xmm7, 608
	movaps	XMMWORD PTR 624[rsp], xmm8
	.seh_savexmm	xmm8, 624
	movaps	XMMWORD PTR 640[rsp], xmm9
	.seh_savexmm	xmm9, 640
	.seh_endprologue
	lea	rax, view.0[rip]
	xor	ecx, ecx
	pxor	xmm0, xmm0
	xor	edx, edx
	xor	r8d, r8d
	movq	xmm8, rax
	xor	eax, eax
	movq	xmm9, QWORD PTR .LC1[rip]
	mov	WORD PTR view.0[rip+100], cx
	lea	r15, .LC0[rip]
	movhps	xmm8, QWORD PTR .refptr.__mmodule_MOD___vtab_mmodule_Moa_view_type[rip]
	mov	WORD PTR view.0[rip+36], ax
	mov	ebx, 100000000
	movabs	r13, 1103806595072
	movups	XMMWORD PTR view.0[rip+40], xmm0
	movups	XMMWORD PTR view.0[rip+56], xmm0
	lea	rsi, 64[rsp]
	movups	XMMWORD PTR view.0[rip+104], xmm0
	lea	r12, 36[rsp]
	mov	rcx, rsi
	movups	XMMWORD PTR view.0[rip+120], xmm0
	lea	rbp, 32[rsp]
	lea	rdi, 40[rsp]
	mov	WORD PTR view.0[rip+38], dx
	lea	r14, 48[rsp]
	mov	WORD PTR view.0[rip+102], r8w
	mov	DWORD PTR view.0[rip], 1
	mov	QWORD PTR view.0[rip+8], 0
	mov	QWORD PTR view.0[rip+16], 0
	mov	QWORD PTR view.0[rip+24], 0
	mov	DWORD PTR view.0[rip+32], 0
	mov	QWORD PTR view.0[rip+72], 0
	mov	QWORD PTR view.0[rip+80], 0
	mov	QWORD PTR view.0[rip+88], 0
	mov	DWORD PTR view.0[rip+96], 0
	mov	QWORD PTR 72[rsp], r15
	mov	DWORD PTR 80[rsp], 15
	movq	QWORD PTR 64[rsp], xmm9
	call	_gfortran_st_write
	mov	r8d, 22
	lea	rdx, .LC2[rip]
	mov	rcx, rsi
	call	_gfortran_transfer_character_write
	mov	rcx, rsi
	call	_gfortran_st_write_done
	call	__mmodule_MOD_start_timer
	movdqa	xmm6, XMMWORD PTR .LC3[rip]
	movdqa	xmm7, XMMWORD PTR .LC4[rip]
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r9, rbp
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, r14
	mov	QWORD PTR 64[rsp], r12
	mov	QWORD PTR 72[rsp], -1
	mov	QWORD PTR 80[rsp], 4
	mov	QWORD PTR 88[rsp], r13
	movaps	XMMWORD PTR 48[rsp], xmm8
	movaps	XMMWORD PTR 96[rsp], xmm6
	movaps	XMMWORD PTR 112[rsp], xmm7
	call	__mmodule_MOD_get_pointer
	sub	rbx, 1
	jne	.L2
	call	__mmodule_MOD_stop_timer
	mov	rcx, rsi
	mov	QWORD PTR 72[rsp], r15
	mov	ebx, 100000000
	mov	DWORD PTR 80[rsp], 22
	movabs	r13, 1103806595072
	movq	QWORD PTR 64[rsp], xmm9
	call	_gfortran_st_write
	mov	r8d, 28
	lea	rdx, .LC5[rip]
	mov	rcx, rsi
	call	_gfortran_transfer_character_write
	mov	rcx, rsi
	call	_gfortran_st_write_done
	call	__mmodule_MOD_start_timer
	.p2align 4,,10
	.p2align 3
.L3:
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rsi
	mov	QWORD PTR 64[rsp], r12
	mov	QWORD PTR 72[rsp], -1
	mov	QWORD PTR 80[rsp], 4
	mov	QWORD PTR 88[rsp], r13
	movaps	XMMWORD PTR 96[rsp], xmm6
	movaps	XMMWORD PTR 112[rsp], xmm7
	call	__mmodule_MOD_get_pointer_dummy
	sub	rbx, 1
	jne	.L3
	call	__mmodule_MOD_stop_timer
	nop
	movaps	xmm6, XMMWORD PTR 592[rsp]
	movaps	xmm7, XMMWORD PTR 608[rsp]
	movaps	xmm8, XMMWORD PTR 624[rsp]
	movaps	xmm9, XMMWORD PTR 640[rsp]
	add	rsp, 664
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r12d, ecx
	mov	r13, rdx
	call	__main
	mov	rdx, r13
	mov	ecx, r12d
	call	_gfortran_set_args
	lea	rdx, options.6.1[rip]
	mov	ecx, 7
	call	_gfortran_set_options
	call	MAIN__
	xor	eax, eax
	add	rsp, 40
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.data
	.align 32
view.0:
	.long	1
	.space 132
	.section .rdata,"dr"
	.align 16
options.6.1:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC1:
	.long	128
	.long	6
	.align 16
.LC3:
	.quad	4
	.quad	1
	.align 16
.LC4:
	.quad	1
	.quad	1
	.ident	"GCC: (GNU) 11.2.0"
	.def	_gfortran_st_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_transfer_character_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_st_write_done;	.scl	2;	.type	32;	.endef
	.def	__mmodule_MOD_start_timer;	.scl	2;	.type	32;	.endef
	.def	__mmodule_MOD_get_pointer;	.scl	2;	.type	32;	.endef
	.def	__mmodule_MOD_stop_timer;	.scl	2;	.type	32;	.endef
	.def	__mmodule_MOD_get_pointer_dummy;	.scl	2;	.type	32;	.endef
	.def	_gfortran_set_args;	.scl	2;	.type	32;	.endef
	.def	_gfortran_set_options;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__mmodule_MOD___vtab_mmodule_Moa_view_type, "dr"
	.globl	.refptr.__mmodule_MOD___vtab_mmodule_Moa_view_type
	.linkonce	discard
.refptr.__mmodule_MOD___vtab_mmodule_Moa_view_type:
	.quad	__mmodule_MOD___vtab_mmodule_Moa_view_type
