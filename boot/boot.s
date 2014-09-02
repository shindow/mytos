;       booter								
;	by shindow(liuyu_200411@sina.com) 				
;	2010.1.13  setup

;	rewrite 2014.8.28  liuyu

;org 0x7c00,这会把所有的代码地址符都加一个0x7c00,如果不加这个文件会导致的问题是，如jmp Load
;Load的地址在没加org0x7c00时假设是0x30，所以jmp Load，不会跳转到Load，因为正真的Load在0x7c30
;故如果不是程序作了如下ds，cs等设置，会出现一些问题。
;(if we don't init cs,ds and so on,it will cause problem such as jmp Load instruction,cause without org 0x7c00
;the address of Load is like 0x30,but with the org 0x7c00 instruction,it will be 0x7c30,actually the Load is at
;0x7c30,but if you set the cs to 0x7c0,the condition is opposite.with the org 0x7c00,jmp Load will be like this:
;jmp 0x7c0:0x7c30,it will be wrong absolutely.)
;初始化寄存器(init registers)

;有时需要切换ds，因为访问其他内存空间时，如访问0x78处，如果数据段是0x800显示访问不到相应的内存
;所以此时需要把ds切换到0，而访问本代码里的变量时，显然应该把数据段切换到本程序加载的起始地址
;sometimes it needs to exchange ds such as locate memory 0x78,if the ds is 0x800,it cannot locate memory 0x78
;it needs to set ds to 0,and when locate variable in this file,it needs to set ds,such as 0x800

	mov ax,cs
	mov es,ax
	
	mov ax,STACK_SEG
	mov ss,ax
	mov eax,STACK_OFFSET
	mov esp,eax
;
;拷贝引导扇区从0x7c00到0x8000(copy boot sector from 0x7c00 to 0x8000)
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
	;修改软驱参数(change the floppy parameter)
	;
	mov ax,0
	mov ds,ax
	mov es,ax
	;软驱参数偏移地址(floppy drive parameter offset)
	mov ax,word [0x78]
	mov si,ax
	;软驱参数段地址(floppy drive parameter segment)
	mov ax,word [0x78+2]
	mov ds,ax

	mov ax,FLOPPY_TEMP_ADDR_OFFSET
	mov di,ax
	mov cx,12
	rep movsb

	;还原段寄存器
	mov ax,0
	mov ds,ax
	mov es,ax

	mov al,byte word [FLOPPY_TEMP_ADDR_OFFSET+4]
	cmp al,0x12
	;比较偏移4处的最大扇区数，如果是18则不做改变，否则重置软驱驱动器
	;compare the 4th byte offset at 0x7c00,if it not equals 18,then reset this value to 18
	jz NoChangeFloppyDriveParam
	
	mov byte word [FLOPPY_TEMP_ADDR_OFFSET+4],0x11
	;重新指向软驱参数(repoint floppy parameter)
	mov word [0x78],FLOPPY_TEMP_ADDR_OFFSET
	mov word [0x78+2],FLOPPY_TEMP_ADDR_SEG

	;恢复ds(reset ds to 0)
	mov ax,0
	mov ds,ax

	sub ah,ah
	sub dl,dl
	int 0x13

NoChangeFloppyDriveParam:
	;重新设置段寄存器(reset segment register)
	mov ax,BOOT_NEW_SEG
	mov ds,ax
	mov es,ax

	;下面开始正真加载软盘中的内容
	;begin to load the sectors in floppy


	;设置加载内存地址(set the memAddr to be loaded)
	mov word [copy_ds],BOOT_NEW_SEG
	mov word [copy_off],0x200
	;读取第二扇区,该扇区是头信息
	call ReadASector
	call IncSector

	;获得需要读取load.bin的扇区数量(get the number of sectors for load.bin)
	mov cx,word [0x240+2]	
	;设置加载内存地址(set the memAddr to be loaded)
	mov ax,LOAD_OFFSET
	mov word [copy_off],ax
	mov ax,LOAD_SEG
	mov word [copy_ds],ax
	;加载load.bin
LoadLoadBin:
	;循环度每一个扇区
	push cx
	call ReadASector
	call IncSector
	pop cx
	dec cx
	cmp cx,0
	jnz LoadLoadBin


	;pic.bin 多少扇区数
	mov cx,word [0x260+2]
	;是否有PicBin
	cmp cx,0
	jz NoPicBin
	;设置标志位为1
	mov byte [bHasPicBin],1
	;设置加载内存地址(set the memAddr to be loaded)
	mov ax,PIC_OFFSET
	mov word [copy_off],ax
	mov ax,PIC_SEG
	mov word [copy_ds],ax
;加载pic.bin
LoadPicBin:		   
	push cx
	call ReadASector
	call IncSector
	pop cx
	dec cx
	cmp cx,0
	jnz LoadPicBin
NoPicBin:
	;kernel.bin 多少扇区数
	mov cx,word [0x280+2]	
	;设置加载内存地址(set the memAddr to be loaded)
	mov ax,KERNEL_OFFSET
	mov word [copy_off],ax
	mov ax,KERNEL_SEG
	mov word [copy_ds],ax
;加载kernel.bin
LoadKernelBin:		   
	push cx
	call ReadASector
	call IncSector
	pop cx
	dec cx
	cmp cx,0
	jnz LoadKernelBin
	
	call KillMotor

	;保存参数(save parameter about pic.bin)
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
;********************读取一个扇区（al=1）*************
;读取的扇区数据会保存到es:bx内存处(the floppy reader will read sector content to the memory es:bx)
ReadASector:					;write to es:bx
	mov ax,word [copy_ds]							
	mov es,ax
	mov bx,word [copy_off]	;es:bx 0:0x7e00,是在0x7c00后的0x200h
	;以下是固定阐述
	mov ah,02h		;ah int 13 function number
	mov al,01h		;读取扇区数(number of sector to read)
	mov ch,[tracker]	;ch tracker	(从0开始)
	mov dl,[driver]	;dl driver		(从0开始)	
	mov dh,[header]	;dh header	(从0开始)
	mov cl,[sector]	;cl sector		(从1开始)
	;入口参数：
	;link,http://en.wikipedia.org/wiki/INT_13H#INT_13h_AH.3D02h:_Read_Sectors_From_Drive
	;AH 	02h
	;AL 	Sectors To Read Count
	;CH 	Cylinder
	;CL 	Sector
	;DH 	Head
	;DL 	Drive
	;ES:BX 	Buffer Address Pointer，读取的目标地址
	;Results:
	;	CF 	Set On Error, Clear If No Error
	;	AH 	Return Code
	;	AL 	Actual Sectors Read Count
	int 13h
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;JC（Jump if Carry）当运算产生进位标志时，即CF=1时，跳转到目标程序处
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
;********************打印回车换行*********************
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


;***********************变量定义(variable definition)**********************
;定义扇区相关(defined sectors related)
sector	db	2	;从第二个扇区开始读
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

