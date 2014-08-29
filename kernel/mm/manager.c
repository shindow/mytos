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
/*u32 malloc(u32 size)
{
	int num,page,tmp,flag=0;
	if(size<PAGE){
		num=1;
	}
	else if((size%PAGE)!=0){
		num=size/PAGE+1;
	}
	else
		num=size/PAGE;
	for(page=KERNELPAGES;page<USERPAGES+KERNELPAGES;page++){
		if(page_table[page]==0){			//未使用的页
			if(num==(tmp=freenum(page,num))){
				while(num--){
					page_table[page+num]=1;
				}
				flag=1;
				break;
			}
			else{
				page+=tmp;
			}
		}
	}
	if(flag){			//分配成功
		return (0x100000+(page-KERNELPAGES-1)*0x1000);		//返回相应页的线性地址				
	}
	else{
		disp_str("malloc failure");	
		return 0x100000;
	}

}
*/
/*int FreeNum(int page,int num,int *table)				//计算连续空闲页
{
	int tmp,getnum=1;
	for(tmp=page+1;page<USERPAGES+KERNELPAGES;page++){
		if(table[page]==0&&num!=getnum)
			getnum++;
		else
			break;
	}
	return getnum;
}
*/
/*
u32 AllocateTmp(u32 size)						//只在内核中使用
{
	int num,page;
	u32 address=0;
	for(num=0;num<5;num++)
		page=num;
/*	if(size<PAGE){
		num=1;
	}
	else if((size%PAGE)!=0){
		num=size/PAGE+1;
	}
	else
		num=size/PAGE;
*/
	
/*	for(page=0;page<TMPPAGES;page++){
		if(tmp_table[page]==0){
			if(num==1)
				tmp_table[page]=1;
			address=(u32)*(void*)(0x1000);
			break;
			FreeNum(page,num,tmp_table);
		}
	}

	return address;
}
void FreeTmp(u32 addr)							//只在内核中使用
{
	
}
*/