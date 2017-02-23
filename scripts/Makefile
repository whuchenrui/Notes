#Set parameters
CC = g++
CFLAGS = -g -Wall -Wextra -Werror -std=c++11 -pthread
LIBS = -L. -lcpu -ldl

all: test% multi_test%

# for multi_processors
multi_test%: thread.o multi_test%.o
	$(CC) $(CFLAGS) -o $@ $< $@.o $(LIBS)

# for uniprocessor
test%: thread.o test%.o
	$(CC) $(CFLAGS) -o $@ $< $@.o $(LIBS)

%.o: %.cc
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f *.o 

.phony: all, clean
