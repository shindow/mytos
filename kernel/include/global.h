#ifndef _GLOBAL_H
#define _GLOBAL_H
#include "mm.h"
#include "time.h"
#include "process.h"
#include "keyboard.h"
#include "protect.h"
int position;
int startposition;
int tmp_page_table[TMPPAGES];
int user_page_table[USERPAGES];				//用户内存空间
DESCRIPTOR		gdt[GDT_SIZE];
 u8						gdt_ptr[6];
GATE					idt[IDT_SIZE];
u8						idt_ptr[6];
TIME					cur_time;
TIME*					ptime;
PROCESS			proc_table[NR_PROCESS];
PROCESS			*p_proc_ready;

u32						*ESPREG;						//用来临时保存esp的
PROCESS			*p_proc_save;
int						IsProcChanged;

KBD_STRUCT	kbd_buf;
u8						mouse_x;
u8						mouse_y;
u8						mouse_state;
u32						ticks;

#endif
