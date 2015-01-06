OBJECTS = cli/main.o lib/component1.o

all: $(OBJECTS)

%.o : %.cc
	$(CC) -I.. -c $< -o $@

cppcheck:
	cppcheck -v --enable=all --xml cli lib 2> cppcheck.xml

clean:
	rm -f cli/*.o lib/*.o
