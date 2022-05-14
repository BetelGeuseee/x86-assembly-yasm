
;Written by = Shirshak Khatiwada
;Date = 5/14/2022


;defining macro

%macro aver 3
    lea rbx,[%1]    ; %1 (first argument = list1) loading the address of operand into register
    mov r12,0
    mov eax,0
    mov ecx,dword[%2]  ;mov second argument (len value in ecx register)
  %%sumLoop:
    add eax,dword[rbx+r12*4]
    inc r12
  loop %%sumLoop
    
    cdq 
    idiv dword[%2]
    mov dword[%3],eax
%endmacro

;define data
section .data
list1 dd 4,5,2,-3,1
len1 dd 5
ave1 dd 0

list2 dd 2,6,3,-2,1,8,19
len2 dd 7
ave2 dd 0 

section .text
global _start
_start:
aver list1,len1,ave1
aver list2,len2,ave2

last:
mov rax,60
mov rdi,0
syscall