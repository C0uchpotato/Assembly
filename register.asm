section .text
	global main ; must be declared for linker (gcc)
main:		;tells linker where to start
	mov edx,len 	;message len
	mov ecx,msg	;msg to write
	mov ebx,1	;file descriptor
	mov eax,4	;sys call number (sys_write)
	int 0x80 	;call kernal

	mov edx,9	;msg len
	mov ecx,s2	;msg to write
	mov ebx,1	;file descriptor (stdout)
	mov eax,4	;sys write
	int 0x80
	mov eax,1	;sys exit
	int 0x80

section .data
msg db 'displaying 9 stars',0xa ; a message
len equ $ - msg 	;len of msg
s2 times 9 db '*'
