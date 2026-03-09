; Print the digits 1 through 9 using jump commands
global _start

section .text
_start:

	decrement:
		call print_num
		dec qword [num]
		jnz decrement

		mov rax, 60
		mov rdi, 0
		syscall




print_num:	
		add qword [num], '0'
		add qword [num + 1], 0xA
		mov rax, 1
		mov rdi, 1
		mov rsi, num
		mov rdx, 2
		syscall
		sub qword [num + 1], 0xA
		sub qword [num], '0'
		ret



section .data
num dq 9