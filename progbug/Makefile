CFLAGS = -g -O0

prog : dho xtrem space cafard geek hack

% : bin/%.o
	$(CC) -o $@ $^

bin/%.o : src/%.c
	$(CC) -o $@ $(CFLAGS) -c $<

clean :
	rm dho xtrem space cafard geek hack

.PHONY : clean
