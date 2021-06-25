; to create the object file:
; nasm -f elf64 -g gdb_example.asm -o gdb_example.o
; to create the executable:
; ld gdb_example.o -o gdb_example
        segment .data
a       dd      4   
b       dd      4.4 
c       dw      1,2 
e       db      "hello world",10,0
f       equ     $-e 

        segment .bss
g       resb    1   
h       resw    10  
i       resq    100 

        segment .text
        global _start

_start:
    
        mov     rax, 1
        mov     rdi, 1
        mov     rsi, e
        mov     rdx, f
        syscall
    
        mov     rax, 60
        mov     rdi, 0
        syscall
