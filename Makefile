all : netfilter_block

netfilter_block: main.o
	g++ -g -o netfilter_block main.o -lnetfilter_queue

main.o: main.cpp
	g++ -g -c -o main.o main.cpp -lnetfilter_queue

clean:
	rm -f netfilter_block
	rm -f *.o
