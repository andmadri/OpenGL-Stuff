NAME = my_opengl_project_executable
SRC = $(wildcard src/*.cpp) $(wildcard src/*.c)
CXX = clang
CXXFLAGS = -Wall -Werror -Wextra
INCLUDES = -Iglad/include
LIBS = -lglfw -lGL -ldl
RM = rm -rf

all: $(NAME)

$(NAME) : $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) $(INCLUDES) $(LIBS) -o $(NAME)

clean: 
	$(RM) $(NAME)

re: clean all

.PHONY: all clean re
