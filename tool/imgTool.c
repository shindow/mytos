/*         ���̾��񹤾�															*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			version 0.5	,2010.2.11		  									*/
#include <stdio.h>
#include <stdlib.h>
#include "imgTool.h"
//======================================
int main(void)
{
	FILE *fp_data,*fp_img;
	char buffer[BUFFERSIZE];
	char tmp_char,*p,*p_img,*p_buffer;
	int fileLength=0,i,fileSize,sector,file_num,start_sec=0,first_sec=1;
	SFS_HEAD* head;
	SFS* p_sfs;
	p_buffer=buffer;
//��ʼ��������
	for(i=0;i<BUFFERSIZE;i++){
		*(p_buffer+i)=0;
	}				
//���������ļ���Ȼ��������ļ���ӡ����
	head=sfs_parse("../configure/file.sfs");
	
	printf("==============================================================\n||  There are %d files in all~~~                              ||\n",head->file_num);
	if((p_sfs=head->header)==NULL)
		printf("No file\n");
	else{
		while(p_sfs!=NULL){
			printf("||      Name:%-14s   ",p_sfs->name);
			printf("Path:%-20s      ||\n",p_sfs->path);
			p_sfs=p_sfs->next;
		}
	}
	printf("==============================================================\nReading Processing:\n");
	file_num=head->file_num;
	p_sfs=head->header;
	while(file_num--){
		fp_data=file_open(p_sfs->path,"r");
		fileLength=file_size(fp_data);
		printf("        the %s(%dB) file is opened...\n",p_sfs->name,fileLength);									
		if(fileLength+p_buffer-buffer>=FLOOPSIZE){
			printf("the file is too large!\n");		
			exit(ERROR);
		}																
		fread(p_buffer,B,fileLength,fp_data);
		printf("        read the data of file %s to buffer...\n",p_sfs->name);		
		p_buffer+=fileLength;														
		fclose(fp_data);
		printf("        the %s file is closed...\n",p_sfs->name);
//Ϊÿ���ļ�������ռ��������
		sector=fileLength/512;
		if(fileLength%512){
			sector++;
			p_buffer+=512-fileLength%512;
		}
		p_sfs->start_sec=start_sec;
		start_sec+=sector;
		p_sfs->sectors=sector;			
		printf("        the %s file takes %d sectors(%d,%d)!\n",p_sfs->name,sector,p_sfs->start_sec,sector);
		if(first_sec){
			p_buffer+=512;
			start_sec++;
			first_sec=0;
		}
		p_sfs=p_sfs->next;
	}
//�����ܹ����˶�����������������header��
	fileSize=p_buffer-buffer;
	sector=fileSize/512;
	if(fileSize%512){
		sector++;
	}
	head->sectors=sector;
printf("Writing Processing:\n");
printf("        %d sectors in all!\n",head->sectors);
//��ڶ�������д���ʾ����
	p=buffer+512;
	*((int*)p)=head->file_num;
	p+=2;
	*p=head->sectors;
	p+=2;
	strcopy(p,head->info,27);//ʵ������28���ַ�д��ȥ
	p+=28;
	file_num=head->file_num;
	p_sfs=head->header;
	while(file_num--){
		*((int*)p)=p_sfs->start_sec;
		p+=2;
		*((int*)p)=p_sfs->sectors;
		p+=2;
		strcopy(p,p_sfs->name,27);
		p+=28;
		p_sfs=p_sfs->next;
	}
//�������̾����ļ����ѻ�����������д���ȥ
	p_buffer=buffer;
	fp_img=file_open("../OBJ/sfs.img","w");
	printf("        the img file is created...\n");																
	fwrite(p_buffer,B,FLOOPSIZE,fp_img);																
	fclose(fp_img);
	printf("        the img file is colsed...\n");
	printf("        Convert successful!  %d B data in all!\n",fileSize);
	return 0;
}
//==========================sfs_parse=========================
SFS_HEAD* sfs_parse(char *filename)
{
	FILE* fp;
	char Buffer[1000],*p,*p_tmp,*q,*name_ptr;
	int fileLength,num_sfs=0;
	SFS *p_sfs,*p_tmp_sfs;
	SFS_HEAD* head=(SFS_HEAD*)malloc(sizeof(SFS_HEAD));
	if(!head){
		printf("malloc failed!\n");
		exit(ERROR);
	}
	head->header=NULL;			//��ʼ��sfs_head��header��Ϊ��
	fp=file_open(filename,"r");
	fileLength=file_size(fp);
	if(fileLength>=1000){
		printf(".sfs file too large!\n");
		exit(ERROR);
	}
	p=Buffer;
	fread(p,B,fileLength,fp);
	while(fileLength>=p-Buffer){
		switch(*p){
			//'#'��ע��,ѭ��ֱ�����н���,0D,0A�ǻس��Ķ�����
			case '#':
				printf("%c ",*p);
				p++;
				while(*(p++)!=0x0D){}
				if(*(p++)!=0x0A){
					printf("0xD,0xA problem!\n");
					exit(ERROR);
				}
				break;
			//��'<'��ʼ��ʾ��һ��"�ļ���"
			case '<':
				q=p_tmp=p;
				while(1){
					if(*(++p)=='>'){
						if(*(++p)==0x0D)
							if(*(++p)==0x0A){
								head->file_num++;
								p_sfs=(SFS*)malloc(sizeof(SFS));
								p_sfs->next=NULL;
								strcopy(p_sfs->name,p_tmp+1,p-3-p_tmp);//p-p_tmp+1-4,pָ��ڶ���
								strcopy(p_sfs->path,q+1,p-3-q);
								if((p_tmp_sfs=head->header)==NULL){
									head->header=p_sfs;
								}
								else{
									while(p_tmp_sfs->next!=NULL){
										p_tmp_sfs=p_tmp_sfs->next;
									}
									p_tmp_sfs->next=p_sfs;
								}
								break;
							}
						printf("0xD,0xA problem!\n");
						exit(ERROR);
					}
					else if(*p=='/'){
						p_tmp=p;
					}
				}
				break;
			//��'0'��ʼ��ʾ�ǿո�
			case 0x20:
				while(*(++p)==0x20){}
				break;
			//�س��Ķ�������2���ֽ�0D,0A
			case 0xD:
				p++;
				break;
			case 0xA:
				p++;
				break;
			//�ļ�����
			case 0:
				p++;
				if(*p==0){	
					printf("parse successful!\n");
					return head;
				}
			//�����ַ���ʼ���� �Ƿ�
			default:
				printf("Grammer error!\n");
				p++;
				exit(ERROR);
		}
	}
}
//==========================================================
//==========================file_open=========================
FILE  *file_open(char *filename,char *method)
{
	FILE *fp;
	if((fp=fopen(filename,method))==NULL){
		printf("cannot open file%s\n",filename);
		exit(ERROR);
	}
	return fp;
}
//==========================================================
//==========================file_size(B)==========================
int file_size(FILE *fp)
{
	int fileLength;
	fseek(fp,0,SEEK_END);
	fileLength=ftell(fp);
	rewind(fp);
	return fileLength;
}
//==========================================================
//==========================strcopy==========================
void strcopy(char *des,char *ori,int len)
{
	int i;
	for(i=0;i<len;i++){
		*(des++)=*(ori++);
	}
	*des='\0';
}
//==========================================================

