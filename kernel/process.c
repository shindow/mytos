/*         about clock																*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.21  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "time.h"
#include "8259A.h"
#include "protect.h"
#include "process.h"
#include "global.h"
void Init_Process()
{
	int num;
//进程初始化===============================
	PROCESS *p_proc=proc_table;
	p_proc_ready=proc_table;

	p_proc->registers.eip=(u32)TTY_Task;
	p_proc->registers.cs=0x31;
	p_proc->registers.ds=0x39;
	p_proc->registers.es=0x39;
	p_proc->registers.gs=0x39;
	p_proc->registers.fs=0x39;
	p_proc->registers.ss=0x39;
	p_proc->registers.flag=0x1202;
	p_proc->registers.esp=AllocateKernel(PAGE)+PAGE;
	p_proc->registers.esp_tmp=p_proc->registers.esp;
	p_proc->registers.isload=0;
	p_proc->blocked=0;
	p_proc->notused=0;
	p_proc->islocked=0;
	NR_task++;
	p_proc++;

	p_proc->registers.eip=(u32)TestA;
	p_proc->registers.cs=0x1B;
	p_proc->registers.ds=0x23;
	p_proc->registers.es=0x23;
	p_proc->registers.gs=0x23;
	p_proc->registers.fs=0x23;
	p_proc->registers.ss=0x23;
	p_proc->registers.flag=0x202;
	p_proc->registers.esp_tmp=p_proc->registers.esp=AllocateKernel(PAGE)+PAGE;
	p_proc->registers.isload=0;
	p_proc->blocked=0;
	p_proc->notused=0;
	p_proc->islocked=0;
	NR_user++;

/*	p_proc++;
	p_proc->registers.eip=(u32)VM86Init;
	p_proc->registers.cs=0x8;
	p_proc->registers.ds=0x10;
	p_proc->registers.es=0x10;
	p_proc->registers.gs=0x10;
	p_proc->registers.fs=0x10;
	p_proc->registers.ss=0x10;
	p_proc->registers.esp_tmp=p_proc->registers.esp=AllocateKernel(PAGE)+PAGE;
	p_proc->registers.isload=0;
	p_proc->blocked=0;
	p_proc->notused=0;
	p_proc++;
	NR_task++;


	p_proc->registers.eip=(u32)TestB;
	p_proc->registers.cs=0x1B;
	p_proc->registers.ds=0x23;
	p_proc->registers.es=0x23;
	p_proc->registers.ss=0x23;
	p_proc->registers.gs=0x23;
	p_proc->registers.fs=0x23;
	p_proc->registers.flag=0x202;
	p_proc->registers.esp_tmp=p_proc->registers.esp=AllocateKernel(PAGE)+PAGE;
	p_proc->registers.isload=0;
	p_proc->blocked=0;
	p_proc->notused=0;
	NR_user++;
*/	

//===================================
	IsProcChanged=0;

}
//=================进程调度
void Scheduler()
{
	p_proc_ready->registers.isload=1;
	if(p_proc_ready->islocked==1)
		return ;
	p_proc_save=p_proc_ready;								//被保存的进程
	if((p_proc_ready-proc_table)==NR_user+NR_task-1){
		p_proc_ready=proc_table;	
	}
	else{
		p_proc_ready++;
	}
	if(p_proc_ready->blocked==1)
			Scheduler();
	if(p_proc_ready->notused==1)
			Scheduler();
	IsProcChanged=1;
}
//=================创建进程,返回0,创建失败,返回1,创建成功
int Create_Proc(u32 Func,int type)				
{
	int useAgain=0;
	PROCESS *p_proc=proc_table;
	for(;(p_proc-proc_table)<NR_task+NR_user-1;p_proc++){
		if(p_proc->notused){
			useAgain=1;
			break;
		}
	}
	if(!useAgain){			//需要增加进程
		p_proc++;
		if((type==TASK)||(type==KERNEL))
			NR_task++;
		else if(type==USER)
			NR_user++;
		else
			return 0;								
	}
//====p_proc选定后：	
	if(type==TASK){
		p_proc->registers.cs=0x31;
		p_proc->registers.ds=0x39;
		p_proc->registers.es=0x39;
		p_proc->registers.gs=0x39;
		p_proc->registers.fs=0x39;
		p_proc->registers.ss=0x39;
		p_proc->registers.flag=0x1202;		
		p_proc->registers.esp_tmp=p_proc->registers.esp=AllocateKernel(PAGE)+PAGE;
	}
	else if(type==USER){
		p_proc->registers.cs=0x1B;
		p_proc->registers.ds=0x23;
		p_proc->registers.es=0x23;
		p_proc->registers.gs=0x23;
		p_proc->registers.fs=0x23;
		p_proc->registers.ss=0x23;
		p_proc->registers.flag=0x202;	
		p_proc->registers.esp_tmp=p_proc->registers.esp=Malloc(4*PAGE)+4*PAGE;
	}
	else if(type==KERNEL){
		p_proc->registers.cs=0x8;
		p_proc->registers.ds=0x10;
		p_proc->registers.es=0x10;
		p_proc->registers.gs=0x10;
		p_proc->registers.fs=0x10;
		p_proc->registers.ss=0x10;
		p_proc->registers.esp_tmp=p_proc->registers.esp=AllocateKernel(PAGE)+PAGE;	
	}

	else
		return 0;
	p_proc->registers.eip=(u32)Func;
	p_proc->registers.isload=0;
	p_proc->blocked=0;
	p_proc->notused=0;
	p_proc->islocked=0;
	return 1;                      
}
int Delete_Proc(PROCESS *p_proc)		//删除进程
{	
	PROCESS *p_tmp=proc_table;
	for(;(p_tmp-proc_table)<NR_task+NR_user-1;p_tmp++){
		if(p_tmp==p_proc){
			p_proc->notused=1;
			return 1;
		}
	}
	return 0;
}
int Block_Porc(PROCESS *p_proc)		//阻塞进程
{
	PROCESS *p_tmp=proc_table;
	for(;(p_tmp-proc_table)<NR_task+NR_user-1;p_tmp++){
		if(p_tmp==p_proc){
			p_proc->blocked=1;
			return 1;
		}
	}
	return 0;
}
