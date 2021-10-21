MF = Makefile
FC = c++
FFLAGS = -I /Users/riccardorende/Desktop/eigen -w -g -ffast-math -shared -Wl,-undefined,dynamic_lookup -std=c++17 -O3 -fPIC -I/Library/Frameworks/Python.framework/Versions/3.8/include/python3.8 -I/Library/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages/pybind11/include
LFLAGS =

EXE = ising.so

SRC= \
		utils.cpp \
		main.cpp \

.SUFFIXES: .cpp .o

OBJ = $(SRC:.cpp=.o)

.cpp.o:
	$(FC) $(FFLAGS) -c $<

all:	$(EXE)

$(EXE):	$(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ) $(LFLAGS)

$(OBJ):	$(MF)

clean:
		rm -rf $(EXE) *.o *.dSYM
