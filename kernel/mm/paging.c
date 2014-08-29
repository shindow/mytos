/*         paging and memory manage									*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.23  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "time.h"
#include "mm.h"
#include "global.h"
void Init_Paging()
{
	allow_paging();	
	Init_KernelTmp();
}
void Init_KernelTmp()
{
/*	int i=TMPPAGES;
	while(i--){
		tmp_table[i]=0;			//0表示未使用
	}
*/
}
