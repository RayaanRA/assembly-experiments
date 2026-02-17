; Create a function that adds two numbers and prints it (single digit output only)
; Function paramter order: rdi, rsi, rdx, rcx, r8, r9
; Return values go in rax
global _start

section .text
_start:
		mov rdi, 5
		mov rsi, 4
		call _add
		call _convert

		mov rax, 1
		mov rdi, 1
		mov rsi, num
		mov rdx, 2
		syscall
		
		mov rax, 60
		mov rdi, 0
		syscall

_add:
	mov byte [num], dil
	add byte [num], sil
	ret

_convert:
		add byte [num], '0'
		mov byte [num+1], 0xA
		ret

section .bss
num resb 4

