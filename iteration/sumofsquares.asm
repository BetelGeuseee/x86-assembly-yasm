;program to find the sum of squares from 1 to n


section .data

counter dw 10
sum dw 0


section .text
global _start
_start:
  mov ax,1
  mov cx,word[counter]
  mov dx,1
  jmp iteration

iteration:
   mov ax,dx
   mul ax 
   add word[sum],ax
   inc dx
   loop iteration
   mov bx,word[sum]

last:
   mov rax,60
   mov rdi,0
   syscall     

