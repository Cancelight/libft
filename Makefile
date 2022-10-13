NAME=libft.a

SRCS= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c\
ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c\
ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c\
ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_atoi.c ft_strmapi.c 

OBJS= $(SRCS:.c=.o)

#BONUS_SRCS= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

#BONUS_OBJS = $(BONUS_SRCS:.c=.o)

CC=gcc

RM= rm -rf

CFLAGS= -Wall -Werror -Wextra

all: $(NAME)


$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)


clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

#bonus: $(OBJS) $(BONUS_OBJS) ar rc $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY: all clean fclean re bonus