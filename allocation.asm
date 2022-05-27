section .text
	global main
main:
	mov edx,1
	mov ecx,choice
	mov ebx,1
	mov eax,4
	int 0x80
	
	mov eax,1
	int 0x80

section .data
choice DB 'y'
