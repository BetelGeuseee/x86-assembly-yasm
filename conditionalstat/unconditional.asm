

section .data

leng dw 90
bred dw 80

section .text
global _start
_start:
   mov ax,word[leng]
   mov bx,word[bred]
   jmp checkpoint
   mov rax,10

checkpoint:
   mov rax,30


last:
mov rax,60
mov rdi,0
syscall
