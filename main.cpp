#include <iostream>
#include "src/include.h"


int main() {
    const int SIZE = 10;
    int data[SIZE];

    cudaFunction(data);

    std::cout << "Result: ";
    for (int i = 0; i < SIZE; i++) {
        std::cout << data[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}