/*         for drawing          													*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.4.1  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "protect.h"
#include "global.h"
//0H--黑色,1H--蓝色,2H--绿色,3H--青色,4H--红色,5H--洋红,6H--棕色,7H--白色
//8H--黑色(闪烁),9H--蓝色(闪烁),AH--绿色(闪烁),BH--青色(闪烁),CH--红色(闪烁)
//DH--洋红(闪烁),FH--棕色(闪烁)
//==========================判断参数合法性
int IsInPic(int x,int y)
{
	if(x<0||y<0||x>320||y>200)
		return 0;						//不合法
	else
		return 1;						//合法
	
}
//==========================画一个像素
void Draw_Pixel(int x,int y,int color)
{
	if(!IsInPic(x,y))
		return ;
//	set_pixel(x,200-y,color);						//反转y的坐标
	set_pixel(x,y,color);						
}
//==========================画一条直线
void Draw_Line(int startX,int startY,int endX,int endY,int color)
{
/*	int XorY=1,x=startX,y=startY;				//XorY默认是x,direction默认是正的
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
//================中点画线算法
	int a,b,x,y,d,d1,d2,y_flag=0,slop_flag=0,tmp;//初置,斜率小于45度,起始坐标y大于终点坐标的y
	if(startX>endX){					//判断起始点的X坐标是否小于终点的,是的话交换坐标
		tmp=startX;
		startX=endX;
		endX=tmp;
		tmp=startY;
		startY=endY;
		endY=tmp;
	}
	else if(startX==endX){		//画竖直线
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
		slop_flag=1;					//斜率大于45度
	if(startY>endY)
		y_flag=1;							//起始坐标y小于终点坐标的y
//===================之前做一些判断
	x=startX;
	y=startY;
	Draw_Pixel(x,y,color);

	if(!slop_flag){							//斜率小于45度
		if(!y_flag)									
			a=startY-endY;				//a一定是负数
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
	else{											//斜率大于45度
		a=startX-endX;
		if(!y_flag)		
			b=endY-startY;					//b一定是正数		
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
//==========================画一个矩形
void Draw_Rectangle(int startX,int startY,int side1,int side2,int color)
{
	Draw_Line(startX,startY,startX,startY+side2,color);	
	Draw_Line(startX,startY,startX+side1,startY,color);	
	Draw_Line(startX,startY+side2,startX+side1,startY+side2,color);	
	Draw_Line(startX+side1,startY,startX+side1,startY+side2,color);	
}
//==========================画一个四边形
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
//=======================画一个圆
//先画出1/8圆，然后根据对称性画出剩下的
//(x,y,color) (-x,y,color) (x,-y,color)  (-x,-y,color) (y,x,color) (-y,x,color) (y,-x,color) (-y,-x,color)   
void Draw_Circle(int X0,int Y0,int r,int color)
{
	//算法：中点画圆
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

