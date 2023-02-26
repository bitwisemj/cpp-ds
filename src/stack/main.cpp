#include <iostream>
#include "headers/Stack.hpp"

int main() {
	
	Stack stack(10);
	
	for (int index = 10; index <= 100; index+=10) {
		stack.push(index);
	}
	
	for (int index = 0; index < 3; index++) {
		int element = stack.pop();
		std::cout << "Element removed: "<< element << std::endl;
	}
	
	stack.push(80);
	stack.push(90);
	stack.push(100);
	
	std::cout << "Is empty: "<< stack.is_empty() << std::endl;
	std::cout << "Is full: "<< stack.is_full() << std::endl;
	std::cout << "Top: "<< stack.get_top() << std::endl;
	
	return 0;
}