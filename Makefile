CC=gcc
CFLAGS=-Wall -Wextra -Werror -std=c99 -pedantic -g -fdiagnostics-format=json

SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
ERRORS=errors.json

all: main

main: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ 2> $(ERRORS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ 2> $(ERRORS)

run: main
	@./main

test: main
	@./test/test.sh main test/input.txt test/output.txt

clean:
	rm -f $(OBJS) $(ERRORS) main

.PHONY: all test clean