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
choice DB 'Y'
number1 DW 12345
number2 DD 12345679
marks TIMES 9 DW 0

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
