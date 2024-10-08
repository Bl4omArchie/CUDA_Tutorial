# CUDA Tutorial

## Introduction

Welcome to this tutorial. I will guid your from the installation of CUDA Toolkit to some coding samples and implementation.

Brievely:
- **What is CUDA ?**

CUDA is a parallel computing platform and programming model invented by NVIDIA. It enables increases in computing performance by using the power of the graphics processing unit. 
You can code with a specific language called CUDA (.cu) and improve your program in C/C++ or python.

- **What is CUDA Toolkit ?**

CUDA Toolkit provides an environnement that allows you to compile CUDA code

- **What is CUDA for ?**

You can use it for **AI and Data Science**, **High Performance Computing**, **Design and Simulation**, **Data Center and Cloud Computing** and many more.
There is the NGC catalog where you can find a very large collection of  software developped by Nvidia: [click here](https://catalog.ngc.nvidia.com/collections)



## Installation of CUDA Toolkit

You can install CUDA on Windows and Linux but my suggestion is to install the linux version and this why:
- Linux installation is faster, take less space on your hard drive and code performance are always better with linux.
- Developping CUDA code with Linux is more convenient: you can chose your IDLE, create project more faster and don't have tons of depencies like Visual Studio.

**Special mention for WSL**: I didn't succeed to install CUDA Toolkit on WSL. I'm struggling with my CG detection and it make the installation impossible. If you have a solution I will be pleased to know about it. 

You can find the tutorials in the **docs/** folder.

## Let's code

### Compilation
The CUDA toolkit allows you to compile CUDA code. The file extension look like this: **.cu** and the syntax is pretty much like C++ language. You can find some examples in the **src** folder.
Within the toolkit, a compiler has been installed: **nvcc**. Let's try it !

We're going to compile the mult.cu file:
```
nvcc src/mult.cu -o mult.o
```

You now have an executable file: **mult.o** and you can execute it: 
```
./mult.o
```

## Deep learning softwares and pre-trained models

[More software for DL](https://developer.nvidia.com/deep-learning-software)

[NGC Catalog](https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=&page=&pageSize=)


# Ressources

- CUDA toolkit installation: https://docs.nvidia.com/cuda/cuda-quick-start-guide/contents.html

- CUDA C++ Programming Guide: https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#

- CUDA python tutorial: https://www.vincent-lunot.com/post/an-introduction-to-cuda-in-python-part-1/
