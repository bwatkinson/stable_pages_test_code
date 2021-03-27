CC = gcc
CFLAGS = -g -Wall -D_GNU_SOURCE
OBJ = stable_pages_test.o
CFILE = stable_pages_test.c
LIBS = -lpthread
PROG = stable_pages_test

all:$(PROG)
$(PROG): $(OBJ)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJ) $(LIBS)
$(OBJ): $(CFILE)
	$(CC) $(CFLAGS) -c $(CFILE)
clean:
	rm -fr $(OBJ) $(PROG)
