/*         about mouse															*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.3.3  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "8259A.h"
#include "mouse.h"
#include "global.h"
void Init_Mouse()
{
	int status_byte; 
//鼠标初始化
	out_byte(0x64,0xA8);						//enable the auxiliary mouse device
	out_byte(0x64,0x20);						//modify "compaq status byte", 
	status_byte=(in_byte(0x60)|2);		//Enable IRQ12 
	out_byte(0x64, 0x60); 
	out_byte(0x60, status_byte); 
//鼠标设置
	out_byte(0x64, 0xD4);					//Tell the mouse we are sending a command 
	out_byte(0x60,0xF6);					//默认设置
	in_byte(0x60); 
	out_byte(0x64, 0xD4); 
	out_byte(0x60,0xF4);					//enable the mouse
	in_byte(0x60); 
	
	Enable_IRQ(IRQ12);	
}
void Mouse_Handler()					//鼠标中断处理程序
{
	u8 mousecode;
	mousecode=in_byte(0x60);
	while(mouse_package_regs--){
		switch(mouse_package_regs){
			case 0:
				mouse_package[mouse_package_regs]=mousecode;	//byte 2
				mouse_x=mouse_package[1];
				mouse_y=mouse_package[0];
				mouse_state=mouse_package[2];
				mouse_package_regs=3;
				break;
			case 1:
				mouse_package[mouse_package_regs]=mousecode;	//byte 1
				break;
			case 2:
				mouse_package[mouse_package_regs]=mousecode;	//byte 0
				break;
		}
		break;
	}
	Send_EOI(IRQ12);
}
