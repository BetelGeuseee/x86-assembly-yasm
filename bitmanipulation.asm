section .data

number dw 9999
answer dw 0
SYS_exit equ 60
EXIT_SUCCESS equ 0

section .text
global _start
_start:

mov al,byte[number]
mov bl,byte[number+1]
add al,bl
mov byte[answer],al


last:
mov rax, SYS_exit ; Call code for exit
mov rdi, EXIT_SUCCESS ; Exit program with success
syscall
