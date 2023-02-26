#include <iostream>
#include "headers/Queue.hpp"

int main() {

	Queue queue(5);	
	
	for (int index = 10; index <= 50; index += 10) {
		queue.enqueue(index);
	}

	for (int index = 0; index < 5; index++) {
		int element = queue.dequeue();
	}

	queue.enqueue(60);
	queue.enqueue(70);
	queue.enqueue(80);
	queue.dequeue();
	queue.enqueue(90);
	queue.enqueue(100);
	queue.enqueue(110);

	std::cout << "Queue is empty: "<< queue.is_empty() << std::endl;
	std::cout << "Queue is full: "<< queue.is_full() << std::endl;
	return 0;
}