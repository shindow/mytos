/*         about 8259A															*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.3  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "8259A.h"
void Init_IRQ(void)			//初始化8259
{
	out_byte(0x20,0x11);
	out_byte(0xA0,0x11);
	out_byte(0x21,0x20);	//重新映射PIC1和PIC2到0x20，0x28
	out_byte(0xA1,0x28);
	out_byte(0x21,0x4);
	out_byte(0xA1,0x2);
	out_byte(0x21,0x1);
	out_byte(0xA1,0x1);
	out_byte(0x21,0xFB);	//屏蔽主片的所有引脚中断，除了引脚2
	out_byte(0xA1,0xFF); //屏蔽从片的所有引脚中断
}
void Exit_IRQ(void)
{

}
void Restore_IRQ(void)
{
	
}
void Enable_IRQ(int irq) //开启中断引脚
{
	if(irq<0||irq>15)
		return ;
   if(irq>=8)			//		slave
		out_byte(0xA1,(~(0x1<<(irq-8)))&in_byte(0xA1));
	else					//		master
		out_byte(0x21,(~(0x1<<irq))&in_byte(0x21));
		
}
void Disable_IRQ(int irq) //关闭中断引脚
{
	if(irq<0||irq>15)
		return ;
    if(irq>=8)								//		slave
		out_byte(0xA1,(0x1<<(irq-8))|in_byte(0xA1));
	else										//		master
		out_byte(0x21,(0x1<<irq)|in_byte(0x21));
}
void Send_EOI(int irq)			//发送EOI信号
{
	if(irq>=8)
		out_byte(0xA0,0x20);
	out_byte(0x20,0x20);
}










