global _start

section .text
_start:
		mov edi, 1
		add edi, 1
		add edi, edi ; 4
		sub edi, 1 ; 3
		imul edi, 2 ; 6
		sal edi, 1 ; 12

		; exit
		mov rax, 60
		syscall