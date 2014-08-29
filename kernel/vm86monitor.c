/*         about vm86monitor													*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.3.18  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "time.h"
#include "global.h"
//�γ�32λ�ĵ�ַ��ֱ���Ƕ�*16+ƫ��
#define MAKE_FARPTR(seg,off)  ((u32)((((u32)(seg))<<4)+(u16)(off)))

#define FARPTR_SEG(fp) ((u16)((fp)>>16))
#define FARPTR_OFF(fp) ((u16)((fp)&0xFFFF))
#define FARPTR_TO_LINEAR(seg,off) ((void*)((((u16)(seg))>>4)+((u16)(off))))
u32 i386LinearToFp(void *ptr)
{
	u16 seg,off;
	off=(u32)ptr&0xF;
	seg=((u32)ptr-((u32)ptr&0xF))>>4;
	return MAKE_FARPTR(seg,off);
}

void A()
{
//	u8 *ip;
//	u16 *stack,*ivt;
//	ip=FARPTR_TO_LINEAR(ctx->cs,ctx->eip);
}
void Init_VM8086()
{
//	SET_EXCEPTION_GATE(13,(void *)GPF_VM86);		//��������GP���쳣������
}
//��ջ���������     ������,EIP,CS,EFLAGS,ESP,SS,ES,DS,FS,GS,ÿ����С4B
//point=������
int GPF_VM86(u32 point)				//not finished yet,������һ�ַ���
{
	u8 *tmp;
	u32 *stack32,*eip_vm86,*esp_vm86,*base32;
	u16 *stack16,*base16;
//	Restore_SegRegisters();			//ES,DS�ȼĴ�������գ��ָ�(0x10)
	stack32=&point;
//	base32=(u32*)0;
	base16=(u16*)0;
	//��ȡvm86���ж�ʱ��EIP�����Ե�ַ
	eip_vm86=(u32 *)MAKE_FARPTR(*(stack32+2),*(stack32+1));
	//��ȡvm86���ж�ʱ��ESP�����Ե�ַ
	esp_vm86=(u32 *)MAKE_FARPTR(*(stack32+5),*(stack32+4));
	stack16=(u16 *)esp_vm86;
//	Disp_Int(eip_vm86[0]);
	switch((u8)*eip_vm86){			//��ȡ��һopcode
		case 0xCD:
			disp_str("int");
			switch((u8)((u16)*eip_vm86>>8)){
//				case 0x10:
//					disp_str("10h");
//					break;
				default:
					disp_str("no=10h");
					*(stack32+4)=(*(stack32+4)-6)&0xFFFF;
					stack16-=3;
					*stack16=*stack32+2;
					*(stack16+1)=*(stack32+1);
					*(stack16+2)=*(stack32+2);
					tmp=(u8 *)eip_vm86;
					*(stack32+2)=base16[tmp[1]*2+1];
					*(stack32+1)=base16[tmp[1]*2];
					return 1;
					break;
			}
			break;
		default:
//			disp_str("no2");
			break;
	}
}



