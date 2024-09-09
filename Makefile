CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2 -g

SRCS = main.c chunk.c compiler.c debug.c memory.c object.c scanner.c table.c value.c vm.c
OBJS = $(SRCS:.c=.o)
TARGET = main

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean