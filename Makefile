CC = gcc
CFLAGS = -Iinclude

SOURCES=$(wildcard src/*.c)
OBJECTS=$(SOURCES:src/%.c=bin/%.o)

all: prog doc

prog: lib/libmat.so
	@echo "[3] Compiling prog..."
	@$(CC) $(CFLAGS) -o $@ src/prog.c -Llib -lmat

bin/%.o: src/%.c
	@echo "[1] Compiling $<..."
	@mkdir -p bin
	@$(CC) $(CFLAGS) -c -o $@ $< -fPIC -ggdb -O0

lib/libmat.so: $(OBJECTS)
	@echo "[2] Linking..."
	@mkdir -p lib
	@$(CC) -shared -o $@ $^

doc: $(SOURCES)
	@echo "[4] Generating documentation..."
	@rm -rf doc/html/* doc/latex/*
	@cd doc && doxygen Doxyfile

clean:
	@echo "Cleaning up..."
	@rm -rf bin/*.o prog lib/*.so doc/html/* doc/latex/*

.PHONY: clean all doc