CC=gcc
CXX=g++
CFLAGS = -I. -Wall -ftest-coverage -fprofile-arcs 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

%.o: %.cpp $(DEPS)
	$(CXX) -c -o $@ $< $(CFLAGS) 

clean :
	rm  *.o  *.asm  *.lst *.sym *.rel *.s *.gc* -f *.info
