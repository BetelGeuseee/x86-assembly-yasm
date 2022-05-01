
;program that implements basic jump instructions
;conditional jump example

section .data

currNum dq 30
myMax dq 0
SYS_exit equ 60
EXIT_SUCCESS equ 0

section .text
global _start
_start:

mov rax,qword[currNum]
mov rbx,qword[myMax]
cmp rax,rbx
jle tester
mov rax,10

tester:
  mov rax,20

last:
mov rax, SYS_exit ; Call code for exit
mov rdi, EXIT_SUCCESS ; Exit program with success
syscall

