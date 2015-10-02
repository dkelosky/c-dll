# you can use:
#	make		-makes what is needed
#	make clean	-clears everything for rebuild
#	make main	-only builds main

CC = gcc
ARGS = -Wall

all: foo main

# -c means not to run the linker
# -Wall enable all warnings
# -Werror make warnings errors
foo:
	gcc -shared -Wall -Werror -o libfoo.so -fPIC foo.c
main:
	gcc -L/home/dan/dev/c/dll -Wl,-rpath=/home/dan/dev/c/dll -Wall -o main main.c -lfoo
# usage is "make clean"
clean:
	rm -f *.o main
