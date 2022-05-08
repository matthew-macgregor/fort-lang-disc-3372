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