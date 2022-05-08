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