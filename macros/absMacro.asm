;program that demonstrate the example of macro 
;creating macro named abs (absolute value)
;Date = 5/14/2022
;Written by = Shirshak Khatiwada

;defining macro

%macro abs 1  ;macro named abs that takes one argument
     cmp %1,0  ;comparing first argument with 0
     jge %%done
     neg %1  ;multiplying first argument with -1
   %%done:

%endmacro

section .data
val dq -5

section .text
global _start
_start:
 mov rax,-4
 abs rax
 abs qword[val]
 mov rbx,rax
 mov rcx,qword[val]

last:
 mov rax,60
 mov rdi,0
 syscall



