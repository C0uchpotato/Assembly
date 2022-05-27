section .text
	global main
main:

;writing the first name
	mov edx,9 ;msg len
	mov ecx,name 	;msg to write
	mov ebx,1 	;file descriptor
	mov eax,4 	;sys call number (sys_write(
	int 0x80
	
	mov [name], dword 'Jack'
	
;writing the name Nuha Ali

	mov edx,8
	mov ecx,name
	mov ebx,1
	mov eax,4
	int 0x80
	mov eax,1
	int 0x80

section .data
name db 'Zara Ali'
