;       loader									
;	by shindow(liuyu_200411@sina.com) 					
;	2010.1.15  setup		  
;
;	rewrite on 214.9.1
;

;================================================
;TODO	dectect VGA card type
;		display infomation with hex or str
;================================================

;0x7c00处保存了软盘参数12字节(save 12 bytes floppy parameter,actually when runs over of boot.bin
;it will not be used forever)
;0x1000处保存了Pic.bin，如果有的话(if have Pic.bin,save it at 0x1000)
;0x20000处保存内核(save kernel at 0x20000)
;0x10000处保存引导扇区,0x10200处保存软盘header信息扇区(save boot.bin at 0x10000,save floppy header
;sector at 0x10200)
;0x10400处保存load.bin(save boot.bin at 0x10400)
;0x9000处保存其他相关参数(save other parameter at 0x9000)

;0xA0000-0xBFFFF用于显示缓冲区(128K)
;0xC0000-0xC7FFF用于显卡BIOS
;0xC8000-0xCBFFF用于IDE控制器BIOS
;0xF0000-0xFFFFF用于系统BIOS

;0x A 0 0 0 0
;｜
;｜ 2x64K=128K;　　作为显存使用
;｜　　　　　　　0xa0000-0xb0000 EGA/VGA/XGA/XVGA图形视频缓冲区
;｜　　　　　　　0xb0000-0xb8000 Mono text video buffer
;｜　　　　　　　0xb8000-0xc0000 CGA/EGA+ chroma text video buffer
;｜
;｜
;0x B F F F F
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
	;
	;加载pic.bin(load pic.bin)
	;
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
	mov ax,PARA_ADDR_DS
	mov ds,ax

	;获取扩展内存(INT 15h, AH=88h - Get Extended Memory Size)
	;Input:
	;	AH	Function Code	88h
	;Output:
	;	CF	Carry Flag	Non-Carry - indicates no error
	;	AX	Memory Count	Number of contiguous KB above 1 MB.
	mov ah,0x88
	int 0x15
	mov word [0],ax
	
	;Int 10/AH=12h/BL=10h 
	;检测显示方式(EGA, VGA, MCGA) - GET EGA INFO
	;Return:
	;	BH = video state
	;		00h color mode in effect (I/O port 3Dxh)
	;		01h mono mode in effect (I/O port 3Bxh)
	;	BL = installed memory (00h = 64K, 01h = 128K, 02h = 192K, 03h = 256K)
	;	CH = feature connector bits
	;	CL = switch settings
	;	AH destroyed (at least by Tseng ET4000 BIOS v8.00n)
	xor ax,ax
	xor bx,bx
	xor cx,cx
	mov ah,0x12
	mov bl,0x10
	int 0x10
	;存储video state和installed memory
	mov word [2],bx
	;显卡参数
	mov word [4],cx

	;===================================================
	;获取硬盘参数(get disk parameter)
	;===================================================
	
	;在地址4*0x41处的四个字节是硬盘参数存储的段和偏移地址，取出来再取对应地址的内容
	;(the 4*0x41 address store the ds and offset of the address of the disk parameter)
	mov ax,0
	mov ds,ax
	lds si,[4*0x41]
	mov ax,PARA_ADDR_DS
	mov es,ax
	;硬盘参数HD0存储在PARA_ADDR_DS:20(the disk hd0 parameter stored in PARA_ADDR_DS:20) 
	mov di,20
	mov cx,16
	rep movsb

	mov ax,0
	mov ds,ax
	lds si,[4*0x46]
	mov ax,PARA_ADDR_DS
	mov es,ax
	;硬盘参数HD1存储在PARA_ADDR_DS:32(the disk hd1 parameter stored in PARA_ADDR_DS:32)
	mov di,32
	mov cx,16
	rep movsb
	
	;===================================================
	;获取硬盘参数(get disk parameter)
	;===================================================

	
	;还原ds(reset ds to cs)
	mov ax,cs
	mov ds,ax

	;curosr parameter
	mov dh,11		;row	
	mov dl,0		;column
	call SetCursor

	
	;===================================================
	;初始化内核(init kernel and jump to protected mode)
	;===================================================

	;设置GDTR(set GDTR register)
	xor eax,eax
	mov ax,ds
	shl eax,4
	add eax,gdt
	mov dword [gdt_ptr+2],eax
	lgdt [gdt_ptr]

	;打开地址线A20(open A20)
	cli
	in al,92h
	or al,00000010b
	out 92h,al

	
	;准备切换到保护模式
	mov eax,cr0
	or eax,1
	mov cr0,eax

	;加载任务(load task)
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

	;设置段寄存器(set segment register)
	mov ax,0x10
	mov ds,ax
	mov es,ax
	

	jmp dword 8:0x20000
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
ResetKernelAddr:
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
	add eax,NEW_KERNEL_BASE_ADDR
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

;**********************variable definition***********************
msgWel		db "shindow,here we go!Welcome to the os world!"
mWLength	EQU $-msgWel
PARA_ADDR_DS	equ 0x900


NEW_KERNEL_BASE_ADDR 	equ	0x20000
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








