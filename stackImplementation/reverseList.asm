;Simple program demonstrating stack operation
; Program to reverse list in numbers 
;Written by = Shirshak Khatiwada
;Date = 5/10/2022

;data declarations
 section .data
   numbers dq 10,30,50,80,70
   len dq 5

section .text
 global _start
  _start:
    mov rbx,numbers
    mov rcx,qword[len]
    mov rsi,0
    mov rax,0

pushLoop:
  push qword[rbx+8*rsi]
  inc rsi
  loop pushLoop
;all the numbers are on the stack 

mov rbx,numbers
mov rcx,qword[len]
mov rsi,0

popLoop:
  pop rax ;this instruction pop the value that rsp is pointing to and stores it in rax
  mov qword[rbx+8*rsi],rax
  inc rsi
  loop popLoop

last:
mov rax,60
mov rdi,0
syscall

 
  