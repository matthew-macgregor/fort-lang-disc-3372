# Fortran Lang Discourse Thread #3372

- [License CC0](https://creativecommons.org/share-your-work/public-domain/)

Minimum reproducible example for Fortran discourse thread https://fortran-lang.discourse.group/t/struggling-with-a-strange-performance-issue/3372.

My hypothesis was that the difference in performance (or part of it) was due to variances in the assembly code that gfortran/gcc generates for these cases. I was unable to reproduce anything like the massive difference as noted in the thread, but I did uncover some interesting results between optimized and unoptimized versions of the code.

## Prerequisites

- [fpm 0.5.0 alpha](https://github.com/fortran-lang/fpm)

## Build Instructions

```
# Unoptimized
fpm build

# Optimized
fmp build --flag -O3
```

## Output Assembly

Note: best to clean the build directory and build a fresh version with consistent optimization levels. You may have a different path to `build\gfortran_*`.

```
# Unoptimized
gfortran -masm=intel -S src\module.f90 -o asm\main.s
gfortran -masm=intel -S app\main.f90 -o asm\main.s -J build\gfortran_2A42023B310FA28D

# Optimized
gfortran -masm=intel -O3 -S src\module.f90 -o asm\module_o3.s
gfortran -masm=intel -O3 -S app\main.f90 -o asm\main_o3.s -J build\gfortran_2A42023B310FA28D
```

### Results

- Windows 10 Pro
- GFortran 11.2.0

The unoptimized `gfortran` build was substantially faster for the "dummy" version, where the optimized version was identical between the two variants. Looking at the generated assembly, the two functions vary by 13.7% lines of code:

```
---------- UNOPTIMIZED_GET_POINTER.S: 51
---------- UNOPTIMIZED_GET_POINTER_DUMMY.S: 44
```

And the performance results that I got show a similar difference: the "dummy" was 11.9% faster than the non-"dummy", even though they are both doing a similar amount of *nothing*.

```
# Unoptimized
 :: testing get_pointer
Wall clock (s): 0.656000
CPU time (s):   0.656250
 :: testing get_pointer_dummy
Wall clock (s): 0.578000
CPU time (s):   0.578125
```

```
# Optimized
 :: testing get_pointer
Wall clock (s): 0.281000
CPU time (s):   0.281250
 :: testing get_pointer_dummy
Wall clock (s): 0.281000
CPU time (s):   0.281250
```

### Generated Assembly (Optimized)

In the `-O3` build, the generated assembly for the two functions are identical, since they are both doing nothing. The loop itself has two additional instructions to set up the params for get_pointer, which is expected. The results are identical.

These are the additional instructions for loading arguments into the registers prior to `call`:

```asm
	mov	r9, rbp
	...
	movaps	XMMWORD PTR 48[rsp], xmm8
```

And the additional context:

```asm
; main.s
; ================================================================ ;
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

; Get Pointer Loop
; ================================================================ ;
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

; Get Pointer Dummy Loop
; ================================================================ ;
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
```

### Generated Assembly (Unoptimized)

In the unoptimized version, the "dummy" function has two fewer instructions, unlike the optimized version which was identical.

Meanwhile the loop itself has six fewer instructions to set up the call to the "dummy" function, and we clearly see this in the results!

```asm
; module.s
; ================================================================ ;

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

; Get Pointer Loop
; ================================================================ ;
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

; Get Pointer Dummy Loop
; ================================================================ ;
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
```
