;       booter								
;	by shindow(liuyu_200411@sina.com) 				
;	2010.1.13  setup

;	rewrite 2014.8.28  liuyu

;org 0x7c00,�������еĴ����ַ������һ��0x7c00,�����������ļ��ᵼ�µ������ǣ���jmp Load
;Load�ĵ�ַ��û��org0x7c00ʱ������0x30������jmp Load��������ת��Load����Ϊ�����Load��0x7c30
;��������ǳ�����������ds��cs�����ã������һЩ���⡣
;(if we don't init cs,ds and so on,it will cause problem such as jmp Load instruction,cause without org 0x7c00
;the address of Load is like 0x30,but with the org 0x7c00 instruction,it will be 0x7c30,actually the Load is at
;0x7c30,but if you set the cs to 0x7c0,the condition is opposite.with the org 0x7c00,jmp Load will be like this:
;jmp 0x7c0:0x7c30,it will be wrong absolutely.)
;��ʼ���Ĵ���(init registers)

;��ʱ��Ҫ�л�ds����Ϊ���������ڴ�ռ�ʱ�������0x78����������ݶ���0x800��ʾ���ʲ�����Ӧ���ڴ�
;���Դ�ʱ��Ҫ��ds�л���0�������ʱ�������ı���ʱ����ȻӦ�ð����ݶ��л�����������ص���ʼ��ַ
;sometimes it needs to exchange ds such as locate memory 0x78,if the ds is 0x800,it cannot locate memory 0x78
;it needs to set ds to 0,and when locate variable in this file,it needs to set ds,such as 0x800

	mov ax,cs
	mov es,ax
	
	mov ax,STACK_SEG
	mov ss,ax
	mov eax,STACK_OFFSET
	mov esp,eax
;
;��������������0x7c00��0x8000(copy boot sector from 0x7c00 to 0x8000)
;
	mov ax,BOOT_START_SEG
	mov ds,ax
	mov ax,BOOT_NEW_SEG
	mov es,ax
	mov cx,512
	sub si,si
	sub di,di
	rep movsb

	jmp BOOT_NEW_SEG:restart

restart:
	;
	;�޸���������(change the floppy parameter)
	;
	mov ax,0
	mov ds,ax
	mov es,ax
	;��������ƫ�Ƶ�ַ(floppy drive parameter offset)
	mov ax,word [0x78]
	mov si,ax
	;���������ε�ַ(floppy drive parameter segment)
	mov ax,word [0x78+2]
	mov ds,ax

	mov ax,FLOPPY_TEMP_ADDR_OFFSET
	mov di,ax
	mov cx,12
	rep movsb

	;��ԭ�μĴ���
	mov ax,0
	mov ds,ax
	mov es,ax

	mov al,byte word [FLOPPY_TEMP_ADDR_OFFSET+4]
	cmp al,0x12
	;�Ƚ�ƫ��4��������������������18�����ı䣬������������������
	;compare the 4th byte offset at 0x7c00,if it not equals 18,then reset this value to 18
	jz NoChangeFloppyDriveParam
	
	mov byte word [FLOPPY_TEMP_ADDR_OFFSET+4],0x11
	;����ָ����������(repoint floppy parameter)
	mov word [0x78],FLOPPY_TEMP_ADDR_OFFSET
	mov word [0x78+2],FLOPPY_TEMP_ADDR_SEG

	;�ָ�ds(reset ds to 0)
	mov ax,0
	mov ds,ax

	sub ah,ah
	sub dl,dl
	int 0x13

NoChangeFloppyDriveParam:
	;�������öμĴ���(reset segment register)
	mov ax,BOOT_NEW_SEG
	mov ds,ax
	mov es,ax

	;���濪ʼ������������е�����
	;begin to load the sectors in floppy


	;���ü����ڴ��ַ(set the memAddr to be loaded)
	mov word [copy_ds],BOOT_NEW_SEG
	mov word [copy_off],0x200
	;��ȡ�ڶ�����,��������ͷ��Ϣ
	call ReadASector
	call IncSector

	;�����Ҫ��ȡload.bin����������(get the number of sectors for load.bin)
	mov cx,word [0x240+2]	
	;���ü����ڴ��ַ(set the memAddr to be loaded)
	mov ax,LOAD_OFFSET
	mov word [copy_off],ax
	mov ax,LOAD_SEG
	mov word [copy_ds],ax
	;����load.bin
LoadLoadBin:
	;ѭ����ÿһ������
	push cx
	call ReadASector
	call IncSector
	pop cx
	dec cx
	cmp cx,0
	jnz LoadLoadBin


	;pic.bin ����������
	mov cx,word [0x260+2]
	;�Ƿ���PicBin
	cmp cx,0
	jz NoPicBin
	;���ñ�־λΪ1
	mov byte [bHasPicBin],1
	;���ü����ڴ��ַ(set the memAddr to be loaded)
	mov ax,PIC_OFFSET
	mov word [copy_off],ax
	mov ax,PIC_SEG
	mov word [copy_ds],ax
;����pic.bin
LoadPicBin:		   
	push cx
	call ReadASector
	call IncSector
	pop cx
	dec cx
	cmp cx,0
	jnz LoadPicBin
NoPicBin:
	;kernel.bin ����������
	mov cx,word [0x280+2]	
	;���ü����ڴ��ַ(set the memAddr to be loaded)
	mov ax,KERNEL_OFFSET
	mov word [copy_off],ax
	mov ax,KERNEL_SEG
	mov word [copy_ds],ax
;����kernel.bin
LoadKernelBin:		   
	push cx
	call ReadASector
	call IncSector
	pop cx
	dec cx
	cmp cx,0
	jnz LoadKernelBin
	
	call KillMotor

	;�������(save parameter about pic.bin)
	;bHasPicBin		2bytes
	;PIC_SGE		4bytes
	;PIC_OFFSET		4bytes
	xor ax,ax
	mov al,[bHasPicBin]
	push ax
	mov eax,PIC_SEG
	push eax
	mov eax,PIC_OFFSET
	push eax
	jmp LOAD_SEG:LOAD_OFFSET

;***********************procedure**********************
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
;***********************procedure*********************
;********************read a sector*********************
;********************��ȡһ��������al=1��*************
;��ȡ���������ݻᱣ�浽es:bx�ڴ洦(the floppy reader will read sector content to the memory es:bx)
ReadASector:					;write to es:bx
	mov ax,word [copy_ds]							
	mov es,ax
	mov bx,word [copy_off]	;es:bx 0:0x7e00,����0x7c00���0x200h
	;�����ǹ̶�����
	mov ah,02h		;ah int 13 function number
	mov al,01h		;��ȡ������(number of sector to read)
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
	jnc NoReadError
	
	xor dl,dl
	xor ah,ah
	int 0x13
	jmp ReadASector
NoReadError:
	ret
;***********************procedure*********************
;********************��ӡ�س�����*********************
printEnter:
	push ax
	mov ax,0xe0d
	int 0x10
	mov ax,0xa
	int 0x10
	pop ax
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


;***********************��������(variable definition)**********************
;�����������(defined sectors related)
sector	db	2	;�ӵڶ���������ʼ��
header	db	0	;
tracker	db	0
driver	db	0
start	dw	1
secPer	db	18

bHasPicBin db 0

BOOT_NEW_SEG equ 0x1000
BOOT_START_SEG equ 0x7c0

LOAD_SEG equ 0x1000
LOAD_OFFSET equ 0x400

KERNEL_SEG equ 0x1000
KERNEL_OFFSET equ 0x600

PIC_SEG equ 0x100
PIC_OFFSET equ 0

FLOPPY_TEMP_ADDR_OFFSET equ 0x7c00
FLOPPY_TEMP_ADDR_SEG equ 0

STACK_SEG equ 0
STACK_OFFSET equ 0x10000

copy_off	dw  0x0
copy_ds	dw  0x0
times 510-($-$$) db 0
dw 0xaa55

