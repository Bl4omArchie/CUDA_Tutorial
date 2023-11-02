#include <iostream>
#include <cuda_runtime.h>


/*
effectue une addition d'éléments dans deux tableaux et stocke le résultat dans un troisième tableau
*/



const int N = 10;  // Nombre d'éléments dans les tableaux

// Kernel CUDA pour effectuer l'addition de deux tableaux
__global__ void addArrays(const int* a, const int* b, int* result) {
    int i = threadIdx.x;
    if (i < N) {
        result[i] = a[i] + b[i];
    }
}

int main() {
    int a[N], b[N], result[N];  // Tableaux sur l'hôte
    int *d_a, *d_b, *d_result;  // Tableaux sur le GPU

    // Remplir les tableaux a et b sur l'hôte
    for (int i = 0; i < N; ++i) {
        a[i] = i;
        b[i] = i * 2;
    }

    // Allouer de la mémoire sur le GPU
    cudaMalloc((void**)&d_a, N * sizeof(int));
    cudaMalloc((void**)&d_b, N * sizeof(int));
    cudaMalloc((void**)&d_result, N * sizeof(int));

    // Copier les données depuis l'hôte vers le GPU
    cudaMemcpy(d_a, a, N * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, N * sizeof(int), cudaMemcpyHostToDevice);

    // Appeler le kernel CUDA pour effectuer l'addition
    addArrays<<<1, N>>>(d_a, d_b, d_result);

    // Copier le résultat depuis le GPU vers l'hôte
    cudaMemcpy(result, d_result, N * sizeof(int), cudaMemcpyDeviceToHost);

    // Afficher le résultat
    for (int i = 0; i < N; ++i) {
        std::cout << result[i] << " ";
    }
    std::cout << std::endl;

    // Libérer la mémoire sur le GPU
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_result);

    return 0;
}
