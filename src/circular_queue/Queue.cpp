#include "headers/Queue.hpp"

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

    if (is_empty())  {
        throw "Queue is empty";
    }

    int element = elements[front];
    int front_index = (front + 1) % length;

    if (front == rear) {
        front_index = -1;
        rear = -1;
    }
    
    front = front_index;
    
    return element;
}

bool Queue::is_full() {

    return (front == 0 && rear == length -  1) ||
            (front == rear + 1);
}

bool Queue::is_empty() {
    return front == -1;
}

int Queue::peek() {
    return elements[front];
}