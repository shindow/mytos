/*         about exception 														*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.7  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "protect.h"
#include "global.h"
void Exception_Handler(int vector)		//"中断服务程序"(0-31)
{
	if(vector>16)
		disp_str("!@#$%^&*()_+");				
	else
		Disp_Exception_Info(vector);
}
void Disp_Exception_Info(int vector)
{
	int tmp=position;
	char* excep_info[]={"Exception:0","Exception:1","Exception:2","Exception:3"
									 ,"Exception:4","Exception:5","Exception:6","Exception:7"
									 ,"Exception:8","Exception:9","Exception:10","Exception:11"
									 ,"Exception:12","Exception:13","Exception:14","Exception:16"
									};
	position=986;
	disp_str("******");
	disp_str(*(excep_info+vector));
	disp_str("******");
	position=tmp;
}


