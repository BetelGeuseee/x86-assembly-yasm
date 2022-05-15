
section .data
negOne db -13
negTwo db -7

section .text
global _start
_start:
   mov bl,byte[negOne]
   mov cl,byte[negTwo]

last:
  mov rax,60
  mov rdi,0
  syscall
     
