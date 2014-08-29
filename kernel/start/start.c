/*         starting(c enviornment)											*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.1.23  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "protect.h"
#include "global.h"

void cinit()
{
	ticks=0;
	position=800;
	startposition=0;
	mouse_x=0;
	mouse_y=0;
	mouse_state=0;
	NR_user=0;
	NR_task=0;
	Disp_Machine_Info();
//	Init_Paging();
	Init_Mem();
	disp_str("Initializing Memory........\n");
	Init_IRQ();	
	disp_str("Enable IRQ........\n");
	Init_Prot();
	disp_str("Enable protection........\n");
	Init_Mouse();
	Init_Keyboard();
	disp_str("Enable Keyboard........\n");
	Init_Process();
	disp_str("Initializing Process........\n");
	Init_Clock();
	disp_str("Enable PIT........\n");
	Init_x87_FPU();
	Update_Cursor(position);
	Init_VM8086();
//	Init_Ne2k();

}


