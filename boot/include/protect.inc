%macro SEG_S 3				;系统段
	dw (%2&0xFFFF)
	dw (%1&0xFFFF)
	db ((%1>>16)&0xFF)
	db 0x80|(%3&0xFF)					;0x80,type中的present位置位
	db ((%2>>16)&0xF)|((%3>>8)&0xF0)		
	db ((%1>>24)&0xFF)
%endmacro
%macro SEG 3				;数据/代码段
	dw (%2&0xFFFF)
	dw (%1&0xFFFF)
	db ((%1>>16)&0xFF)
	db 0x90|(%3&0xFF)					;属性的第6个字节,0x80,type中的present位置位	
	db ((%2>>16)&0xF)|((%3>>8)&0xF0)		
	db ((%1>>24)&0xFF)
%endmacro
%macro CallGate 4
	dw %2&0xFFFF
	dw %1
	dw (%3&0x1F)|((%4<<8)&0xFF00)	
	dw (%2>>16)&0xFFFF
%endmacro
;**********************************段描述符属性(一级)*********************************
;S位，指明是数据段/代码段描述符,还是系统段/门描述符			不用设置
;D_S_DC	EQU 0x10		;数据段/代码段描述符
;D_S_SG	EQU 0x00		;系统段/门描述符
;P位，是否在内存中										不用设置
;D_P_T		EQU 0x80			;在
;D_P_F		EQU 0x00			;不在
;=======================;Type位，描述符类型========================
;---------------1.数据段或代码段描述符---------------
;        D-Descriptor(描述符),R-Read(读),W-Write(写),D-Down(向下扩展)
;        V-Visited(已访问),E-Execute(执行),C-Consensus(一直码段)
D_T_R		EQU 0x0		;0
D_T_RV		EQU 0x1		;1
D_T_RW		EQU 0x2		;2
D_T_RWV	EQU 0x3		;3
D_T_RD		EQU 0x4		;4
D_T_RDV	EQU 0x5		;5
D_T_RWD	EQU 0x6		;6		
D_T_RWDV	EQU 0x7		;7
D_T_E		EQU 0x8		;8
D_T_EV		EQU 0x9		;9
D_T_ER		EQU 0xA		;a
D_T_ERV	EQU 0xB		;b
D_T_EC		EQU 0xC		;c		
D_T_ECV	EQU 0xD		;e
D_T_ERC	EQU 0xE		;d
D_T_ERCV	EQU 0xF		;f
;---------------2.系统段和门描述符---------------
;	B-Busy,C-CallGate,T-TrapGate,T-TaskGate,I-InterruptGate
D_T_286TSS		EQU 0x1			;可用286TSS
D_T_LDT		EQU 0x2			;LDT
D_T_B286TSS	EQU 0x3			;忙的286TSS
D_T_286C		EQU 0x4			;286调用门
D_T_T			EQU 0x5			;任务门
D_T_286I		EQU 0x6			;286中断门
D_T_286T		EQU 0x7			;286陷阱门

D_T_386TSS		EQU 0x9			;可用386TSS

D_T_B386TSS	EQU 0xB			;忙的386TSS
D_T_386CG		EQU 0xC			;386调用门

D_T_386IG		EQU 0xE			;386中断门
D_T_386TG		EQU 0xF			;386陷阱门

;************************************段属性扩展(二级)*********************************
;DPL位，特权级0，1，2，3
D_DPL0	EQU 0x00
D_DPL1	EQU 0x20
D_DPL2	EQU 0x40
D_DPL3	EQU 0x60
D_RPL0	EQU 0
D_RPL1	EQU 1
D_RPL2	EQU 2
D_RPL3	EQU 3
;G位，段界限颗粒
D_G1B	EQU 0
D_G4K	EQU 0x8000
; 存储段(代码段和数据段)描述符类型值说明
;DA_D_R		EQU	D_P_T+D_S_DC+D_T_R		; 存在的只读数据段类型值
;DA_D_RW	EQU	D_P_T+D_S_DC+D_T_RW		; 存在的可读写数据段属性值
;DA_D_RWA	EQU	D_P_T+D_S_DC+D_T_RWV		; 存在的已访问可读写数据段类型值
;DA_C_E		EQU	D_P_T+D_S_DC+D_T_E		; 存在的只执行代码段属性值
;DA_C_ER	EQU	D_P_T+D_S_DC+D_T_ER		; 存在的可执行可读代码段属性值
;DA_C_EC	EQU	D_P_T+D_S_DC+D_T_EC		; 存在的只执行一致代码段属性值
;DA_C_ERC	EQU	D_P_T+D_S_DC+D_T_ERC		; 存在的可执行可读一致代码段属性值


; 系统段描述符类型值说明
DA_LDT		EQU	  D_T_LDT		; 局部描述符表段类型值(LDT)
DA_TaskGate	EQU	  D_T_T			; 任务门类型值
DA_386TSS	EQU	  D_T_386TSS	; 可用 386 任务状态段类型值
DA_386CGate	EQU	  D_T_386CG		; 386 调用门类型值
DA_386IGate	EQU	  D_T_386IG		; 386 中断门类型值
DA_386TGate	EQU	  D_T_386TG		; 386 陷阱门类型值

DA_32C		EQU	  0x4000				;32位代码段

