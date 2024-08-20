CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2

SRCS = main.c chunk.c debug.c memory.c value.c vm.c
OBJS = $(SRCS:.c=.o)
TARGET = main

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean