#ifndef _MM_H
#define _MM_H
/*
#define GETPDE(viraddr)	(viraddr>>22)							//�����Ե�ַȥPDE	
#define GETPTE(viraddr)	(((viraddr>>10)&0xFFF)>>2)	//�����Ե�ַȥPTE	
#define GETOFF(viraddr)	(viraddr&0xFFF)						//�����Ե�ַȥƫ��	
#define BEGINUSERSPACE				0x1400						//ҳ����1M�ڴ濪ʼ����ʼҳ��
#define ENDUSERSPACE					0x5000
#define BEGINKERNELSPACE			0x1000
#define USERPAGES							((ENDUSERSPACE-BEGINUSERSPACE)/4)
#define KERNELPAGES					((BEGINUSERSPACE-BEGINKERNELSPACE)/4)
#define PAGE										4096
*/
#define PAGE										1024
#define TMPPAGES							128							//��0x0--0x19000
#define USERPAGES							15360						//0x100000-15*0x100000
#endif
