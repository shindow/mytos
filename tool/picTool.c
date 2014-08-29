/*			用于图形处理															*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.5		  															*/
#include "stdio.h"
#include "stdlib.h"
#define BUFSIZE 12000
int main()
{
	FILE *fp_read,*fp_write;
	int size;
	char buf[BUFSIZE],tmp[BUFSIZE],*p,*q;
	p=buf;
	q=tmp;
	if((fp_read=fopen("pic.txt","r"))==NULL){
		printf("cannot open file!\n");
		exit(-1);
	}
	fseek(fp_read,0,SEEK_END);
	size=ftell(fp_read);				
	rewind(fp_read);					//读取文件大小
	fread(q,1,size,fp_read);
	while(size--){
		if(*q==0xD){
			q+=2;
			size--;
		}
		else{
			if(*q==0x2A){
				*(p++)=0x20;
				q++;
			}
			else if(*q==0x20){
				*(p++)=0x2A;
				q++;
			}
			else
				*(p++)=*(q++);
			
		}
	}
	size=p-buf;
	p=buf;
	if((fp_write=fopen("../OBJ/pic.bin","w"))==NULL){
		printf("cannot create file!\n");
		exit(-1);
	}
	fwrite(p,1,size,fp_write);
	fclose(fp_read);
	fclose(fp_write);
	return 0;
}
