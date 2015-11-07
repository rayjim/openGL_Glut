CFLAGS = -I/usr/X11R6/include
LDLIBS = -L/usr/X11R6/lib -lglut -lGLU -lGL -lm 
OBJ = helloglut.o
a.o: helloglut.c prog1.o prog2.o
	$(CC) $(CFLAGS) -o hello.out helloglut.c $(LDLIBS)


OBJ = prog1.o
prog1.o: prog1.c
	$(CC) $(CFLAGS) -o prog1.out prog1.c $(LDLIBS)


OBJ = prog2.o
prog2.o: prog2.c
	$(CC) $(CFLAGS) -o prog2.out prog2.c $(LDLIBS)
clean:
	rm *.out