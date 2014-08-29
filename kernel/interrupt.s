;       interrupt									
;	by shindow(liuyu_200411@sina.com) 					
;	2010.2.15  setup	
extern Keyboard_Handler
extern Mouse_Handler
extern PIT_Handler
extern Exception_Handler
extern p_proc_ready
extern p_proc_save
extern ESPREG
extern IsReentable
extern IsProcChanged
extern vm86start
extern GPF_VM86
[section .bss]
StackSpace	resb 4*1024
StackTop:
StackTmp	resb 2*1024
StackTmpTop:
[section .text]
SPREG dd 0
global _EXCEPTION0
global _EXCEPTION1
global _EXCEPTION2
global _EXCEPTION3
global _EXCEPTION4
global _EXCEPTION5
global _EXCEPTION6
global _EXCEPTION7
global _EXCEPTION8
global _EXCEPTION9
global _EXCEPTION10
global _EXCEPTION11
global _EXCEPTION12
global _EXCEPTION13
global _EXCEPTION14
;15����
global _EXCEPTION16
global _EXCEPTION17
global _EXCEPTION18
global _EXCEPTION19
;20-29����
global _EXCEPTION30
;31����

global _IRQ0
global _IRQ1
global _IRQ2
global _IRQ3
global _IRQ4
global _IRQ5
global _IRQ6
global _IRQ7
global _IRQ8
global _IRQ9
global _IRQ10
global _IRQ11
global _IRQ12
global _IRQ13
global _IRQ14
global _IRQ15
; ---------------------------------
%macro	irq_master	1

%endmacro
; ---------------------------------
%macro	irq_slave	1
	
%endmacro
; ---------------------------------�޴�����
%macro exception_no_error 1		
	push 0xFFFFFFFF
	push %1
	jmp exception_caller
%endmacro
; ---------------------------------�д�����
%macro exception_error 1
	push %1
	jmp exception_caller
%endmacro
exception_caller:
	call	Exception_Handler
	add	esp,8
	hlt
;---------------------------------
ALIGN	16
_IRQ0:		;Interrupt routine for irq 0 (the clock)
	pushad
	push ds
	push es
	push fs
	push gs
;==================ds,esʹ���ں�ʱ��ss,ss=0x10
	mov ax,ss
	mov es,ax
	mov ds,ax
;=================ʹ����ʱ��ջ��ִ��PIT_Handler��ĳ���
	mov eax,esp
	mov [ESPREG],eax				;����esp,���ò�ûʲô...
	mov esp,StackTmpTop				;ʹ���ں�ջ
	call PIT_Handler
	mov eax,[ESPREG]				;�ָ�esp
	mov esp,eax
;==================�жϽ����Ƿ��л��ˣ�������ת����λIsProcChanged
	mov eax,[IsProcChanged]
	cmp eax,0
	jz NoChange
	mov eax,0						;�ָ�IsProcChanged,0�����л���
	mov [IsProcChanged],eax			;����IsProcChanged
;==================�������������,�ѱ�����((��ջ��ļĴ���))���Ƶ�((���̿�))��
	cld
	mov ecx,68					;[4(gs..)+8(eax..)+5(eip,eflags,cs,ss,esp_tmp)]*4
	mov esi,esp
	mov edi,[p_proc_save]				;p_proc_sace��ʾ��ǰ���л����Ǹ�����
	rep movsb						;[esp](source)>>>>[p_proc_save](destination)
;==================����esp_tmp����ʱesp��������Ȩ���ı�ʱ������............
	mov edi,[p_proc_save]
	add edi,60						;ָ����̱����е�esp
	mov eax,dword [edi]				
	sub edi,32
	mov dword [edi],eax				;ָ����̱����е�esp_tmp
;==================�鿴���̿���isloaded���жϽ����Ƿ��һ�μ��ؽ���
	mov esp,[p_proc_ready];ESPָ����̱���
	add esp,68			;ָ����̱����е�isload
	pop eax
	cmp eax,1
	jz Loaded
;==================���̵�һ�μ��ؽ���
;	sub esp,72			;ָ����̱����е�eip
;	pop gs
;	pop fs
;	pop es
;	pop ds
;	popad				;popad����pop�� esp��ֻʱesp+4����	
;	iret

;	pop edx				;SS
;	sub esp,20
;	pop eax				;EIP
;	pop ebx				;CS			
;	pop ecx				;FLAG
;	sub esp,32			;ָ��ESP
;	pop esp				;���ؽ���������ESP

;	push edx				;SS
;	push 0x1000
;	push dx		
;	push ecx				;FLAG
;	push ebx				;CS	
;	push eax				;EIP
Loaded:
;================���̲��ǵ�һ�μ��ؽ�����
	sub esp,72
	pop gs
	pop fs
	pop es
	pop ds
	popad	;��ʱ�Ѿ������˽���������ESP,֮ǰ���ж�ʱss���Ѿ�������������
	iret
;============================����
NoChange:
	pop gs
	pop fs
	pop es
	pop ds
	popad
	iret
ALIGN	16
_IRQ1:		;Interrupt routine for irq 1 (keyboard)
	pushad
	push ds
	push es
	push fs
	push gs
;==================ds,esʹ���ں�ʱ��ss,ss=0x10
	mov ax,ss
	mov es,ax
	mov ds,ax
;====================ʹ���ڴ�ջ
	mov eax,esp
	mov [SPREG],eax				;����esp
	mov esp,StackTop
	call Keyboard_Handler
	mov eax,[SPREG]				;�ָ�esp
	mov esp,eax
;=======================
	pop gs
	pop fs
	pop es
	pop ds
	popad
	iretd
ALIGN	16
_IRQ2:		; Interrupt routine for irq 2 (cascade!)
	irq_master	2

ALIGN	16
_IRQ3:		; Interrupt routine for irq 3 (second serial)
	irq_master	3

ALIGN	16
_IRQ4:		; Interrupt routine for irq 4 (first serial)
	irq_master	4

ALIGN	16
_IRQ5:		; Interrupt routine for irq 5 (XT winchester)
	irq_master	5

ALIGN	16
_IRQ6:		; Interrupt routine for irq 6 (floppy)
	irq_master	6

ALIGN	16
_IRQ7:		; Interrupt routine for irq 7 (printer)
	irq_master	7



ALIGN	16
_IRQ8:		; Interrupt routine for irq 8 (realtime clock).
	pushad
	mov al,0x20
	out 0x20,al
	out 0xA0,al
	mov esi,0xB8004
	inc byte [esi]
;	call Keyboard_Handler
	mov al,0x20
	out 0x20,al
	out 0xA0,al
	popad
	iretd
	
ALIGN	16
_IRQ9:		; Interrupt routine for irq 9 (irq 2 redirected)
	irq_slave	9

ALIGN	16
_IRQ10:		; Interrupt routine for irq 10
	irq_slave	10

ALIGN	16
_IRQ11:		; Interrupt routine for irq 11
	irq_slave	11

ALIGN	16
_IRQ12:		; Interrupt routine for irq 12
	pushad
	push ds
	push es
	push fs
	push gs
	mov eax,esp
	mov [SPREG],eax				;����esp
	mov esp,StackTop
	call Mouse_Handler
	mov eax,[SPREG]				;�ָ�esp
	mov esp,eax
	pop gs
	pop fs
	pop es
	pop ds
	popad
	iret	
ALIGN	16
_IRQ13:		; Interrupt routine for irq 13 (FPU exception)
	irq_slave	13

ALIGN	16
_IRQ14:		; Interrupt routine for irq 14 (AT winchester)
	irq_slave	14

ALIGN	16
_IRQ15:		; Interrupt routine for irq 15
	irq_slave	15

;===================exeception=============================


ALIGN	16
_EXCEPTION0:
	exception_no_error 0
ALIGN	16
_EXCEPTION1:
	exception_no_error 1
ALIGN	16
_EXCEPTION2:
	exception_no_error 2
ALIGN	16
_EXCEPTION3:
	exception_no_error 3
ALIGN	16
_EXCEPTION4:
	exception_no_error 4
ALIGN	16
_EXCEPTION5:
	exception_no_error 5
ALIGN	16
_EXCEPTION6:
	exception_no_error 6
ALIGN	16
_EXCEPTION7:
	exception_no_error 7
ALIGN	16
_EXCEPTION8:
	exception_error 8
ALIGN	16
_EXCEPTION9:
	exception_no_error 9
ALIGN	16
_EXCEPTION10:
	exception_error 10
ALIGN	16
_EXCEPTION11:
	exception_error 11
ALIGN	16
_EXCEPTION12:
	exception_error 12
ALIGN	16
_EXCEPTION13:			;not finished yet
	mov ax,0x10
	mov ds,ax
	mov es,ax
;	mov eax,esp
;	mov [SPREG],eax				;����esp
;	mov esp,StackTop
	call GPF_VM86
;	mov eax,[SPREG]				;�ָ�esp
;	mov esp,eax
	add esp,4
	iret	
ALIGN	16
_EXCEPTION14:
	exception_error 14
ALIGN	16
_EXCEPTION16:
	exception_no_error 16
ALIGN	16
_EXCEPTION17:
	exception_error 17
ALIGN	16
_EXCEPTION18:
	exception_no_error 18
ALIGN	16
_EXCEPTION19:
	exception_no_error 19	


