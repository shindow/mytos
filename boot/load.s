;       loader									
;	by shindow(liuyu_200411@sina.com) 					
;	2010.1.15  setup		  												
%include "protect.inc"
[BITS 16]
mov ax,cs		
mov ds,ax
mov ax,0x1020		;pic.bin被加载到0x10200
mov fs,ax


mov ah,0
mov al,3	 
;mov al,13h
int 10h		;03h: 80x25 Text, 16 colors, 8 pages 并清屏
mov ah,0xb
mov bh,0
mov bl,4
int 10h		;设置背景颜色
;=========加载图片=========
mov cx,2000
mov ax,0xb800
mov es,ax
mov si,0
mov di,0
L1:
	mov al,byte [fs:si]
	inc si
	mov byte [es:di],al
	add di,2
	loop L1
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
;*****************dh:行,dl:列****************
SetCursor:
	push ax
	mov ah,2
	int 10h
	pop ax
	ret
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
;*********************ReadPos:ax is changed***********
ReadPos:
	mov bh,0
	mov ah,0x3	;dl contains x 
	int 10h		;dh contains y
	ret
;*********************KillMotor*************************
KillMotor:
	push dx
	mov dx,0x3F2
	mov al,0
	out dx,al
	pop dx
	ret
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








