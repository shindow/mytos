OBJ			=picTool.o imgTool.o
.PHONY:everything clean complie
all:clean everything complie
clean:
	rm -f $(OBJ)
everything:picTool.o imgTool.o
	./picTool.o
	./imgTool.o
picTool.o:picTool.c
	gcc picTool.c -o picTool.o
imgTool.o:imgTool.c
	gcc imgTool.c -o imgTool.o
complie:
	


