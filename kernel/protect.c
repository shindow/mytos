/*         about protection														*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.17  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "time.h"
#include "global.h"
void Init_Prot()						//保护模式初始化
{
	//初始化gdt,idt
	mem_cpy((u32)gdt,*(u32*)(gdt_ptr+2),*(u16*)(gdt_ptr)+1);
	u32* base=(u32*)(gdt_ptr+2);
	u16* limit=(u16*)gdt_ptr;
	*base=(u32)gdt;
	*limit=GDT_SIZE*sizeof(DESCRIPTOR)-1;

	base=(u32*)(idt_ptr+2);
	limit=(u16*)idt_ptr;
	*base=(u32)idt;
	*limit=IDT_SIZE*sizeof(DESCRIPTOR)-1;

	//设置idt中的内容0-31项
	SET_EXCEPTION_GATE(0,(void *)_EXCEPTION0);
	SET_EXCEPTION_GATE(1,(void *)_EXCEPTION1);
	SET_EXCEPTION_GATE(2,(void *)_EXCEPTION2);
	SET_EXCEPTION_GATE(3,(void *)_EXCEPTION3);
	SET_EXCEPTION_GATE(4,(void *)_EXCEPTION4);
	SET_EXCEPTION_GATE(5,(void *)_EXCEPTION5);
	SET_EXCEPTION_GATE(6,(void *)_EXCEPTION6);
	SET_EXCEPTION_GATE(7,(void *)_EXCEPTION7);
	SET_EXCEPTION_GATE(8,(void *)_EXCEPTION8);
	SET_EXCEPTION_GATE(9,(void *)_EXCEPTION9);
	SET_EXCEPTION_GATE(10,(void *)_EXCEPTION10);
	SET_EXCEPTION_GATE(11,(void *)_EXCEPTION11);
	SET_EXCEPTION_GATE(12,(void *)_EXCEPTION12);
	SET_EXCEPTION_GATE(13,(void *)_EXCEPTION13);
	SET_EXCEPTION_GATE(14,(void *)_EXCEPTION14);
	SET_EXCEPTION_GATE(16,(void *)_EXCEPTION16);
	SET_EXCEPTION_GATE(17,(void *)_EXCEPTION17);
	SET_EXCEPTION_GATE(18,(void *)_EXCEPTION18);
	SET_EXCEPTION_GATE(19,(void *)_EXCEPTION19);

	//设置IRQ15项中断程序
	SET_INTR_GATE(0x20,(void *)_IRQ0);
	SET_INTR_GATE(0x21,(void *)_IRQ1);
	SET_INTR_GATE(0x22,(void *)_IRQ2);
	SET_INTR_GATE(0x23,(void *)_IRQ3);
	SET_INTR_GATE(0x24,(void *)_IRQ4);
	SET_INTR_GATE(0x25,(void *)_IRQ5);
	SET_INTR_GATE(0x26,(void *)_IRQ6);
	SET_INTR_GATE(0x27,(void *)_IRQ7);
	SET_INTR_GATE(0x28,(void *)_IRQ8);
	SET_INTR_GATE(0x29,(void *)_IRQ9);
	SET_INTR_GATE(0x2A,(void *)_IRQ10);
	SET_INTR_GATE(0x2B,(void *)_IRQ11);
	SET_INTR_GATE(0x2C,(void *)_IRQ12);
	SET_INTR_GATE(0x2D,(void *)_IRQ13);
	SET_INTR_GATE(0x2E,(void *)_IRQ14);
	SET_INTR_GATE(0x2F,(void *)_IRQ15);
}
int Install_Int(int IntNum,u32 HandlerAddress)			//匹配相应中断服务程序
{
	GATE* gate=&idt[IntNum];
	if(IntNum<0)
		return -1;
	gate->selector=8;		//第一项
	gate->offset_low=0xFF&((u32)HandlerAddress);
	gate->offset_high=0xFF&((u32)HandlerAddress>>16);
	return 0;
}
void Remove_Int(int IntNum)										//移出相应中断服务程序
{	
	GATE* gate=&idt[IntNum];									
	if(IntNum<0)
		return ;
	gate->selector=0;
	gate->offset_low=0;
	gate->offset_high=0;
}
void Set_IDT(u8 vector,u8 desc_type,void* handler)	//设置IDT
{
		GATE * p_gate=&idt[vector];
		u32		base=(u32)handler;
		p_gate->offset_low		=	base & 0xFFFF;
		p_gate->selector		=8;
		p_gate->dcount			=0;
		p_gate->attr				=desc_type;
		p_gate->offset_high	=(base>>16)&0xFFFF;
}

