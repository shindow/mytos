ASM=nasm
BOOTFLAGS	=-I include/
BOOTBIN	=../OBJ/boot.bin ../OBJ/load.bin

.PHONY:everything all clean
everything :$(BOOTBIN) $(KERNELBIN)
clean:
#	rm ../OBJ/boot.bin
#	rm ../OBJ/load.bin
all:clean everything

../OBJ/boot.bin:boot.s
	$(ASM) $(BOOTFLAGS) -o $@ $<
../OBJ/load.bin:load.s
	$(ASM) $(BOOTFLAGS) -o $@ $<
