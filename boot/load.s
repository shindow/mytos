;       loader									
;	by shindow(liuyu_200411@sina.com) 					
;	2010.1.15  setup		  
;
;	rewrite on 214.9.1
;
%include "protect.inc"
[BITS 16]

	;通过对堆栈中的参数来加载pic.bin(load pic.bin by the parameter in stack)
	mov ax,cs		
	mov ds,ax
	mov es,ax

	;AH=00/INT 10H 是用来设定显示模式的服务程序，AL 寄存器表示欲设定的模式：
	;AL 	文字/图形 	分辨率 	颜色
	;00 	文字(text) 	40*25 	2
	;01 	文字(text) 	40*25 	16
	;02 	文字(text) 	80*25 	2
	;03 	文字(text) 	80*25 	16
	;04 	图形(graphic) 	320*200 	2
	;05 	图形(graphic) 	320*200 	4
	;06 	图形(graphic) 	640*200 	2
	mov ah,0
	mov al,3	 
	int 10h
	;AH=0Bh, BH = 00h
	;Set background/border color 
	;BL = Background/Border color (border only in text modes) 	
	;AH=0Bh, BH = 01h
	;Set palette 	 	
	;BL = Palette ID (was only valid in CGA, but newer cards support it in many or all graphics modes)
	;0 	0000 	Black 	 
	;1 	0001 	Blue 	
	;2 	0010 	Green 	
	;3 	0011 	Cyan 	
	;4 	0100 	Red 	
	;5 	0101 	Magenta 	
	;6 	0110 	Brown 	
	;7 	0111	 	Light Gray 	
	;8 	1000 	Dark Gray 	
	;9 	1001 	Light Blue 	
	;A 	1010 	Light Green 	
	;B 	1011 		Light Cyan 	
	;C 	1100 	Light Red 	
	;D 	1101 		Light Magenta 	
	;E 	1110 		Yellow 	
	;F 	1111 		White
	mov ah,0xb
	mov bh,0
	mov bl,4
	int 10h		;设置背景颜色
	;stack:
	;bHasPicBin		2bytes
	;PIC_SGE		4bytes
	;PIC_OFFSET		4bytes

	pop eax
	pop ebx
	pop cx
	
	cmp cx,0
	jz NoNeedToLoadPicBin

	mov esi,eax	
	mov fs,bx
	mov cx,2000
	mov ax,0xb800
	mov es,ax
	mov di,0
	L1:
		mov al,byte [fs:si]
		inc si
		mov byte [es:di],al
		add di,2
		loop L1
NoNeedToLoadPicBin:
;=======================
mov dh,11	;行	
mov dl,0		;列
call SetCursor

pop ax
mov [start],ax
xor ax,ax
pop ax
mov [header],al
pop ax
mov [tracker],al
pop ax
mov [sector],al
pop cx
Kernel:		   ;加载kernel.bin,从0x40200开始
	push cx
	call IncSector
	call ReadSector
	pop cx
	dec cx
	cmp cx,0
	jnz Kernel

call KillMotor
call InitKernel

xor eax,eax
mov ax,ds
shl eax,4
add eax,gdt
mov dword [gdt_ptr+2],eax

lgdt [gdt_ptr]

cli
in al,92h
or al,00000010b
out 92h,al
mov eax,cr0
or eax,1
mov cr0,eax


xor eax,eax
mov ax,ds
shl eax,4
add eax,LABEL_TSS
mov word [LABEL_DES_TSS+2],ax
shr eax,16
mov byte [LABEL_DES_TSS+4],al
mov byte [LABEL_DES_TSS+7],ah
mov ax,0x28
ltr ax

mov ax,0x10
mov ds,ax
mov es,ax



jmp dword 8:0x20400
;********************increase a sector******************
IncSector:
	mov ax,[start]
	inc ax
	mov [start],ax
	div byte [secPer]
	inc ah
	mov [sector],ah
	mov ah,al
	and ah,1
	mov [header],ah
	shr al,1
	mov [tracker],al

	mov ax,word [copy_off]
	add ax,200h
	mov word [copy_off],ax
	ret
;********************read a sector*********************
ReadSector:
goon:					;write to es:bx
	mov ax,word [copy_ds]							
	mov es,ax
	mov bx,word [copy_off]
	mov ah,02h		;ah int 13 function number
	mov al,01h		;读取扇区数
	mov ch,[tracker]	;ch tracker	(从0开始)
	mov dl,[driver]		;dl driver		(从0开始)	
	mov dh,[header]	 ;dh header	(从0开始)
	mov cl,[sector]	;cl sector		(从1开始)
	int 13h
	jc goon
	ret
;*****************ax=address,bx=length,es:bp****************
Display:
	push bp
	push ax
	push cx
	push bx
	mov bp,ax
	mov ax,cs
	mov es,ax
	mov cx,bx
	mov bx,000Fh		
	mov ax,0x1301
	int 10h
	pop bx
	pop cx
	pop ax
	pop bp
	ret
;********************procedure*******************
;**************dh:行(row),dl:列(column)***********
SetCursor:
	push ax
	mov ah,2
	int 10h
	pop ax
	ret
;********************procedure*******************
;********************InitKernel*******************
InitKernel:
	push ds
	mov ax,0x2000		;新kernel.bin
	mov es,ax
	mov ax,0x4020		;旧kernel.bin
	mov fs,ax
	mov cx,word [fs:0x2c]    ;elf header 中有多少program header
	mov si,word [fs:0x1c]	;elf header 中的第一个program header 的开始地址
	cld
Again:
	mov ax,si
	cmp ax,0
	jz NoRead
	push si
	push cx
	mov ecx,[fs:si+0x10]			;program 大小
	mov eax,dword [fs:si+0x4]		;program旧地址
	add eax,BaseOfKernel
	mov ebx,dword [fs:si+0x8]		;program 新地址

	mov si,ax
	shr eax,16
	shl eax,12
	mov ds,ax

	mov di,bx
	shr ebx,16
	shl ebx,12
	mov es,bx
	rep movsb
	pop cx
	pop si
NoRead:
	add si,0x20
	dec cx
	jnz Again
	pop ds
	ret
;**********************procedure**********************
;*********************DisEnter*************************
DisEnter:
	push dx
	call ReadPos
	mov ah,0x2
	inc dh
	mov dl,0
	int 10h
	pop dx
	ret
;**********************procedure**********************
;*********************ReadPos:ax is changed***********
ReadPos:
	mov bh,0
	mov ah,0x3	;dl contains x 
	int 10h		;dh contains y
	ret
;**********************procedure***********************
;*********************KillMotor*************************
KillMotor:
	push dx
	mov dx,0x3F2
	mov al,0
	out dx,al
	pop dx
	ret

;**********************variable definition***********************
msgWel		db "shindow,here we go!Welcome to the os world!"
mWLength	EQU $-msgWel
sector	db	2
header	db	0	
tracker	db	0
driver	db	0
start		dw	1
secPer	db	18
copy_off	dw  0x0
copy_ds	dw  0x4000
BaseOfKernel	equ	0x40200
gdt:
	SEG 0,0,0
	SEG 0,0xFFFFF,D_T_RW+D_T_E+D_G4K+DA_32C		;code seg ,ring 0
	SEG 0,0xFFFFF,D_T_RW+D_G4K+DA_32C			;data seg  ,ring 0
	SEG 0,0xFFFFF,D_T_RW+D_T_E+D_G4K+DA_32C+D_DPL3
	SEG 0,0xFFFFF,D_T_RW+D_G4K+DA_32C+D_DPL3
LABEL_DES_TSS:
	SEG_S 0,TSSLen-1,DA_386TSS
	SEG 0,0xFFFFF,D_T_RW+D_T_E+D_G4K+DA_32C+D_DPL1
	SEG 0,0xFFFFF,D_T_RW+D_G4K+DA_32C+D_DPL1
length equ $-gdt
gdt_ptr:
	dw length-1
	dd 0
LABEL_TSS:
	DD 0 
	DD 0x1000
	DD 0x10
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DD 0
	DW 0
times  8192	DW 0  
	DB 0xFF
TSSLen	equ $-LABEL_TSS








