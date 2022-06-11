section .text
        global main
main:
        mov ax, 9h      ;getting 8 into ax
        and ax, 1       ;and 8 with 1
        jz evnn
        mov eax, 4      ;sys_write
        mov ebx, 1      ;stdout
        mov ecx, odd_msg        ;msg to write
        mov edx, len2   ;len of odd_msg
        int 0x80
        jmp outprog     ;jump to outprog
evnn:
        mov ah, 09h
        mov eax, 4      ;sys_write
        mov ebx, 1      ;stdout
        mov ecx, even_msg       ;msg to write
        mov edx, len1  ;len of even_msg
        int 0x80        ;kernel interrupt
outprog:
        mov eax, 1      ;sys_exit
        int 0x80        ;kernel interrupt

section .data
        even_msg db 'Even Number' 
        len1 equ $- even_msg
        odd_msg db 'Odd Number'
        len2 equ $- odd_msg
