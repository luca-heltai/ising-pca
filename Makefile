MF = Makefile
FC = c++
FFLAGS = -I ./include/eigen -w -g -ffast-math -shared -Wl,-undefined,dynamic_lookup -std=c++17 -O3 -fPIC `python3 -m pybind11 --includes`
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
