# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yoyohann <yoyohann@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/10 11:26:00 by yoyohann          #+#    #+#              #
#    Updated: 2023/02/28 05:34:30 by yoyohann         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

FILES = ft_memset ft_bzero ft_memcpy ft_memmove ft_memchr ft_memcmp \
		ft_strlen ft_strlcpy ft_strlcat ft_strchr ft_strrchr \
		ft_strnstr ft_strncmp ft_atoi ft_isalpha ft_isdigit \
		ft_isalnum ft_isascii ft_isprint ft_toupper \
		ft_tolower ft_calloc ft_strdup ft_substr \
		ft_strjoin ft_strtrim ft_split ft_itoa \
		ft_strmapi ft_putchar_fd ft_putstr_fd ft_putendl_fd \
		ft_putnbr_fd ft_striteri ft_strcpy ft_strcmp ft_putstr \
		ft_strstr ft_join ft_chrmatch

FILES_B = 	ft_lstnew_bonus ft_lstadd_front_bonus ft_lstsize_bonus ft_lstlast_bonus \
	  		ft_lstadd_back_bonus ft_lstdelone_bonus ft_lstclear_bonus \
	  		ft_lstiter_bonus ft_lstmap_bonus

SRCS_DIR = ./
SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))
SRCS_B = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES_B)))

OBJS_DIR = ./
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))
OBJS_B = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES_B)))


.c.o: $(SRCS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME): $(OBJS)
	$(AR) $@ $^

bonus: $(OBJS_B)
	$(AR) $(NAME) $^

all: $(NAME)

clean:
	$(RM) $(OBJS) $(OBJS_B)

fclean: clean
	$(RM) $(NAME)

re: clean all
