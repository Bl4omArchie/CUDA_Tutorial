#include "include.h"

__global__ void cudaFunction(int* data) {
    int tid = threadIdx.x;
    data[tid] = tid;
}