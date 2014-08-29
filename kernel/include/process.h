#ifndef _PROCESS_H
#define _PROCESS_H
typedef struct tss
{
	u32 back;
	u32 esp0;
	u32 ss0;
	u32 esp1;
	u32 ss1;
	u32 esp2;
	u32 ss2;
	u32 cr3;
	u32 eip;
	u32 eflags;
	u32 eax;
	u32 ecx;
	u32 edx;
	u32 ebx;
	u32 esp;
	u32 ebp;
	u32 esi;
	u32 edi;
	u32 es;
	u32 cs;
	u32 ss;
	u32 ds;
	u32 fs;
	u32 gs;
	u32 ldt;
	u16 trap;
	u16 iobm;
}TSS;
typedef struct regs
{
	u32 gs;
	u32 fs;
	u32 es;
	u32 ds;

	u32 edi;
	u32 esi;
	u32 ebp;
	u32 esp;
	u32 ebx;	
	u32 edx;
	u32 ecx;
	u32 eax;

	u32 eip;
	u32 cs;
	u32 flag;
	u32 esp_tmp;
	u32 ss;
	u32 isload;
	
}REGS;
typedef struct process
{
	REGS registers;
	char name[20];
	int type;							//1--task,3--user
	int blocked;
	int islocked;
	int notused;						//当删除进程时改标志位置位
	int pid;
}PROCESS;
typedef struct vmm_registers			//vm86发生GPF时会压入的东西
{
	u32 eip,cs,eflags,esp;
	u32 ss,es,ds,fs,gs;
}VMM_REGISTERS;
u32		  NR_user;
u32		  NR_task;
#define NR_USER			 32
#define NR_TASK			 16
#define NR_PROCESS	(NR_USER+NR_TASK)
#define USER				3
#define TASK				1
#define KERNEL		0
#endif
