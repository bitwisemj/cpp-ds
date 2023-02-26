#include "Stack.hpp"

Stack::Stack(int length) :
top(0), 
length(length)
{
	elements = new int[length];
}

Stack::~Stack() {
	delete elements;
}

void Stack::push(int element) {
	
	if (is_full()) {
		throw "Stack is full";
	}

	elements[top] = element;
	top += 1;
}

int Stack::pop() {
	
	if (is_empty()) {
		throw "Stack is empty";
	}
	int index = top - 1;
	int element = elements[index];
	elements[top] = 0;
	top -= 1;
	return element;
}

bool Stack::is_empty() {
	return top == 0;
}

bool Stack::is_full() {
	return top == length;
}

int Stack::peek() {
	return elements[top];
}

int Stack::get_top() {
	return top;
}

