; Print "hello" by using the stack, in a separate function
BITS 64 ; Specify 64 bit mode
global _start

section .text
_start:
		call print_hello

		mov rax, 60
		mov rdi, 0
		syscall


print_hello:
		push rbp ; Save the caller's base pointer
		mov rbp, rsp ; Then set this function's base as the current top
		sub rsp, 16 ; Allocate sixteen bytes of stack space

		mov byte [rsp + 0], 'H'
		mov byte [rsp + 1], 'e'
		mov byte [rsp + 2], 'l'
		mov byte [rsp + 3], 'l'
		mov byte [rsp + 4], 'o'
		mov byte [rsp + 5], 0xA

		mov rax, 1
		mov rdi, 1
		lea rsi, [rsp]
		mov rdx, 6
		syscall

		add rsp, 16 ; Return the stack pointer's original value
		pop rbp ; Return the caller's base pointer value to rbp
		ret