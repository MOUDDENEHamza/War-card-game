BIN = bin/
LIB = lib/
GIT = git
ADD = add .
COMMIT = commit -m
PUSH = push
READ = @read -p

all : 
	make compile
	make run

git :
	$(READ) "Enter the message to set up the commit : " message; \
        $(GIT) $(ADD) && $(GIT) $(COMMIT) "$$message" && $(GIT) $(PUSH);

clean :
	rm $(BIN)* $(LIB)*
