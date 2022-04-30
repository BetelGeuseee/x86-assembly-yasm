


;program to write area of rectangle

section .data

leng dd 898989999 ;length of the rectangle
bred dd 898989999   ;breadth of the rectangle
answer dd 0

section .text
global _start

_start:

mov eax,dword[leng]
mov ebx,dword[bred]
add eax,ebx
mov dword[answer],eax

;mov al,byte[leng]
;mov bl,byte[bred]
;mul bl
;mov byte[answer],al

last:
mov rax, 60 ; Call code for exit
mov rdi, 0 ; Exit program with success
syscall


