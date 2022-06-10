section .text
        global main
main:
        mov eax, '5'
        sub eax, '0'
        mov ebx, '4'
        sub ebx, '0'
        add eax, ebx
        mov [sum], eax
        mov ecx, msg
        mov edx, len
        mov ebx, 1      ;stdout
        mov eax, 4      ;sys_write
        int 0x80

        mov ecx, sum
        mov ebx, 1      ;stdout
        mov eax, 4      ;sys_write
        int 0x80
        mov eax, 1      ;sys_exit

section .data   
        msg db "The sum is: "
        len equ $ - msg

segment .bss
        sum resb 1
