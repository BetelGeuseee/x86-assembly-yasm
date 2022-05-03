

;Program to sum the first 30 natural numbers
;Shirshak Khatiwada - 5/3/2022

section .data
counter dw 10
sum dw 0

section .text
global _start
_start:
mov ax,1
jmp iteration

iteration:
add word[sum],ax
inc ax
dec word[counter]
cmp word[counter],0
jne iteration
mov bx,word[sum]

last:
mov rax,60
mov rdi,1
syscall

