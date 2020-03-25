all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

sum.o: sum.h sum.cpp
	g++ -g -c -o sum.h sum.cpp

main.o: sum.h main.cpp
	g++ -g -c -o main.o main.cpp

clean:
	rm -f sum_test *.o
