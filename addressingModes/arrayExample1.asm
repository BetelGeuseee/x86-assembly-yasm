;simple array example

section .data
lst dd 501,103,105,107

section .text
global _start
; _start:
;    mov ecx,dword[lst]
;    mov ebx,dword[lst+4]
;    mov edx,dword[lst+8]

_start:
   mov rbx,lst
   mov ecx,dword[rbx]
   mov edx,dword[rbx+4]
last:
mov rax,60
mov rdi,0
syscall   
