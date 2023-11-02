#include <stdio.h>

__global__ void mul(int *x, int *y, int *z) {
    *z = (*x) * (*y);
}

int main(void) {
    int x, y, z;
    x = 3981;
    y = 713;

    int *g_x, *g_y, *g_z;
    int size = sizeof(int);

    //Allocation and transfert to the GPU
    cudaMalloc((void **) &g_x, size);
    cudaMalloc((void **) &g_y, size);
    cudaMalloc((void **) &g_z, size);

    cudaMemcpy(g_x, &x, size, cudaMemcpyHostToDevice);
    cudaMemcpy(g_y, &y, size, cudaMemcpyHostToDevice);


    mul<<<1,1>>>(g_x, g_y, g_z);
    cudaMemcpy(&z, g_z, size, cudaMemcpyDeviceToHost);
    printf ("%d * %d = %d\n", x, y, z);

    //Clean up
    cudaFree(g_x);
    cudaFree(g_y);
    cudaFree(g_z);
    return 0;
}