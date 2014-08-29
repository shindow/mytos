[section .text]
global allow_paging
;===============allow_paging(u32 page_directory)===================
allow_paging:
	push ebp
	mov ebp,esp
	call setup_page	;����PDE,PTEӳ��
	mov ebx,0		;����cr3
	mov cr3,ebx
	mov eax,cr0		;������ҳ
	or eax,0x80000000
	mov cr0,eax	
	pop ebp
	ret
setup_page:				;һ��1��PDE,4��PTE
	push ebp
	mov ebp,esp
	xor ecx,ecx
	
	mov eax,0			;��һ��1��PDE,4��PTE����
	mov ebx,0
	mov cx,5120
L1:	
	mov dword [ebx],eax
	add ebx,4
	dec cx
	cmp cx,0
	jnz L1

	mov ebx,0			;����page directory
	mov eax,0x1007
	mov cx,4
L2:					
	mov dword [ebx],eax	
	add ebx,4
	add eax,0x1000
	dec cx
	cmp cx,0
	jnz L2			
	
;	mov eax,0x7			;����page table
;	mov ebx,0x1000
;L3:					
;	mov dword [ebx],eax	
;	add ebx,4
;	add eax,0x1000
;	cmp ebx,0x5000
;	jnz L3	
	std
	mov eax,0xFFF007
	mov edi,0x4FFC
	std
L3:	stosd
	sub eax,0x1000
	jge L3
	pop ebp
	ret
	
	
	