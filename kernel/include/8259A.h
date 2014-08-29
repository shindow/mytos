#ifndef _8259A_H
#define _8259A_H
#define PIC1		0x20
#define PIC2		0xA0
#define PIC1_COMD	PIC1
#define PIC1_DATA	(PIC1+1)
#define PIC2_COMD PIC2
#define PIC2_DATA	(PIC2+1)

//for 8259
	#define IRQ0		0
	#define IRQ1		1
	#define IRQ2		2
	#define IRQ3		3
	#define IRQ4		4
	#define IRQ5		5
	#define IRQ6		6
	#define IRQ7		7
	#define IRQ8		8
	#define IRQ9		9
	#define IRQ10		10
	#define IRQ11	 	11
	#define IRQ12		12
	#define IRQ13		13
	#define IRQ14		14	
	#define IRQ15		15

	#define MASTER 0
	#define SLAVE	  1


#endif
