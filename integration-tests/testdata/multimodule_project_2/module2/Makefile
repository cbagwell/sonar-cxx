OBJS = module2.hh module2.cc tst.cc
all: $(OBJS)
	c++ $(OBJS) -g --coverage -o tst
	./tst
	gcovr -x -r . > cobertura.xml
	cppcheck -v --enable=all --xml . 2> cppcheck.xml

clean:
	rm -f *.o *.gc* tst
