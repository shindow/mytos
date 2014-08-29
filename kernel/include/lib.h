#ifndef _LIB_H
#define _LIB_H
#include "protect.h"
#include "process.h"
#define BcdToHex(bcd)  ((((bcd)>>4)&0xF)*10+(bcd&0xF))
#define SET_INTR_GATE(vector,handler)  Set_IDT(vector,DA_386IGate,handler)
#define SET_EXCEPTION_GATE(vector, handler)  Set_IDT(vector,DA_386TGate,handler)
//for c
	//for 8259.c
		void Init_IRQ();
		void Enable_IRQ(int irq);
		void Disable_IRQ(int irq);
		void Send_EOI(int irq);
	//for clib.c
		//void disp_str(int startpos,char *str);
		int Reverse(int num);
		void Disp_Int(int num);
		void IntToString(int num,char  *str);
		int StrLen(char* str);
		int Numbers(int num);
		void Delay();
		void Clear_Screen(int start,int length);
		int Absolute(int num);
	//for machine.c
		void Disp_Memory();
		void Disp_Machine_Info();
		void Disp_Floppy()	;
		void Disp_Time();
	//for keyboard.c
		void Init_Keyboard();
	//for clock.c
		void Init_Clock();
		void Update_Time();
		void PIT_Handler();
		void Show_Time();
	//for exception.c
		void Exception_Handler(int vector);
		void Disp_Exception_Info(int vector);
	//for paging.c
		void Init_Paging();
		void Init_KernelTmp();
	//for memory.c
		void Init_Mem();
		int FreeNum(int page,int num);
		void FreeKernel(void *var,u32 size);
		u32 AllocateKernel(u32 size);
		void Free(void *var,u32 size)	;
		u32 Malloc(u32 size);
	//for main.c
		void TestA();
		void TestB();
	//for process.c
		void Init_Process();
		void Scheduler();
		int Block_Porc(PROCESS *p_proc);
		int Delete_Proc(PROCESS *p_proc);
		int Create_Proc(u32 Func,int type);
	//for tty.c
		void Input_Deal();
		void TTY_Task();
		void Output_Deal();
		void Update_Cursor(int position);
		void Screen_Down();
		void Screen_Up();
		void Entern();
	//for mouse.c
	void Init_Mouse();
	void Mouse_Handler();
	//for ne2k_driver.c
	void Init_Ne2k();
	//for vm86monitor.c
	int GPF_VM86(u32 point);
	void Init_VM8086();
	//for picture.c
	void Draw_Line(int startX,int startY,int endX,int endY,int color);
	void Draw_Rectangle(int startX,int startY,int side1,int side2,int color);
	void Draw_Pixel(int x,int y,int color);
	int IsInPic(int x,int y);
	void Draw_Triangle(int P0x,int P0y,int P1x,int P1y,int P2x,int P2y,int color);
	void Draw_Circle(int X0,int Y0,int r,int color);
	void Circle_Points(int x,int y,int X0,int Y0,int color);
	//for x87_fpu.c
	void Init_x87_FPU();
//for asm
	void Setup_x87_FPU();
	void clear_pixel(int x,int y);
	void set_pixel(int x,int y,int color);
	void disp_str(char *str);
	void disable_int();
	void enable_int();
	void out_byte(u16 port,u8 value);
	u8	in_byte(u16 port);
	void mem_cpy(u32 dest,u32 source,u32 size);
	void allow_paging();
	void mem_set(u32 addr,u32 len,int value);
	void VM86Init();
	void ReturnText();
	void Restore_SegRegisters();
#endif
