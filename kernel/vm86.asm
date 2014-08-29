;			vm86										
;			by shindow(liuyu_200411@sina.com) 					
;			2010.3.15  setup	
[section .text]
[bits 32]
global VM86Init
global ReturnText
global Restore_SegRegisters
%macro IN_VM86 1		;设置进入vm86的宏
	mov eax,cr4
	or eax,1
	mov cr4,eax			;vm86模式中断直接在实模式下完成
	mov ecx,0x20202
	mov eax,%1
	mov ebx,eax
	shr ebx,4
	and eax,0xF
	push ecx
	push ebx
	push eax
	iret
%endmacro
VM86Init:
	IN_VM86 vm86start     
ReturnText:
	IN_VM86 vm86end
;VGATest:
;//		out_byte(0x3C2,in_byte(0x3CC)|0x2);
;//		out_byte(0x3CE,0x6);
;//		out_byte(0x3CF,(in_byte(0x3CF)|0x8)&0x4);
;	mov dx,0x3cc
;	in al,dx
;	or al,0x2
;	out 0x3c2,al
;	mov al,0x6
;	out 0x3ce,al
;	mov dx,0x3CF
;	in al,dx
;	or al,0x8
;	and 
Restore_SegRegisters:
	mov ax,0x10
	mov ds,ax
	mov es,ax
	ret
[bits 16]
global vm86start
global vm86end
vm86end:
	mov ax,cs		
	mov ds,ax
	mov ax,0x1020		;pic.bin被加载到0x10200
	mov fs,ax


	mov ah,0
	mov al,3	 
	;mov al,13h
	int 10h		;03h: 80x25 Text, 16 colors, 8 pages 并清屏
L2:
	jmp L2
	db "3333"
	mov ah,0xb
	mov bh,0
	mov bl,4
	int 10h		;设置背景颜色
vm86start:
	in_vm86 
	mov ax,cs
	mov ds,ax
	mov ss,ax
	mov gs,ax
	mov fs,ax
	mov ax,0xA000
	mov es,ax
	mov sp,0x2000
	mov ah,0
	mov al,0x13	 
	int 0x10
	
;	mov esi,0
;Lo:	mov dword [es:esi],11
	mov ah,0x10
	mov al,3
	mov bl,0
	mov bh,4
	int 10h		;设置背景颜色
;	mov cx,4
;	mov dx,4 
;Lo:
;	mov ah,0xC
;	mov al,0xb
;	inc cx
;	mov bh,0
;	int 0x10
;	jmp Lo
;	mov ax,ax
;	mov bx,bx
L1:
	jmp L1
