section .text
        global main
main:
        mov ax, '8'
        sub ax, '0'
        mov bl, '2'
        sub bl, '0'
        div bl
        add ax, '0'
        mov [res], ax
        mov ecx, msg
        mov edx, len
        mov ebx, 1      ;stdout
        mov eax, 4      ;sys_write
        int 0x80
        
        mov ecx, res
        mov ebx, 1      ;stdout
        mov eax, 4      ;sys_write
        int 0x80
        mov eax, 1
        int 0x80

section .data
        msg db "The result is: "
        len equ $- msg

segment .bss
        res resb 1