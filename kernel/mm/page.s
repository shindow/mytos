[section .text]
global allow_paging
;===============allow_paging(u32 page_directory)===================
allow_paging:
	push ebp
	mov ebp,esp
	call setup_page	;设置PDE,PTE映射
	mov ebx,0		;设置cr3
	mov cr3,ebx
	mov eax,cr0		;开启分页
	or eax,0x80000000
	mov cr0,eax	
	pop ebp
	ret
setup_page:				;一共1个PDE,4个PTE
	push ebp
	mov ebp,esp
	xor ecx,ecx
	
	mov eax,0			;把一共1个PDE,4个PTE清零
	mov ebx,0
	mov cx,5120
L1:	
	mov dword [ebx],eax
	add ebx,4
	dec cx
	cmp cx,0
	jnz L1

	mov ebx,0			;设置page directory
	mov eax,0x1007
	mov cx,4
L2:					
	mov dword [ebx],eax	
	add ebx,4
	add eax,0x1000
	dec cx
	cmp cx,0
	jnz L2			
	
;	mov eax,0x7			;设置page table
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
	
	
	