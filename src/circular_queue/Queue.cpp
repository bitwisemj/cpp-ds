#include "headers/Queue.hpp"
#include <iostream>
Queue::Queue(int length) :
length(length),
front(-1),
rear(-1)
{
    elements = new int[length];
}

Queue::~Queue() {
    delete elements;
}

void Queue::enqueue(int element) {

    if (is_full()) {
        throw "Queue is full";
    }

    front = std::max(0, front);
    rear = (rear + 1) % length;
    elements[rear] = element;
}

int Queue::dequeue() {

    if (is_empty()) {
        throw "Queue is empty";
    }

    if (front == rear) {
        front = -1;
        rear = -1;
    }

    front = (front + 1) % length;
    int element = elements[front];
    elements[front] = 0;
    
    return element;
}

bool Queue::is_full() {
    return (front - rear == 1) ||
            (rear - front) == length;
}

bool Queue::is_empty() {
    return front == -1;
}

int Queue::peek() {

    int index = length - 1;
    return elements[index];
}