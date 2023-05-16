#include <stdio.h>

__global__ void ckernel() {}

int main(void) {
    ckernel<<<1,1>>>();
    printf ("Hello World with CUDA\n");
    return 0;
}