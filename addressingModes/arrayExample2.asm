;program to calculate the sum and average of the list of numbers
; Program written by  - Shirshak Khatiwada
; date = 2022/05/09

;data declaration
section .data
listOfNumbers dd 20,505,707,30,80,56
lengthofarray dd 6
sum dd 0
average dd 0 

section .text
global _start
_start:
  mov ecx,dword[lengthofarray]
  mov rsi,0
iteration:
  mov eax,dword[listOfNumbers+4*rsi]
  add dword[sum],eax
  inc rsi
  loop iteration
  mov ebx,dword[sum]
;   div bx,word[lengthofarray]
;   mov word[average],

last:
  mov rax,60
  mov rdi,0
  syscall
       