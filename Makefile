##
## EPITECH PROJECT, 2024
## B-OOP-400-STG-4-1-tekspice-luc.helmlinger
## File description:
## Makefile
##

SRC	=	main.cpp

NAME	=	test

CPPFLAGS	=	-std=c++20 -Wall -Wextra -Werror -g

OBJ	=	$(SRC:.cpp=.o)

all:	$(NAME)

$(NAME):	$(OBJ)
	g++ -o $(NAME) $(OBJ) $(CPPFLAGS)

clean:
	rm -f vgcore.*
	rm -f *~
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

.PHONY: re clean fclean all debug
