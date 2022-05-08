__mmodule_MOD_get_pointer:
	.seh_endprologue
	lea	rax, dummy.1[rip]
	mov	DWORD PTR [r9], 1
	mov	QWORD PTR [r8], rax
	ret

__mmodule_MOD_get_pointer_dummy:
	.seh_endprologue
	lea	rax, dummy.0[rip]
	mov	DWORD PTR [r8], 1
	mov	QWORD PTR [rdx], rax
	ret

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