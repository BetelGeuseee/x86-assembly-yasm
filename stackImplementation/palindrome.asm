;string palindrome checker in assembly using stack
;written by = shirshak upadhayay
;date = 2022/5/11

;data declaration
section .data
name db "civic"
len db 5

section .bss
anotherName resb 5

section .text
global _start
_start:
mov cl,byte[len]
mov al,0
mov rbx,name
mov rsi,0

pushLoop:
push qword[rbx+rsi]
inc rsi
loop pushLoop


mov rbx,anotherName
mov rsi,0
mov rax,0
mov cl,byte[len]

popLoop:
pop rax
mov rax,qword[rbx+rsi]
inc rsi
loop popLoop

last:
mov rax,60
mov rdi,0
syscall
  