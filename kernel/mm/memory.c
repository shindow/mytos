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
/*****************初始化内存*****************/
void Init_Mem()
{
	int page;
	for(page=0;page<TMPPAGES;page++){		//内存0x0--0x20000
		tmp_page_table[page]=0;							//0表示未使用	
	}
	for(page=0;page<USERPAGES;page++){		//内存0x0--0x20000
		user_page_table[page]=0;							//0表示未使用	
	}
	tmp_page_table[0]=1;		//物理地址0-0x400(用来保存实模式下的中断向量表)
	tmp_page_table[1]=1;		//物理地址0x400-0x1000(用于TSS中的特权级0下的堆栈)
	tmp_page_table[2]=1;
	tmp_page_table[3]=1;
}
/*****************申请用户空间内存*****************/
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
				user_page_table[page]=1;							//标记为1表示已使用
				break;
			}
			else{
				if((tmp=FreeNum(page,num))==num){		//已找到符合要求的块		
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
/*****************申请内核内存*****************/
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
				tmp_page_table[page]=1;							//标记为1表示已使用
				break;
			}
			else{
				if((tmp=FreeNum(page,num))==num){		//已找到符合要求的块		
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
int FreeNum(int page,int num)								//判断需要连续释放多少页				
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
/*****************释放内核内存*****************/
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
		tmp_page_table[page+num]=0;					//释放
	}
}
/*****************释放用户空间内存*****************/
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
		user_page_table[page+num]=0;					//释放
	}
}

