/*         memory manage														*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.26  setup		  												*/
#include "type.h"
#include "const.h"
#include "protect.h"
#include "lib.h"
#include "time.h"
#include "mm.h"
#include "global.h"
/*****************��ʼ���ڴ�*****************/
void Init_Mem()
{
	int page;
	for(page=0;page<TMPPAGES;page++){		//�ڴ�0x0--0x20000
		tmp_page_table[page]=0;							//0��ʾδʹ��	
	}
	for(page=0;page<USERPAGES;page++){		//�ڴ�0x0--0x20000
		user_page_table[page]=0;							//0��ʾδʹ��	
	}
	tmp_page_table[0]=1;		//�����ַ0-0x400(��������ʵģʽ�µ��ж�������)
	tmp_page_table[1]=1;		//�����ַ0x400-0x1000(����TSS�е���Ȩ��0�µĶ�ջ)
	tmp_page_table[2]=1;
	tmp_page_table[3]=1;
}
/*****************�����û��ռ��ڴ�*****************/
u32 Malloc(u32 size)					
{
	int num,page,tmp;
	u32 address;
	if(size<1024)
		num=1;
	else if((size%1024)!=0){
		num=size/1024+1;
	}
	else 
		num=size/1024;
	for(page=0;page<USERPAGES;page++){
		if(user_page_table[page]==0){
			if(num==1){
				user_page_table[page]=1;							//���Ϊ1��ʾ��ʹ��
				break;
			}
			else{
				if((tmp=FreeNum(page,num))==num){		//���ҵ�����Ҫ��Ŀ�		
					while(tmp--){
						user_page_table[page+tmp]=1;
					}
					break;
				}	
				else
					page+=tmp;
			}
		}
	}
	address=page*PAGE;
	return address;
}
/*****************�����ں��ڴ�*****************/
u32 AllocateKernel(u32 size)					
{
	int num,page,tmp;
	u32 address;
	if(size<1024)
		num=1;
	else if((size%1024)!=0){
		num=size/1024+1;
	}
	else 
		num=size/1024;
	for(page=0;page<TMPPAGES;page++){
		if(tmp_page_table[page]==0){
			if(num==1){
				tmp_page_table[page]=1;							//���Ϊ1��ʾ��ʹ��
				break;
			}
			else{
				if((tmp=FreeNum(page,num))==num){		//���ҵ�����Ҫ��Ŀ�		
					while(tmp--){
						tmp_page_table[page+tmp]=1;
					}
					break;
				}	
				else
					page+=tmp;
			}
		}
	}
	address=page*PAGE;
	return address;
}
int FreeNum(int page,int num)								//�ж���Ҫ�����ͷŶ���ҳ				
{
	int tmp,freenum=1;
	for(tmp=page+1;tmp<TMPPAGES;tmp++){
		if((tmp_page_table[tmp]==0)&&(freenum!=num))
			freenum++;
		else{
			break;
		}
	}
	return freenum;
}
/*****************�ͷ��ں��ڴ�*****************/
void FreeKernel(void *var,u32 size)				
{
	int page,num;
	if(size<1024)
		num=1;
	else if((size%1024)!=0){
		num=size/1024+1;
	}
	else 
		num=size/1024;
	page=(u32)var/PAGE;
	while(num--){
		tmp_page_table[page+num]=0;					//�ͷ�
	}
}
/*****************�ͷ��û��ռ��ڴ�*****************/
void Free(void *var,u32 size)				
{
	int page,num;
	if(size<1024)
		num=1;
	else if((size%1024)!=0){
		num=size/1024+1;
	}
	else 
		num=size/1024;
	page=(u32)var/PAGE;
	while(num--){
		user_page_table[page+num]=0;					//�ͷ�
	}
}

