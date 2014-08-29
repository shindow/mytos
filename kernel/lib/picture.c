/*         for drawing          													*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.4.1  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "protect.h"
#include "global.h"
//0H--��ɫ,1H--��ɫ,2H--��ɫ,3H--��ɫ,4H--��ɫ,5H--���,6H--��ɫ,7H--��ɫ
//8H--��ɫ(��˸),9H--��ɫ(��˸),AH--��ɫ(��˸),BH--��ɫ(��˸),CH--��ɫ(��˸)
//DH--���(��˸),FH--��ɫ(��˸)
//==========================�жϲ����Ϸ���
int IsInPic(int x,int y)
{
	if(x<0||y<0||x>320||y>200)
		return 0;						//���Ϸ�
	else
		return 1;						//�Ϸ�
	
}
//==========================��һ������
void Draw_Pixel(int x,int y,int color)
{
	if(!IsInPic(x,y))
		return ;
//	set_pixel(x,200-y,color);						//��תy������
	set_pixel(x,y,color);						
}
//==========================��һ��ֱ��
void Draw_Line(int startX,int startY,int endX,int endY,int color)
{
/*	int XorY=1,x=startX,y=startY;				//XorYĬ����x,directionĬ��������
	if(Absolute(endY-startY)-Absolute(endX-startX)>0){
		XorY=0;
	}
	if(endX-startX<0){
		x=endX;
		y=endY;
	}
	Draw_Pixel(x,y,color);
	if(XorY){
		x++;
		
	}
	else{
	
	}
*/
//================�е㻭���㷨
	int a,b,x,y,d,d1,d2,y_flag=0,slop_flag=0,tmp;//����,б��С��45��,��ʼ����y�����յ������y
	if(startX>endX){					//�ж���ʼ���X�����Ƿ�С���յ��,�ǵĻ���������
		tmp=startX;
		startX=endX;
		endX=tmp;
		tmp=startY;
		startY=endY;
		endY=tmp;
	}
	else if(startX==endX){		//����ֱ��
		if(startY<endY)
			b=startY;
		else{
			b=endY;
			endY=startY;
		}
		for(;b<endY;b++)
			Draw_Pixel(startX,b,color);
		return ;
	}
	if(Absolute(startX-endX)<Absolute(startY-endY))
		slop_flag=1;					//б�ʴ���45��
	if(startY>endY)
		y_flag=1;							//��ʼ����yС���յ������y
//===================֮ǰ��һЩ�ж�
	x=startX;
	y=startY;
	Draw_Pixel(x,y,color);

	if(!slop_flag){							//б��С��45��
		if(!y_flag)									
			a=startY-endY;				//aһ���Ǹ���
		else
			a=endY-startY;
		b=endX-startX;
		d=2*a+b;
		d1=2*a;
		d2=2*(a+b);
		while(x<endX){
			if(d<0){
				x++;
				if(!y_flag)
					y++;
				else
					y--;
				d+=d2;
			}
			else{
				x++;
				d+=d1;
			}
			Draw_Pixel(x,y,color);
		}
	}
	else{											//б�ʴ���45��
		a=startX-endX;
		if(!y_flag)		
			b=endY-startY;					//bһ��������		
		else
			b=startY-endY;	
		d=2*a+b;
		d1=2*a;
		d2=2*(a+b);
		while(x<endX){
			if(d<0){
				x++;
				if(!y_flag)
					y++;
				else
					y--;
				d+=d2;
			}
			else{
				if(!y_flag)
					y++;
				else
					y--;
				d+=d1;
			}
			Draw_Pixel(x,y,color);
		}
	}

/*	===========Bresenham
	int x,y,dx,dy,i;
	float k,e;
	dx=endX-startX;
	dy=endY-startY;
	k=dy/dx;
	e=-0.5;
	x=startX;
	y=startY;
	for(i=0;i<dx;i++){
		Draw_Pixel(x,y,color);
		x=x+1;
		e=e+k;
		if(e>=0){
			y++;
			e--;
		}
	}
*/
}
//==========================��һ������
void Draw_Rectangle(int startX,int startY,int side1,int side2,int color)
{
	Draw_Line(startX,startY,startX,startY+side2,color);	
	Draw_Line(startX,startY,startX+side1,startY,color);	
	Draw_Line(startX,startY+side2,startX+side1,startY+side2,color);	
	Draw_Line(startX+side1,startY,startX+side1,startY+side2,color);	
}
//==========================��һ���ı���
void Draw_Quads(int P0x,int P0y,int P1x,int P1y,int P2x,int P2y,int P3x,int P3y,int color)
{
						
}
void Draw_Triangle(int P0x,int P0y,int P1x,int P1y,int P2x,int P2y,int color)
{
	Draw_Line(P0x,P0y,P1x,P1y,color);	
	Draw_Line(P0x,P0y,P2x,P2y,color);
	Draw_Line(P1x,P1y,P2x,P2y,color);
}
void Circle_Points(int x,int y,int X0,int Y0,int color)
{
		Draw_Pixel(X0-x,y+Y0,color);
		Draw_Pixel(x+X0,y+Y0,color);
		Draw_Pixel(x+X0,Y0-y,color);
		
		Draw_Pixel(X0-x,Y0-y,color);

		Draw_Pixel(y+X0,x+Y0,color);
		Draw_Pixel(y+X0,Y0-x,color);
		Draw_Pixel(X0-y,x+Y0,color);
		Draw_Pixel(X0-y,Y0-x,color);
}
//=======================��һ��Բ
//�Ȼ���1/8Բ��Ȼ����ݶԳ��Ի���ʣ�µ�
//(x,y,color) (-x,y,color) (x,-y,color)  (-x,-y,color) (y,x,color) (-y,x,color) (y,-x,color) (-y,-x,color)   
void Draw_Circle(int X0,int Y0,int r,int color)
{
	//�㷨���е㻭Բ
	int x,y,d;
	x=0;y=r;d=1-r;
	while(x<=y){
		Circle_Points(x,y,X0,Y0,color);
		if(d<0){
			d+=2*x+3;
		}
		else{
			d+=2*(x-y)+5;
			y--;
		}
		x++;
	}
}

