CC=gcc
CFLAGS=-Wall -Wextra -Werror -std=c99 -pedantic -g

SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

all: main

main: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: main
	@./main

test: main
	@./test/test.sh main test/input.txt test/output.txt

clean:
	rm -f $(OBJS) main

.PHONY: all test clean

