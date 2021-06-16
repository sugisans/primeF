CC            = gcc
DEST          = /usr/local/bin
SOURCE        = math.c
PROGRAM       = mathtest

$(PROGRAM):$(SOURCE)
	$(CC) $(SOURCE) -o $(PROGRAM)

clean:
	rm -f $(PROGRAM)

install:      
	install -s $(PROGRAM) $(DEST)

uninstall:
	rm -f $(DEST)/$(PROGRAM)



	
