all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.cpp
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.cpp
	gcc -W -Wall -o $@ $<
clean:
	rm httpd client
