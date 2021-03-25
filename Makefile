# Comment using '#'

# Syntax --
# target : dependency
# <\t> command

PROJECT_NAME = all.out
SRC = src/sum.c src/product.c test.c
INC = inc

$(PROJECT_NAME): $(SRC)
	gcc -I $(INC) $(SRC) -o all.out

run: $(PROJECT_NAME)
	./$(PROJECT_NAME)

clean : 
	rm *.out