#定义变量
ASM =nasm
CC	=gcc
LD	=ld
DASM= ndisasm

ENTRYOFFSET=0x400
ENTRYPOINT=0x20400
LDFLAGS	=-s -Ttext $(ENTRYPOINT) -m elf_i386
CFLAGS		=-I include/ -c -fno-builtin -fno-stack-protector -m32
KASMFLAGS  =-I include/ -f elf
ASMFLAGS	=-I include/ -f elf

DASMFLAGS	= -u -o $(ENTRYPOINT) -e $(ENTRYOFFSET)
DASMOUTPUT=kernel.bin.asm
DASMIN		=../OBJ/kernel.bin

KERNELBIN	=../OBJ/kernel.bin
OBJ			=../OBJ/entry.o ../OBJ/start.o ../OBJ/process.o ../OBJ/protect.o \
../OBJ/clock.o ../OBJ/8259A.o ../OBJ/slib.o  ../OBJ/page.o ../OBJ/clib.o		\
../OBJ/main.o	../OBJ/interrupt.o ../OBJ/machine.o ../OBJ/keyboard.o		\
../OBJ/exception.o	../OBJ/paging.o ../OBJ/manager.o ../OBJ/memory.o		\
../OBJ/tty.o ../OBJ/mouse.o ../OBJ/vm86.o ../OBJ/vm86monitor.o ../OBJ/pixel.o \
../OBJ/picture.o ../OBJ/x87_fpu.o

.PHONY: everything clean all disasm

everything :$(KERNELBIN)
clean:
	rm -f $(OBJ)

all:everything disasm
#==================dasm========================
disasm:
	$(DASM) $(DASMFLAGS) $(KERNELBIN) > $(DASMOUTPUT)
#lib 目录
../OBJ/slib.o:lib/slib.s
	$(ASM) $(KASMFLAGS) -o $@ $<
../OBJ/clib.o:lib/clib.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/picture.o:lib/picture.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/pixel.o:lib/pixel.s
	$(ASM) $(KASMFLAGS) -o $@ $<
#kernel 目录
../OBJ/main.o:main.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/process.o:process.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/protect.o:protect.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/interrupt.o:interrupt.s
	$(ASM) $(KASMFLAGS) -o $@ $<
../OBJ/vm86.o:vm86.asm
	$(ASM) $(KASMFLAGS) -o $@ $<
../OBJ/vm86monitor.o:vm86monitor.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/exception.o:exception.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/tty.o:tty.c
	$(CC) $(CFLAGS) -o $@ $<
	#start 目录
../OBJ/start.o:start/start.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/entry.o:start/entry.asm
	$(ASM) $(KASMFLAGS) -o $@ $<
	#arch 目录
../OBJ/clock.o:arch/clock.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/8259A.o:arch/8259A.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/machine.o:arch/machine.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/keyboard.o:arch/keyboard.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/mouse.o:arch/mouse.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/ne2k_driver.o:arch/ne2k_driver.c
	$(CC) $(CFLAGS) -o $@ $<
../OBJ/x87_fpu.o:arch/x87_fpu.c
	$(CC) $(CFLAGS) -o $@ $<
	#mm 目录
../OBJ/paging.o:mm/paging.c
	$(CC) $(CFLAGS) -o $@ $<	
../OBJ/page.o:mm/page.s
	$(ASM) $(KASMFLAGS) -o $@ $<
../OBJ/manager.o:mm/manager.c
	$(CC) $(CFLAGS) -o $@ $<	
../OBJ/memory.o:mm/memory.c
	$(CC) $(CFLAGS) -o $@ $<
$(KERNELBIN):$(OBJ)
	$(LD) $(LDFLAGS) -o $(KERNELBIN) $(OBJ)

