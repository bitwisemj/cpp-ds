#pragma once
#include <algorithm>

class Queue {

    private:
        int* elements;
        int length;
        int front;
        int rear;
    public:
        Queue(int length);
        ~Queue();
        void enqueue(int element);
        int dequeue();
        bool is_empty();
        bool is_full();
        int peek();
};