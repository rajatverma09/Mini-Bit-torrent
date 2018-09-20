CC = g++
CFLAGS = -Wall -std=c++14 
FLAGS = -lssl -lcrypto
DEPS = header.h clientglobal.h
OBJ = mTorrentGenerator.o clientglobal.o share.o remove.o get.o utilities.o hash_utilities.o sock.o client.o

%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

client: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(FLAGS)

clean:
	rm -f *o
