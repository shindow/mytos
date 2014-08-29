
.PHONY:all
all:
	@echo yes
	make all -C boot
	make all -C kernel 
	make -C tool 

clean:
	rm ./OBJ/*.o
