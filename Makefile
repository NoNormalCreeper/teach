CXX = g++

CXX_SRCS = $(wildcard *.cpp)

CXX_OBJS = $(CXX_SRCS:.cpp=.o)

%.o: %.cpp 
	$(CXX) -c -o $@ $<

main: $(CXX_OBJS)
	$(CXX) -o $@ $^

run: main a.txt
	./main
