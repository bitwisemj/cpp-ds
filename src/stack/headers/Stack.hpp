#pragma once

class Stack
{
private:
	int* elements;
	int top;
	int length;
public:
	Stack(int length);
	~Stack();
	void push(int element);
	int pop();
	bool is_empty();
	bool is_full();
	int peek();
	int get_top();

};

