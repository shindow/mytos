/*         main function(c)														*/
/*			by shindow(liuyu_200411@sina.com) 					*/
/*			2010.2.2  setup		  												*/
#include "type.h"
#include "const.h"
#include "lib.h"
#include "protect.h"
#include "global.h"
void cmain()
{
//	Disp_Int(malloc(100));
	while(1){
	}
}
void TestA()
{
	int i,j;
	Delay();
//	Delay();
//	Create_Proc((u32)VM86Init,KERNEL);
//	Delay();
/*	for(i=0;i<64*4;i++){
		for(j=0;j<50;j++)
			Draw_Pixel(i,j,i/4);
	}
	for(i=0;i<64*4;i++){
		for(j=50;j<50*2;j++)
			Draw_Pixel(i,j,64+i/4);
	}
	for(i=0;i<64*4;i++){
		for(j=50*2;j<50*3;j++)
			Draw_Pixel(i,j,64*2+i/4);
	}
	for(i=0;i<64*4;i++){
		for(j=50*3;j<50*4;j++)
			Draw_Pixel(i,j,64*3+i/4);
	}

	Draw_Triangle(0,0,50,30,20,80,4);
	Draw_Circle(190,90,70,3);
	Draw_Circle(40,50,30,2);
	Draw_Circle(200,90,500,7);
	Draw_Rectangle(100,80,20,40,15);
	Draw_Rectangle(60,140,60,50,5);
*/
//	Draw_Pixel(5,5,3);
	Delay();
	Delay();
	Delay();
//	Create_Proc((u32)ReturnText,KERNEL);

	Create_Proc((u32)Show_Time,USER);
	while(1){
//		Delay();
//		disp_str("A");
//		Update_Cursor(position);
	}
}
void TestB()
{
//	Draw_Triangle(0,0,50,30,20,80,4);
//	Draw_Circle(40,50,30,4);
//	Draw_Rectangle(100,80,20,40,9);
//	Draw_Pixel(10,10,5);
	while(1){
//		Delay();
//		disp_str("B");		
/*		out_byte(0x3CE,0x6);											//²Ù×÷graphic controler
		out_byte(0x3CF,(in_byte(0x3CF)|0x9)&((u8)(~0x4)));	//
		out_byte(0x3C2,in_byte(0x3CC)|0x2);				//RAM Enable field	
		out_byte(0x3CE,0x5);											//²Ù×÷graphic controler
		out_byte(0x3CF,in_byte(0x3CF)&((u8)(~0x96)));	//
*/			
	}
}

