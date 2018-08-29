TARGET = reverse_connect
FILES = reverse_connect.asm

OBJS = $(FILES:.asm=.o)
NASM = nasm
ASM_FLAGS = -f elf32
LD = ld

all : $(TARGET)

lab: $(OBJS)
	$(LD) -o $(TARGET) $(OBJS)

%.o : %.asm
	$(NASM) $(ASM_FLAGS) -o $@ $<
