;       booter								
;	by shindow(liuyu_200411@sina.com) 				
;	2010.1.13  setup		  												
org 0x7c00
mov ax,cs
mov es,ax
mov ax,0
mov ss,ax
mov ds,ax
mov esp,0x1000 ;���üĴ���

call ReadSector
;�����Ҫ��ȡ������
mov cx,word [0x7c00+0x240+2]	;load.bin ����������
;����load.bin
Load:
	;ѭ����ÿһ������
	push cx
	call IncSector
	call ReadSector
	pop cx
	dec cx
	cmp cx,0
	jnz Load
mov cx,word [0x7c00+0x280+2]	;kernel.bin ����������
push cx
mov cx,word [0x7c00+0x260+2]	;pic.bin ����������

mov ax,0
mov word [copy_off],ax
mov ax,0x1000
mov word [copy_ds],ax
;����pic.bin
Pic:		   
	push cx
	call IncSector
	call ReadSector
	pop cx
	dec cx
	cmp cx,0
	jnz Pic
xor ax,ax
mov al,[sector]
push ax
mov al,[tracker]
push ax
mov al,[header]
push ax
mov ax,[start]
push ax
jmp 0x800:0
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
	;dest addr increase 200h
	mov ax,word [copy_off]
	add ax,200h
	mov word [copy_off],ax
	ret
;********************read a sector*********************
;********************��ȡһ��������al=1��*********************
ReadSector:
goon:					;write to es:bx
	mov ax,word [copy_ds]							
	mov es,ax
	mov bx,word [copy_off]	;es:bx 0:0x7e00,����0x7c00���0x200h
	mov ah,02h		;ah int 13 function number
	mov al,01h		;��ȡ������
	mov ch,[tracker]	;ch tracker	(��0��ʼ)
	mov dl,[driver]	;dl driver		(��0��ʼ)	
	mov dh,[header]	;dh header	(��0��ʼ)
	mov cl,[sector]	;cl sector		(��1��ʼ)
	;��ڲ�����
	;link,http://en.wikipedia.org/wiki/INT_13H#INT_13h_AH.3D02h:_Read_Sectors_From_Drive
	;AH 	02h
	;AL 	Sectors To Read Count
	;CH 	Cylinder
	;CL 	Sector
	;DH 	Head
	;DL 	Drive
	;ES:BX 	Buffer Address Pointer����ȡ��Ŀ���ַ
	;Results:
	;	CF 	Set On Error, Clear If No Error
	;	AH 	Return Code
	;	AL 	Actual Sectors Read Count
	int 13h
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;JC��Jump if Carry�������������λ��־ʱ����CF=1ʱ����ת��Ŀ�����
	;e.g.
	;int 0x13	; call the interrupt
	;jnc exit	; if the carry flag is clear, it worked
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	jc goon

	ret
sector	db	2
header	db	0	
tracker	db	0
driver	db	0
start		dw	1
secPer	db	18
copy_off	dw  0x7e00
copy_ds	dw  0x0
times 510-($-$$) db 0
dw 0xaa55

