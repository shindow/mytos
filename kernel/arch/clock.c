/*         about clock																*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.1.13  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "time.h"
#include "8259A.h"
#include "protect.h"
#include "global.h"
void Init_Clock()								
{
	char prev;
	disable_int(); 
	out_byte(0x70, 0x0B); 
	prev=in_byte(0x71); 
	out_byte(0x70, 0x0B); 
	out_byte(0x71, prev|0x40); 
	enable_int();
	Enable_IRQ(IRQ9);			//要确保开IRQ8前中断程序被关联上
	Enable_IRQ(IRQ0);
//	Disp_Int(in_byte(0xA1));
//	Disp_Int(in_byte(0x21));
}
void RTC_Handler()
{
	
}
void Show_Time()						//显示时间
{
	int tmp;
	u32 tmp_ticks;							
	int minisecond,second,minute,hour;
	int show_second,show_minute,show_hour;
	
	while(1){
		tmp_ticks=ticks;

		
		minisecond=tmp_ticks%60;
		tmp_ticks=tmp_ticks/60;
		second=tmp_ticks%60;
		tmp_ticks=tmp_ticks/60;
		minute=tmp_ticks%60;
		tmp_ticks=tmp_ticks/60;
		hour=tmp_ticks%24;

		show_second=second;
		show_minute=cur_time.minute+minute;
		show_hour=cur_time.hour+hour;
		if(show_second>59){
			show_minute++;
			show_second=0;
		}
		if(show_minute>59){
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
			show_second=0;
			show_minute=cur_time.minute;
			show_hour=cur_time.hour;
		}
		
	//显示鼠标坐标
//		disable_int();
		
		p_proc_ready->islocked=1;
		tmp=position;
		position=startposition+1950;
		disp_str("(");
		Disp_Int(mouse_x);	
		disp_str(",");
		Disp_Int(mouse_y);
		disp_str(",");
		Disp_Int(mouse_state);
		disp_str(")");

		Disp_Int(show_hour);
		disp_str(":");
		Disp_Int(show_minute);
		disp_str(":");
		Disp_Int(show_second);
		disp_str("  ");
		switch(cur_time.dayOfweek){
			case 1:
				disp_str("Sunday");
				break;
			case 2:
				disp_str("Monday");
				break;
			case 3:
				disp_str("Tuesday");
				break;
			case 4:
				disp_str("Wednesday");
				break;
			case 5:
				disp_str("Thursday");
				break;
			case 6:
				disp_str("Friday");
				break;
			case 7:
				disp_str("Saturday");
				break;
		}
		disp_str("  20");
		Disp_Int(cur_time.year);
		disp_str(".");
		Disp_Int(cur_time.month);
		disp_str(".");
		Disp_Int(cur_time.dateOfmonth);
		disp_str("     ");
	//	position=startposition+(mouse_y/10)*80+mouse_x/3;
	//	disp_str("@");
		position=tmp;
//		enable_int();
		p_proc_ready->islocked=0;
	}

}
void Update_Time()
{
	
}
void PIT_Handler()
{
	ticks++;
//	Update_Time();
	Scheduler();
	Send_EOI(IRQ0);							//发送EOI
}
void Set_PITFreq()
{
			
}
