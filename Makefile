NAME = libasm.a
SRCS = ./ft_strlen.s ./ft_strcpy.s ./ft_strcmp.s ./ft_write.s ./ft_read.s ./ft_strdup.s
OBJS = $(SRCS:.s=.o)

%.o : %.s
	nasm -f elf64 -DPIC $< -o $@

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $^

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f a.out

re: fclean all

test:
	gcc test.c -L. -lasm 
	./a.out

.PHONY: all clean fclean re