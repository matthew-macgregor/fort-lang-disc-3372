	.file	"main.f90"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "app\\main.f90\0"
.LC1:
	.ascii ":: testing get_pointer"
.LC2:
	.ascii ":: testing get_pointer_dummy"
	.text
	.def	MAIN__;	.scl	3;	.type	32;	.endef
	.seh_proc	MAIN__
MAIN__:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 616
	.seh_stackalloc	616
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	DWORD PTR -96[rbp], 1
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	QWORD PTR view.1[rip], rax
	mov	QWORD PTR view.1[rip+8], rdx
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR view.1[rip+16], rax
	mov	QWORD PTR view.1[rip+24], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR view.1[rip+32], rax
	mov	QWORD PTR view.1[rip+40], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR view.1[rip+48], rax
	mov	QWORD PTR view.1[rip+56], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR view.1[rip+64], rax
	mov	QWORD PTR view.1[rip+72], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR view.1[rip+80], rax
	mov	QWORD PTR view.1[rip+88], rdx
	mov	rax, QWORD PTR 0[rbp]
	mov	rdx, QWORD PTR 8[rbp]
	mov	QWORD PTR view.1[rip+96], rax
	mov	QWORD PTR view.1[rip+104], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	QWORD PTR view.1[rip+112], rax
	mov	QWORD PTR view.1[rip+120], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	QWORD PTR view.1[rip+128], rax
	mov	QWORD PTR 464[rbp], 100000000
	lea	rax, .LC0[rip]
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -80[rbp], 15
	mov	DWORD PTR -96[rbp], 128
	mov	DWORD PTR -92[rbp], 6
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write
	lea	rax, -96[rbp]
	mov	r8d, 22
	lea	rdx, .LC1[rip]
	mov	rcx, rax
	call	_gfortran_transfer_character_write
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write_done
	call	__mmodule_MOD_start_timer
	mov	rbx, QWORD PTR 464[rbp]
	mov	QWORD PTR 472[rbp], 1
.L3:
	cmp	QWORD PTR 472[rbp], rbx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L6
	mov	rax, QWORD PTR .refptr.__mmodule_MOD___vtab_mmodule_Moa_view_type[rip]
	mov	QWORD PTR 440[rbp], rax
	lea	rax, view.1[rip]
	mov	QWORD PTR 432[rbp], rax
	mov	QWORD PTR -64[rbp], 4
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -80[rbp], 4
	mov	BYTE PTR -68[rbp], 1
	mov	BYTE PTR -67[rbp], 1
	mov	QWORD PTR -48[rbp], 1
	mov	QWORD PTR -40[rbp], 1
	mov	QWORD PTR -56[rbp], 1
	lea	rax, 448[rbp]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], -1
	lea	r8, 452[rbp]
	lea	rcx, 456[rbp]
	lea	rdx, -96[rbp]
	lea	rax, 432[rbp]
	mov	r9, r8
	mov	r8, rcx
	mov	rcx, rax
	call	__mmodule_MOD_get_pointer
	add	QWORD PTR 472[rbp], 1
	jmp	.L3
.L6:
	nop
	call	__mmodule_MOD_stop_timer
	lea	rax, .LC0[rip]
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -80[rbp], 22
	mov	DWORD PTR -96[rbp], 128
	mov	DWORD PTR -92[rbp], 6
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write
	lea	rax, -96[rbp]
	mov	r8d, 28
	lea	rdx, .LC2[rip]
	mov	rcx, rax
	call	_gfortran_transfer_character_write
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_gfortran_st_write_done
	call	__mmodule_MOD_start_timer
	mov	rbx, QWORD PTR 464[rbp]
	mov	QWORD PTR 472[rbp], 1
.L5:
	cmp	QWORD PTR 472[rbp], rbx
	setg	al
	movzx	eax, al
	test	eax, eax
	jne	.L7
	mov	QWORD PTR -64[rbp], 4
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -80[rbp], 4
	mov	BYTE PTR -68[rbp], 1
	mov	BYTE PTR -67[rbp], 1
	mov	QWORD PTR -48[rbp], 1
	mov	QWORD PTR -40[rbp], 1
	mov	QWORD PTR -56[rbp], 1
	lea	rax, 448[rbp]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], -1
	lea	rcx, 452[rbp]
	lea	rdx, 456[rbp]
	lea	rax, -96[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	__mmodule_MOD_get_pointer_dummy
	add	QWORD PTR 472[rbp], 1
	jmp	.L5
.L7:
	nop
	call	__mmodule_MOD_stop_timer
	nop
	add	rsp, 616
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	QWORD PTR 24[rbp], rdx
	call	__main
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	ecx, DWORD PTR 16[rbp]
	call	_gfortran_set_args
	lea	rax, options.6.0[rip]
	mov	rdx, rax
	mov	ecx, 7
	call	_gfortran_set_options
	call	MAIN__
	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.data
	.align 32
view.1:
	.long	1
	.space 132
	.section .rdata,"dr"
	.align 16
options.6.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
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
