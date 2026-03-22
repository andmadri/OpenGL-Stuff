NAME = my_opengl_project_executable
SRC = $(wildcard src/*.cpp)
CXX = clang++
CXXFLAGS = -Wall -Werror -Wextra
LIBS = -lglfw -lGL -ldl
RM = rm -rf

all: $(NAME)

$(NAME) : $(SRC)
	$(CLANG) $(CC) $(SRC) $(LIBS) -o $(NAME)

clean: 
	$(RM) $(NAME)

re: clean all

.PHONY: all clean re
