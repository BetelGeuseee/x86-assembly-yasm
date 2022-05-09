; this is a program that adds the number inside of a list
; Written by = Shirshak Khatiwada
; Date = 2022/5/9

;data declaration
section .data
listOfNumbers db 10,20,30,40,50,60
counter db 6
sum db 0
average db 0

section .text
global _start
_start:
  mov ebx,listOfNumbers
  mov cl,byte[counter]

iteration:
  mov al,[ebx]
  add byte[sum],al
  add ebx,1
  dec cl
  cmp cl,0 
  jne iteration

last:
  mov rax,60
  mov rdi,0
  syscall
