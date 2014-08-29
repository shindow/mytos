extern cinit
extern cmain
extern gdt_ptr
extern allow_paging
extern idt_ptr
extern disp_str
extern p_proc_ready
extern vm86start
bits 32
[section .data]
fpu_v dd 0x37F
[section .bss]
Stack3Space	resb 4*1024
Stack3Top
StackSpace	resb 4*1024
StackTop:

[section .text]
global _start
global restart
global Setup_x87_FPU

_start:
	mov ax,ds
	mov ss,ax
	mov fs,ax
	mov gs,ax
	mov esp,StackTop
	sgdt [gdt_ptr]
	call cinit
restart:
	lgdt [gdt_ptr]
	lidt [idt_ptr]

;	mov ax,0x28
;	ltr ax
;	push 0x23
;	push 0x1000
;	push 0x1B
;	push 0
;	retf
;=============临时==============
;	mov eax,cr4
;	or eax,1
;	mov cr4,eax
;	mov ecx,0x27202
;	mov eax,vm86start
;	mov ebx,eax
;	shr ebx,4
;	and eax,0xF
;	push ecx
;	push ebx
;	push eax
;	iret
;=============临时==============
;==================开始的时候是的进程是特权就0
	mov esp,[p_proc_ready]		
;	pop eax				;EIP
;	pop ebx				;CS			
;	pop ecx				;FLAG
;	sub esp,32			;指向ESP
;	pop edx				;ESP
;	mov esp,edx			;加载新的ESP
;	push ecx				;FLAG
;	push ebx				;CS	
;	push eax				;EIP
	pop gs
	pop fs
	pop es
	pop ds
	popad	
	iret

Setup_x87_FPU:
	mov eax,cr4			;set OSFXSR bit
	or eax,0x200
	mov cr4,eax
	fldcw [fpu_v]			;set the fpu control word	
	ret
