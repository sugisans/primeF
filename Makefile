CC            = gcc
DEST          = /usr/local/bin
SOURCE        = prime.c
PROGRAM       = primef

$(PROGRAM):$(SOURCE)
	$(CC) $(SOURCE) -o $(PROGRAM)

clean:
	rm -f $(PROGRAM)

install:      
	install -s $(PROGRAM) $(DEST)

uninstall:
	rm -f $(DEST)/$(PROGRAM)



	
