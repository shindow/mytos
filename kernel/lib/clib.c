/*         c function																	*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.13  setup		  												*/
#include "type.h"
#include "const.h"
#include "global.h"
#include "lib.h"

//========��֪��Ϊʲô����д�����"�ߵ�ַ"��"����"���������ҳ����=======
/*void Disp_Int(int num)		//��ʾ����
{
	char **tmp;						//ʹ��ָ���ָ������Ϊ��������ֻ��һ��copy
	IntToString(num,tmp);	//���Һ����������ڴ��ǲ����Լ����յ�
	disp_str(*tmp);
}
void IntToString(int num,char  **str)	 //����ת��Ϊ�ַ���
{
	char tmp_c[10],*p;
	int number,tmp_i;
	number=Numbers(num);
	*str=tmp_c;
	p=tmp_c;
	if(number==0){
		*(p++)=48;
		*p='\0';
		return ;
	}
	*(p+number)='\0';
	while(number--){
		tmp_i=num%10;
		num=num/10;
		*(p+number)=tmp_i+48;		//��48ʹ���ֱ��ASCI������
	}
}
*/
//===============================================================
int Reverse(int num)
{
	return (0-num);
}
int Absolute(int num)
{
	if(num<0)
		num=0-num;
	return num;
}
void Disp_Int(int num)		//��ʾ����
{
	char *tmp,tmp_c[10];						//ʹ��ָ���ָ������Ϊ��������ֻ��һ��copy
	tmp=tmp_c;
	IntToString(num,tmp);	//���Һ����������ڴ��ǲ����Լ����յ�
	disp_str(tmp);
}
void IntToString(int num,char  *str)	 //����ת��Ϊ�ַ���
{
	char *p;
	int number,tmp_i;
	number=Numbers(num);
	p=str;
	if(number==0){
		*(p++)=48;
		*p='\0';
		return ;
	}
	*(p+number)='\0';
	while(number--){
		tmp_i=num%10;
		num=num/10;
		*(p+number)=tmp_i+48;		//��48ʹ���ֱ��ASCI������
	}
}
int Numbers(int num)		//��ȡһ�������ж���λ��
{
	int i=0;
	while(num){
		num=num/10;
		i++;
	}
	return i;
}
int StrLen(char* str)	//��ȡ�ַ�������
{
	int i=0;
	while(*(str++)){
		i++;
	}
	return i;
}
void Delay()
{
	int i,j,k;
	for(i=0;i<100;i++)
		for(j=0;j<100;j++)
			for(k=0;k<100;k++){}
}
/*void disp_str(int startpos,char *str)
{
	int tmp=position;
	position=startpos;
	disp_str(str);
	position=tmp;
}*/
void Clear_Screen(int start,int length)
{
	int i,tmp=position;
	position=startposition+start;
	for(i=0;i<length;i++){
		disp_str(" ");
	}
	position=tmp;
}
