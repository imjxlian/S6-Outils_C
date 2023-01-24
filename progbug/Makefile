CC = gcc
CFLAGS = -Iinclude

SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES: %.c=%.o)

all: prog

prog: $(OBJECTS)
	@$(CC) $(CFLAGS) -o $@ $^

bin/%.o: src/%.c
	@echo "[1] Compiling $<..."
	@$(CC) $(CFLAGS) -c -o $@ $< -fPIC -ggdb -O0
	
clean:
	@echo "Cleaning up..."
	@rm -f bin/*.o prog lib/*.so

.PHONY: clean all