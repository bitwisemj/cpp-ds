#include "headers/Queue.hpp"

Queue::Queue(int length) :
length(length),
front(0),
rear(0)
{
    elements = new int [length];
}

Queue::~Queue() {
    delete elements;
}

void Queue::enqueue(int element) {

    if (is_full()) {
        throw "Queue is full";
    }

    elements[rear % length] = element;
    rear += 1;
}

int Queue::dequeue() {

    if (is_empty()) {
        throw "Queue is empty";
    }
    int index = front % length;
    int element = elements[index];
    elements[index] = 0;
    front += 1;
    return element;
}

bool Queue::is_empty() {
    return front == rear;
}

bool Queue::is_full() {

    return (rear - front) == length;
}

int Queue::peek() {
    return elements[front];
}