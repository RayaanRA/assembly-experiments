; Print "hello" by using the stack
global _start

section .text
_start:
		sub rsp, 6 ; Allocate five bytes of stack space
		mov byte [rsp + 5], 0xA
		mov byte [rsp + 4], 'o'
		mov byte [rsp + 3], 'l'
		mov byte [rsp + 2], 'l'
		mov byte [rsp + 1], 'e'
		mov byte [rsp], 'H' ; rsp stores "full stack"
		mov rax, 1
		mov rdi, 1
		lea rsi, [rsp] ; (l)oad (e)ffective (a)ddress, move adress of rsp to rsi
		mov rdx, 6
		syscall

		mov rax, 60
		mov rdi, 0
		syscall
