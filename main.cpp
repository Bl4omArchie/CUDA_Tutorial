// main.cpp

#include <iostream>
#include "src/include.h"

int main()
{
    const int size = 10;
    int data[size] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    // Invoke the CUDA kernel function
    encrypt_Kernel(data, size);

    // Print the modified data
    std::cout << "Modified Data: ";
    for (int i = 0; i < size; i++)
    {
        std::cout << data[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
