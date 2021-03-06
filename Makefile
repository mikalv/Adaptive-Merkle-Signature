CC=/usr/local/Cellar/gcc47/4.7.2/bin/g++-4.7
CFLAGS=-g3 -ggdb -O0 -Wall -Wextra -Wno-unused -std=c++11
LDFLAGS=-L/cryptopp/ -lcryptopp
SOURCES= data.cpp winternitz.cpp merkle.cpp adaptiveMerkle.cpp driver.cc
OBJECTS=$(SOURCES:.cpp=.cpp)
EXECUTABLE=driver

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJECTS) -o $@

.cc.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *o main test rsaTest adaptiveTest
