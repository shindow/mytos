/*         c function																	*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.13  setup		  												*/
#include "type.h"
#include "const.h"
#include "global.h"
#include "lib.h"

//========不知道为什么这样写会产生"高地址"的"变量"而会产生分页错误=======
/*void Disp_Int(int num)		//显示数字
{
	char **tmp;						//使用指针的指针是因为函数参数只是一份copy
	IntToString(num,tmp);	//并且函数里分配的内存是不会自己回收的
	disp_str(*tmp);
}
void IntToString(int num,char  **str)	 //整数转换为字符串
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
		*(p+number)=tmp_i+48;		//加48使数字变成ASCI的数字
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
void Disp_Int(int num)		//显示数字
{
	char *tmp,tmp_c[10];						//使用指针的指针是因为函数参数只是一份copy
	tmp=tmp_c;
	IntToString(num,tmp);	//并且函数里分配的内存是不会自己回收的
	disp_str(tmp);
}
void IntToString(int num,char  *str)	 //整数转换为字符串
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
		*(p+number)=tmp_i+48;		//加48使数字变成ASCI的数字
	}
}
int Numbers(int num)		//获取一个数字有多少位数
{
	int i=0;
	while(num){
		num=num/10;
		i++;
	}
	return i;
}
int StrLen(char* str)	//获取字符串长度
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
