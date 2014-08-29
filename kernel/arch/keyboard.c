/*         about keyboard														*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.18  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "8259A.h"
#include "tty.h"
#include "keyboard.h"
#include "global.h"
void Init_Keyboard()
{
	//初始化kbd_buf全局变量
	kbd_buf.count=0;
	kbd_buf.p_tail=kbd_buf.p_head=kbd_buf.buf;
	//开键盘中断
	Enable_IRQ(IRQ1);
}
void Keyboard_Handler()
{
	u32 input=in_byte(0x60);
	Input_Deal(input);
	Send_EOI(IRQ1);
}



