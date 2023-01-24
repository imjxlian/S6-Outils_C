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
	@$(CC) $(CFLAGS) -c -o $@ $< -fPIC

lib/libmat.so: $(OBJECTS)
	@echo "[2] Linking..."
	@$(CC) -shared -o $@ $^

doc: $(SOURCES)
	@echo "[4] Generating documentation..."
	@cd doc && doxygen Doxyfile

clean:
	@echo "Cleaning up..."
	@rm -f bin/*.o prog lib/*.so

.PHONY: clean all doc