/*         about machine info													*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.1.9  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "protect.h"
#include "time.h"
#include "global.h"
void Disp_Machine_Info()	//显示机器相关信息
{
//	Disp_Memory();
	Disp_Floppy();
	Disp_Time();
}
void Disp_Memory()			//显示内存信息
{
	u8 i;
	disable_int();
	out_byte(0x70,0x15);		//base memory ,low byte
	i=in_byte(0x71);
	Disp_Int(i);
	disp_str("\n");
	out_byte(0x70,16);
	i=in_byte(0x71);
	Disp_Int(i);
										//base memory,high byte
	enable_int();
}
void Disp_Time()
{
	out_byte(0x70,9);											//year
	cur_time.year=BcdToHex(in_byte(0x71));
	out_byte(0x70,8);											//month
	cur_time.month=BcdToHex(in_byte(0x71));
	out_byte(0x70,7);											//date of moth
	cur_time.dateOfmonth=BcdToHex(in_byte(0x71));
	out_byte(0x70,6);											//day of week
	cur_time.dayOfweek=BcdToHex(in_byte(0x71));
	out_byte(0x70,4);											//hour
	cur_time.hour=BcdToHex(in_byte(0x71));
	out_byte(0x70,2);											//minute
	cur_time.minute=BcdToHex(in_byte(0x71));
	out_byte(0x70,0);											//second
	cur_time.second=BcdToHex(in_byte(0x71));
	cur_time.minisecond=0;
	disp_str("Now it is:");
	Disp_Int(cur_time.hour);
	disp_str(":");
	Disp_Int(cur_time.minute);
	disp_str(":");
	Disp_Int(cur_time.second);
	disp_str("  ");
	disp_str("20");
	Disp_Int(cur_time.year);
	disp_str(".");
	Disp_Int(cur_time.month);
	disp_str(".");
	Disp_Int(cur_time.dateOfmonth);
	disp_str("\n");
}
void Disp_Floppy()				//显示软驱信息
{
	u8 value;
	disp_str("Floppy information:");
	out_byte(0x70,0x10);
	value=in_byte(0x71);
	switch((value>>4)&0xF){
		case 0:
			disp_str("No drive!\n");
			break;
		case 1:
			disp_str("size--360k\n");
			break;
		case 2:
			disp_str("size--120k\n");
			break;
		case 3:
			disp_str("size--720K\n");
			break;
		case 4:
			disp_str("size--1.44M\n");
			break;
	}
}
