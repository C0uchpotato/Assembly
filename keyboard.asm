section .data ;data segment
	userMsg db 'Please enter a number' ;Ask for a number
	lenUserMsg equ $-userMsg 	;len of the user number
	dispMsg db 'You have entered: '
	lenDispMsg equ $-dispMsg

section .bss
	num resb 5
section .text
	global main
	main:
	;user prompt
	mov eax, 4
	mov ebx,1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h

	;Read and store user input
	mov eax,3
	mov ebx,2
	mov ecx,num
	mov edx,5	;5 bytes
	int 80h
	mov eax,4
	mov ebx,1
	mov ecx, dispMsg
	mov edx, lenDispMsg
	int 80h
	
	;Output the number entered
	mov eax,4
	mov ebx,1
	mov ecx,num
	mov edx,5
	int 80h
; exit code
	mov eax,1
	mov ebx,0 
	int 80h

