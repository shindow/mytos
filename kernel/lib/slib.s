extern position
[section .text]
global out_byte
global in_byte
global disable_int
global enable_int
global mem_set
global disp_str
global mem_cpy
;===============out_byte(u16 port,u8 value)===================
out_byte:
	push ebp
	mov ebp,esp
	mov al,byte [esp+12]
	mov dx,word [esp+8]
	out dx,al
	nop 
	nop
	nop
	pop ebp
	ret
;===============in_byte(u16 port)===================
in_byte:
	push ebp
	mov ebp,esp
	mov dx,word [esp+8]
	xor eax,eax
	in al,dx
	nop 
	nop
	nop
	pop ebp
	ret
;=====================disable_int()==================
disable_int:
	cli
	ret
;=====================enable_int()===================
enable_int:
	sti
	ret
;=====================disp_str(char *str)===================
disp_str:
	push ebp
	mov ebp,esp
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	mov esi,[esp+8]		;esi,参数的开始地址
	dec esi
	mov edi,0xB8000		;edi=0xB8000(显存的内存地址)
	mov cl,160			;cl=160(常数)
	mov bx,[position]		;bx记录"光标"位置
	shl bx,1				;position*2->edi		
	add edi,ebx			;edi=bx+edi(要显示的地址)
Again:	
	inc esi				
	mov dl,[esi]
	cmp dl,0	
	jz Zero				;判断是否为0
	cmp dl,0x0A
	jnz No				;判断是否为回车

	mov eax,edi
	sub eax,0xB8000
	mov ch,cl
	div cl
	sub ch,ah
	xor eax,eax
	mov al,ch
	add edi,eax
	jmp Again
No:	mov byte [edi],dl
	add edi,2
	jmp Again
Zero:
	sub edi,0xB8000		
	shr edi,1				;esi/2->position
	mov word [position],di
	pop ebp
	ret
;===============Update_Cursor()===============
;Update_Cursor:					;更新光标
;	push ebp
;	mov esp,ebp
;	mov al,0x0F
;	mov dx,0x3D4
;	out dx,al
;	mov ax,word [position]
;	shr ax,8
;	mov dx,0x3D5
;	out dx,al
;	mov al,0x0E
;	mov dx,0x3D4
;	out dx,al
;	mov ax,word [position]
;	mov al,ah
;	mov dx,0x3D5
;	out dx,al
;	pop ebp
;	ret
;===============mem_cpy(u32 dest,u32 source,u32 size)===============
mem_cpy:
	push ebp
	xor ecx,ecx
	mov ebp,esp
	mov ecx,[esp+16]	;size
	mov esi,[esp+12]	;source
	mov edi,[esp+8]	;dest
	cld
	rep movsb
	pop ebp
	ret
;===============mem_set(u32 addr,u32 len,int value)===============
mem_set:
	push ebp
	mov ebp,esp
	xor ecx,ecx
	xor ebx,ebx
	xor eax,eax
	mov eax,[esp+16]		;值
	mov ecx,[esp+12]		;移动次数
	mov ebx,[esp+8]		;起始地址
Againset:
	mov dword [ebx],eax
	add ebx,4
	dec ecx
	jnz Againset
	pop ebp
	ret
