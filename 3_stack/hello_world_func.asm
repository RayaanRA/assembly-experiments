; Print "Hello World" with two functions and stack memory
BITS 64
global _start

section .text
_start:
		call print_hello_world

		mov rax, 60
		mov rdi, 0
		syscall

print_hello_world:
		push rbp
		mov rbp, rsp
		sub rsp, 16

		mov byte [rsp + 0], 'H'
		mov byte [rsp + 1], 'e'
		mov byte [rsp + 2], 'l'
		mov byte [rsp + 3], 'l'
		mov byte [rsp + 4], 'o'

		mov rax, 1
		mov rdi, 1
		lea rsi, [rsp]
		mov rdx, 5
		syscall
		call print_world
		add rsp, 16
		pop rbp
		ret


print_world:
		push rbp
		mov rbp, rsp
		sub rsp, 16

		mov byte [rsp + 0], ' '
		mov byte [rsp + 1], 'W'
		mov byte [rsp + 2], 'o'
		mov byte [rsp + 3], 'r'
		mov byte [rsp + 4], 'l'
		mov byte [rsp + 5], 'd'
		mov byte [rsp + 6], 0xA

		mov rax, 1
		mov rdi, 1
		lea rsi, [rsp]
		mov rdx, 7
		syscall
		add rsp, 16
		pop rbp
		ret