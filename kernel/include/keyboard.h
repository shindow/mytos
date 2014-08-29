#ifndef _KEYBOARD_H
#define _KEYBOARD_H
#define MAP_COLS 2
#define NR_SCAN_CODES 84

//for keymap.h
#define ESC			0
#define BACKSPACE 11
#define TAB			12
#define ENTER		13
#define CTRL_L		14
#define SHIFT_L	15
#define SHIFT_R	16
#define ALT_L		17
#define CAPS_LOCK		18
#define F1		1
#define F2		2
#define F3		3
#define F4		4
#define F5		5
#define F6		6
#define F7		7
#define F8		8
#define F9		9
#define F10		10
void Keyboard_Handler();
typedef struct kbd_struct
{
	int count;
	u32 *p_head,*p_tail;
	u32 buf[32];
}KBD_STRUCT;




#endif 
