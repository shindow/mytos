#ifndef _PROTECT_H
#define _PROTECT_H
typedef struct descriptor
{
	u16		limit_low;
	u16		base_low;
	u8		base_mid;
	u8		attr1;
	u8		limit_high_attr2;
	u8		base_high;
}DESCRIPTOR;
typedef struct gate
{
	u16		offset_low;
	u16		selector;
	u8		dcount;
	u8		attr;
	u16		offset_high;
}GATE;
void _EXCEPTION0();
void _EXCEPTION1();
void _EXCEPTION2();
void _EXCEPTION3();
void _EXCEPTION4();
void _EXCEPTION5();
void _EXCEPTION6();
void _EXCEPTION7();
void _EXCEPTION8();
void _EXCEPTION9();
void _EXCEPTION10();
void _EXCEPTION11();
void _EXCEPTION12();
void _EXCEPTION13();
void _EXCEPTION14();
void _EXCEPTION16();
void _EXCEPTION17();
void _EXCEPTION18();
void _EXCEPTION19();
void _EXCEPTION30();


void _IRQ0();
void _IRQ1();
void _IRQ2();
void _IRQ3();
void _IRQ4();
void _IRQ5();
void _IRQ6();
void _IRQ7();
void _IRQ8();
void _IRQ9();
void _IRQ10();
void _IRQ11();
void _IRQ12();
void _IRQ13();
void _IRQ14();
void _IRQ15();


int Install_Int(int InitNum,u32 HandlerAddress);
void Init_Prot();
void Remove_Int(int IntNum);
void Set_IDT(u8 vector,u8 desc_type,void* handler);
//======================保护模式==============================
#define vir2phys(seg_base,vir)  (u32)((((u32)seg_base)+(u32)(vir))
#define D_DPL0		0x00
#define D_DPL1		0x20
#define D_DPL2		0x40
#define D_DPL3		0x60
#define D_RPL0		0
#define D_RPL1		1
#define D_RPL2		2
#define D_RPL3		3
//S位，指明是数据段/代码段描述符,还是系统段/门描述符
#define D_S_DC		0x10		//数据段/代码段描述符
#define D_S_SG		0x00		//系统段/门描述符

//P位，是否在内存中
#define D_P_T		 0x80			//在
#define D_P_F		 0x00			//不在
/**************************Type位，描述符类型**************************/
//---------------1.数据段或代码段描述符---------------
//        D-Descriptor(描述符),R-Read(读),W-Write(写),D-Down(向下扩展)
//        V-Visited(已访问),E-Execute(执行),C-Consensus(一直码段)
#define D_T_R				0x0		//0
#define D_T_RV				0x1		//1
#define D_T_RW			0x2		//2
#define D_T_RWV			0x3		//3
#define D_T_RD				0x4		//4
#define D_T_RDV			0x5		//5
#define D_T_RWD			0x6		//6		
#define D_T_RWDV		0x7		//7
#define D_T_E				0x8		//8
#define D_T_EV				0x9		//9
#define D_T_ER				0xA		//a
#define D_T_ERV			0xB		//b
#define D_T_EC				0xC		//c		
#define D_T_ECV			0xD		//e
#define D_T_ERC			0xE		//d
#define D_T_ERCV	 	0xF		//f
//---------------2.系统段和门描述符---------------
//	B-Busy,C-CallGate,T-TrapGate,T-TaskGate,I-InterruptGate
#define D_T_286TSS		0x1			//可用286TSS
#define D_T_LDT			0x2			//LDT
#define D_T_B286TSS	0x3			//忙的286TSS
#define D_T_286C			0x4			//286调用门
#define D_T_T				0x5			//任务门
#define D_T_286I			0x6			//286中断门
#define D_T_286T			0x7			//286陷阱门

#define D_T_386TSS		0x9			//可用386TSS

#define D_T_B386TSS	0xB			//忙的386TSS
#define D_T_386C			0xC			//386调用门

#define D_T_386I			0xE			//386中断门
#define D_T_386T			0xF			//386陷阱门
//===========================================================
//G位，段界限颗粒
#define D_G1B				0
#define D_G4K				1
//************************************段属性扩展(二级)*********************************
// 存储段(代码段和数据段)描述符类型值说明
#define DA_D_R				D_P_T+D_S_DC+D_T_R			// 存在的只读数据段类型值
#define DA_D_RW			D_P_T+D_S_DC+D_T_RW		// 存在的可读写数据段属性值
#define DA_D_RWA		D_P_T+D_S_DC+D_T_RWV		// 存在的已访问可读写数据段类型值
#define DA_C_E				D_P_T+D_S_DC+D_T_E			// 存在的只执行代码段属性值
#define DA_C_ER			D_P_T+D_S_DC+D_T_ER		// 存在的可执行可读代码段属性值
#define DA_C_EC			D_P_T+D_S_DC+D_T_EC		// 存在的只执行一致代码段属性值
#define DA_C_ERC		D_P_T+D_S_DC+D_T_ERC		// 存在的可执行可读一致代码段属性值


//系统段描述符类型值说明
#define DA_LDT					D_P_T+D_T_LDT		// 局部描述符表段类型值(LDT)
#define DA_TaskGate		D_P_T+D_T_T			// 任务门类型值
#define DA_386TSS			D_P_T+D_T_386TSS	// 可用 386 任务状态段类型值
#define DA_386CGate		D_P_T+D_T_386C		//386 调用门类型值
#define DA_386IGate			D_P_T+D_T_386I		//386 中断门类型值
#define DA_386TGate		D_P_T+D_T_386T		// 386 陷阱门类型值

#define DA_32C								0x4000				//32位代码段
#endif
