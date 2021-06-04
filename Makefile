SRC    =    test.c

OBJ    =    $(SRC:.c=.o)

NAME    =    test

CFLAGS	=	-g -W -Wall -Wextra -I./include

all:	$(NAME)

$(NAME):	$(OBJ)
		gcc -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:    fclean all

tests_run: re
	
.PHONY: all clean fclean re
