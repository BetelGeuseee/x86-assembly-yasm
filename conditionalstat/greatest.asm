;program to find the greatest number among two numbers

;shirshak khatiwada : 5/1/2022 = May 1
;here the greatest number will be at rcx register
section .data

firstNumber dw 60
secondNumber dw 90

section .text
global _start
_start:
   mov bx,word[firstNumber]
   mov dx,word[secondNumber]
   cmp dx,bx
   jg checkpoint ;jump to checkpoint label if value of ax > than bx
   mov cx,bx  
   jmp last

checkpoint:
   mov cx,dx  ;greater number will be at cx register 

last:
mov rax,60
mov rdi,0
syscall
      
