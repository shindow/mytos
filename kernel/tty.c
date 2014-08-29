/*         about tty															*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.3.1  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "8259A.h"
#include "keymap.h"
#include "keyboard.h"
#include "global.h"
void Input_Deal(u32 input)
{
	*(kbd_buf.p_head++)=input;
	if(kbd_buf.p_head-kbd_buf.buf==32){
		kbd_buf.p_head=kbd_buf.buf;
	}
}
void Output_Deal()
{
	char output[2];
	u8 shift_state=0;
	u32 scancode;
	output[1]=0;
	while(1){
		while(kbd_buf.p_tail!=kbd_buf.p_head){			//获取键盘缓冲区里的每个字符
			scancode=*(kbd_buf.p_tail++);
			if(kbd_buf.p_tail-kbd_buf.buf==32){
				kbd_buf.p_tail=kbd_buf.buf;
			}
			switch(scancode){
				case 0x2A:					//shift_left
					shift_state=(~shift_state)&0x1;
					break;
				case 0x36:					//shift_right
					shift_state=(~shift_state)&0x1;
					break;	
				case 0x3A:					//caps_lock
					shift_state=(~shift_state)&0x1;
					break;
				case 0x48:					//up
						Screen_Up();
					break;
				case 0x50:					//down
						Screen_Down();
					break;
				case 0x1C:					//enter
						Entern();	
					break;
				case 0x0E:					//backspace
						position--;
						Update_Cursor(position);
						disp_str(" ");	
						position--;
					break;
				default:
					if(scancode&0x80){
						if(scancode==0xaa||scancode==0xb6)		//shift键放开后复位shift_state
							shift_state=(~shift_state)&0x1;
						break;	
					}
					if(shift_state==1)
						output[0]=keymap[scancode*MAP_COLS+1];
					else
						output[0]=keymap[scancode*MAP_COLS];
					disp_str(output);
					Update_Cursor(position);
					break;
			}
		}
	}		
}
void TTY_Task()
{
	Output_Deal();
}
void Update_Cursor(int position)
{
	out_byte(0x3D4,0x0F);			//high
	out_byte(0x3D5,position&0xFF);
	out_byte(0x3D4,0x0E);			//low
	out_byte(0x3D5,(position>>8)&0xFF);
}
void Screen_Down()							//下一行
{
	disable_int();
	Clear_Screen(80*24,80);
	startposition+=80;
	out_byte(0x3D4,0x0C);	//high
	out_byte(0x3D5,(startposition>>8)&0xFF);
	out_byte(0x3D4,0x0D);   //low
	out_byte(0x3D5,startposition&0xFF);	
	enable_int();
}
void Screen_Up()								//上一行
{
	if(startposition>=80){
		disable_int();
		Clear_Screen(80*24,80);
		startposition-=80;
		out_byte(0x3D4,0x0C);	//high
		out_byte(0x3D5,(startposition>>8)&0xFF);
		out_byte(0x3D4,0x0D);   //low
		out_byte(0x3D5,startposition&0xFF);	
		enable_int();
	}
}
void Entern()					//回车
{
	int tmp=position-startposition;
	if(!tmp){
		position+=80;
		Update_Cursor(position);
	}
	else if((tmp%80)){
		position+=80-tmp%80;
		Update_Cursor(position);
	}
	else{
		position+=80;
		Update_Cursor(position);
	}
	if(tmp/80==23){
		Screen_Down();
	}
}
