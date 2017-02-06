section.text
	global_start
	
_start: 		     ;entry point
	mov edx,len ;message length
	mov ecx,msg ;message to write
	mov ebx,1     ; File descriptor 
	mov eax,4     ;sys call number sys_write
	
	int 0x80        ;call kernel
	
	mov eax,1    ;system call number sys_exit
	int 0x80        ; calling kernel so much it may as well be a booty call
	
section.data
msg db 'Hello world', 0xa
len equ $ - msg   ;length of string
	