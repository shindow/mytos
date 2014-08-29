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
//======================����ģʽ==============================
#define vir2phys(seg_base,vir)  (u32)((((u32)seg_base)+(u32)(vir))
#define D_DPL0		0x00
#define D_DPL1		0x20
#define D_DPL2		0x40
#define D_DPL3		0x60
#define D_RPL0		0
#define D_RPL1		1
#define D_RPL2		2
#define D_RPL3		3
//Sλ��ָ�������ݶ�/�����������,����ϵͳ��/��������
#define D_S_DC		0x10		//���ݶ�/�����������
#define D_S_SG		0x00		//ϵͳ��/��������

//Pλ���Ƿ����ڴ���
#define D_P_T		 0x80			//��
#define D_P_F		 0x00			//����
/**************************Typeλ������������**************************/
//---------------1.���ݶλ�����������---------------
//        D-Descriptor(������),R-Read(��),W-Write(д),D-Down(������չ)
//        V-Visited(�ѷ���),E-Execute(ִ��),C-Consensus(һֱ���)
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
//---------------2.ϵͳ�κ���������---------------
//	B-Busy,C-CallGate,T-TrapGate,T-TaskGate,I-InterruptGate
#define D_T_286TSS		0x1			//����286TSS
#define D_T_LDT			0x2			//LDT
#define D_T_B286TSS	0x3			//æ��286TSS
#define D_T_286C			0x4			//286������
#define D_T_T				0x5			//������
#define D_T_286I			0x6			//286�ж���
#define D_T_286T			0x7			//286������

#define D_T_386TSS		0x9			//����386TSS

#define D_T_B386TSS	0xB			//æ��386TSS
#define D_T_386C			0xC			//386������

#define D_T_386I			0xE			//386�ж���
#define D_T_386T			0xF			//386������
//===========================================================
//Gλ���ν��޿���
#define D_G1B				0
#define D_G4K				1
//************************************��������չ(����)*********************************
// �洢��(����κ����ݶ�)����������ֵ˵��
#define DA_D_R				D_P_T+D_S_DC+D_T_R			// ���ڵ�ֻ�����ݶ�����ֵ
#define DA_D_RW			D_P_T+D_S_DC+D_T_RW		// ���ڵĿɶ�д���ݶ�����ֵ
#define DA_D_RWA		D_P_T+D_S_DC+D_T_RWV		// ���ڵ��ѷ��ʿɶ�д���ݶ�����ֵ
#define DA_C_E				D_P_T+D_S_DC+D_T_E			// ���ڵ�ִֻ�д��������ֵ
#define DA_C_ER			D_P_T+D_S_DC+D_T_ER		// ���ڵĿ�ִ�пɶ����������ֵ
#define DA_C_EC			D_P_T+D_S_DC+D_T_EC		// ���ڵ�ִֻ��һ�´��������ֵ
#define DA_C_ERC		D_P_T+D_S_DC+D_T_ERC		// ���ڵĿ�ִ�пɶ�һ�´��������ֵ


//ϵͳ������������ֵ˵��
#define DA_LDT					D_P_T+D_T_LDT		// �ֲ��������������ֵ(LDT)
#define DA_TaskGate		D_P_T+D_T_T			// ����������ֵ
#define DA_386TSS			D_P_T+D_T_386TSS	// ���� 386 ����״̬������ֵ
#define DA_386CGate		D_P_T+D_T_386C		//386 ����������ֵ
#define DA_386IGate			D_P_T+D_T_386I		//386 �ж�������ֵ
#define DA_386TGate		D_P_T+D_T_386T		// 386 ����������ֵ

#define DA_32C								0x4000				//32λ�����
#endif
