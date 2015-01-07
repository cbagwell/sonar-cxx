all: $(OBJECTS)
	c++ cli/main.cc lib/component1.cc -I.. -g --coverage -o app
	./app
	gcovr -x > cobertura.xml
	cppcheck -v --enable=all --xml cli lib 2> cppcheck.xml

clean:
	rm -f *.o *.gc* app
