NAME = push_swap
CHECKER = checker

CFLAGS = -Wall -Wextra -Werror -I -I./42_library
CC = cc
RM = rm -f
AR = ar rcs

LIB_DIR = ./42_library
SRC_DIR = .
OBJ_DIR = temp

SRC = \
		$(SRC_DIR)/main.c \
		$(SRC_DIR)/push_swap_input.c \
		$(SRC_DIR)/push_swap_errors.c \
		$(SRC_DIR)/push_swap_nodes_1.c \
		$(SRC_DIR)/push_swap_nodes_2.c \
		$(SRC_DIR)/push_swap.c \
		$(SRC_DIR)/push_swap_rotate_reverse.c \
		$(SRC_DIR)/push_swap_rotate_index_top.c \
		$(SRC_DIR)/push_swap_sort.c \
		$(SRC_DIR)/push_swap_chunk_sort.c \
		$(SRC_DIR)/push_swap_min_max_index.c \
		$(SRC_DIR)/push_swap_index_cost.c

CHECKER = \
			$(SRC_DIR)/checker.c \
			$(SRC_DIR)/push_swap_input.c \
			$(SRC_DIR)/push_swap_errors.c \
			$(SRC_DIR)/push_swap_nodes_1.c \
			$(SRC_DIR)/push_swap_nodes_2.c \
			$(SRC_DIR)/push_swap_checker.c \
			$(SRC_DIR)/push_swap_rotate_reverse_checker.c

# --- colours ---
RESET := \033[0m
BOLD  := \033[1m
RED   := \033[31m
GRN   := \033[32m
YEL   := \033[33m
BLU   := \033[34m

OBJ = $(addprefix $(OBJ_DIR)/, $(notdir $(SRC:.c=.o)))
CHECKER_OBJ = $(addprefix $(OBJ_DIR)/, $(notdir $(CHECKER:.c=.o)))

$(NAME): $(OBJ) $(LIB_DIR)/libft.a
		@$(MAKE) -C $(LIB_DIR)
		@printf "Compiling the $(BOLD)'push_swap'$(RESET) program"
		@$(CC) $(CFLAGS) $(OBJ) $(LIB_DIR)/libft.a -o $(NAME) && \
		printf "%-10s[$(GRN)OK$(RESET)]\n" || \
		(printf "[$(RED)FAIL$(RESET)]\n"; exit 1)
		@printf "$(YEL)Run the program as follows:\n"
		@printf '$(RESET)ARG=\"4 67 3 87 23\"; ./push_swap $$ARG\n'
		@printf "$(YEL)(the args are up to you)\n$(RESET)"

$(LIB_DIR)/libft.a:
	@$(MAKE) -C $(LIB_DIR)

all: $(NAME)

checker: $(CHECKER_OBJ) $(LIB_DIR)/libft.a
		@$(MAKE) -C $(LIB_DIR)
		@printf "Compiling the $(BOLD)'checker'$(RESET) program"
		@$(CC) $(CFLAGS) $(CHECKER_OBJ) $(LIBFT_DIR)/libft.a -o $(CHECKER) && \
		printf "%-10s[$(GRN)OK$(RESET)]\n" || \
		(printf "[$(RED)FAIL$(RESET)]\n"; exit 1)
		@printf "$(YEL)Run the program as follows:\n"
		@printf '$(RESET)ARG=\"4 67 3 87 23\"; ./push_swap $$ARG | ./checker $$ARG \n'
		@printf "$(YEL)(the args are up to you)\n$(RESET)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf "CC %-35s" "$<"
	@$(CC) $(CFLAGS) -c $< -o $@ && \
		printf "[$(GRN)OK$(RESET)]\n" || \
		(printf "[$(RED)FAIL$(RESET)]\n"; exit 1)

clean:
	@$(RM) -r $(OBJ_DIR)
	@printf "$(BLU)Push_swap (and checker) objects have been deleted.$(RESET)\n"

fclean: clean
	@$(MAKE) fclean -C $(LIBFT_DIR)
	@$(RM) $(NAME) $(CHECKER)
	@printf "$(BLU)Push_swap (and checker) has been deleted.$(RESET)\n"

clean_libft:
	@$(MAKE) clean -C $(LIBFT_DIR)

re: fclean all

.PHONY: all clean fclean re checker
