; Goal: Print an integer by converting ASCII values
global _start

section .text
_start:
		mov rax, 1
		mov rdi, 1
		mov byte [num], 5
		add byte [num], '0'
		mov rsi, num
		mov rdx, len
		syscall
		jmp exit

exit:
	mov rax, 60
	mov rdi, 0
	syscall


section .data

num db 0, 0xA, 0
len equ $ - num
