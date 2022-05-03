; program to calculate the sum of first 10 natural number using "loop" instruction 

section .data
sum dw 0 


section .text
global _start
_start:
  mov rcx,30   ; "loop" instruction requires rcx register to be the counter
  mov ax,1
  jmp iteration  

iteration:
  add word[sum],ax
  inc ax
  loop iteration
  mov bx,word[sum]

last:
  mov rax,60
  mov rdi,0
  syscall

    