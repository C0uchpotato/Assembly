section .text
	global main
main:
	mov edx,9
	mov ecx,stars
	mov ebx,1
	mov eax,4
	int 0x80

	mov eax,1
	int 0x80

section .data
stars times 9 db '*'
