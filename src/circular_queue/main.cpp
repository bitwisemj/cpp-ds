#include <iostream>
#include "headers/Queue.hpp"

int main() {

    Queue queue(5);

    for (int index = 10; index <= 50; index += 10) {
        queue.enqueue(index);
    }

    for (int index = 0; index < 3; index++) {
        int element = queue.dequeue();
        std::cout << "Element removed: "<< element << std::endl;
    }

    queue.enqueue(60);
    queue.enqueue(70);
    queue.enqueue(80);
 

    return 0;
}