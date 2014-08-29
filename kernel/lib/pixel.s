global set_pixel
global clear_pixel
[section .text]
;======================set_pixel(int x,int y,int color)320*200================
set_pixel:			
	push ebp
	mov ebp,esp
	mov esi,0xA0000
	mov ebx,[esp+8]
	mov ax,[esp+12]		
	mov cx,320
	mul cx					;存储在dx:ax 中，320*200=0xXXXX 只需四位即可
	add esi,eax
	add esi,ebx
	mov cl,byte [esp+16]
	mov byte [esi],cl
	pop ebp
	ret
;======================clear_pixel(int x,int y)320*200================
clear_pixel:
	push ebp
	mov ebp,esp
	mov esi,0xA0000
	mov ebx,[esp+8]
	mov ax,[esp+12]		
	mov cx,320
	mul cx					;存储在dx:ax 中，320*200=0xXXXX 只需四位即可
	add esi,eax
	add esi,ebx
	mov word [esi],0
	pop ebp
	ret
