CC = g++
OBJ = main.o book.o
EXEC = Program

all : clean $(EXEC)

$(EXEC) : $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

main.o : main.cpp book.hpp
	$(CC) -c main.cpp -o main.o

book.o : book.cpp book.hpp
	$(CC) -c book.cpp -o book.o

clean : 
	rm -f $(EXEC) $(OBJ)
