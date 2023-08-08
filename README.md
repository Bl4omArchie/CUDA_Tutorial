# CUDA Tutorial

Welcome to this tutorial. I will guid your from the installation of CUDA Toolkit to some coding samples and implementation.

Brievely:
- **What is CUDA ?**

CUDA is a parallel computing platform and programming model invented by NVIDIA. It enables increases in computing performance by using the power of the graphics processing unit. 
You can code with a specific language called CUDA (.cu) and improve your program in C/C++, python or Java.

- **What is CUDA Toolkit ?**

CUDA Toolkit is simply the environnement that allows you to perform everything we said above.
The first part of the tutorial will explains you how to setup everything.

- **How can I use CUDA ?**

You can use it for **AI and Data Science**, **High Performance Computing**, **Design and Simulation**, **Data Center and Cloud Computing** and many more.
There is the NGC catalog where you can find a very large collection of  software developped by Nvidia: [click here](https://catalog.ngc.nvidia.com/collections)


## Installation of CUDA Toolkit

### Prerequisite
Before you get into it, you obviously need a Graphical Card. If you don't have one anything from this tutorial will be useful for you. <br/>
But even if you have, you must verify that your Graphical Card is CUDA-capable.
In order to check this, find your Graphical Card model on this website: https://developer.nvidia.com/cuda-gpus

If you are now sur that your Graphical Card is CUDA capable, let's begin !


### Installation on Windows and Linux

This is the main portal to download CUDA Toolkit: https://developer.nvidia.com/cuda-downloads

From here it is simple, follow every steps and you will install the Toolkit easily.
At the last steps: **Installer Type**, you can chose several thing:
- deb local
- deb network
- runfile local

The first and third one are a large file where every components will be downloaded once and do not require a high-bandwidth internet. The second one is even more faster to download but your need to reload componetents each time your going to use the Toolkit.

What I'm suggesting you is to take the third option, because you only need two commands and everything is installed once.

exemple: ![install](pic/CudaInstaller.png)

### Automatic installation on Linux
If you are on Linux, enjoy the script I've made so you can install everything automatically, the file is called linuxInstaller.sh. Install it, give it the execution right with ```chmod +x linuxInstaller.sh``` and everything will setup fine.

### Installation doesn't work

There are different cases that make the installation failed:
- **Your Graphic Card isn't recognized by your system**: You have a graphic card but it said you are not CUDA-capable. To fix that you need to install the correct driver here: https://www.nvidia.com/en-us/geforce/drivers/
- **Your in a virtual machine**: I personnaly tryied to installed CUDA toolkit on VMware and my CG wasn't recognized. To fix that you need to add the PCI option in the settings of your virtual machine.
- **Cannot find compiler 'cl.exe' in PATH**: if you are on Windows, this error can occure. In this case find cl.exe and put it in your PATH. 

My personnal choice is to use WSL 2 on Windows, it was the only place where my GC was recognize by the system and where I got no error at the compilation...
However, if you have a regular installation of Linux, and not with a virtual machine, it should work normally.


## CUDA programmation

As I said in the introduction, you can code with your GPU in severals languages.
CUDA GPU programming is integrated in many framework (ie: tensorflow, numba...) so you can chose your favourite language.
In the following sections, we will code in C/C++ and python. I will also show you the python framework Numba. 



### Hello world in CUDA (C/C++)

In order to code in a low level language like C++, you need a specefic compilator called **nvcc** which is already installed in the CUDA toolkit.

In the **src** folder, you have two codes samples: **hello.cu** and **mult.cu**.
The first file is a hello world program and the second one a simple multiplication function.


Let's compile the mult.cu file:
```
nvcc src/mult.cu -o mult.o
```

You now have an executable file: **mult.o**. Then, execute the binary: 
```
./mult.o
```
You have executed your first program with your GPU !



## Areas where you can develop your CUDA skills

- [Artificial Intelligence & Deep Learning](https://developer.nvidia.com/deep-learning)
- [Autonomous Machines](https://developer.nvidia.com/embedded-computing)
- [Graphics & Simulation](https://developer.nvidia.com/graphics-research-tools)
- [High Performance Computing](https://developer.nvidia.com/language-solutions)
- [Autonomous Vehicles](https://developer.nvidia.com/drive)
- [Tools and Management](https://developer.nvidia.com/tools-overview)

There is the page where you can find all the details: [click here](https://developer.nvidia.com/solutions-and-industries)



## Nvidia learning

Nvidia offer many possibilities to learn and train GPU computing skills at a personnal, profesionnal and enterprise scale.
There is a list with all type of formation available:

- [Online course (free and $)](https://www.nvidia.com/en-us/training/online/)
- [Enterprise solutions (contact only)](https://www.nvidia.com/en-us/training/enterprise-solutions/)
- [Workshop (contact only)](https://www.nvidia.com/en-us/training/instructor-led-workshops/)
- [Learning path](https://nvdam.widen.net/s/brxsxxtskb/dli-learning-journey-2009000-r5-web): Slide that gives a overwiew of the field



## Other ressources about CUDA 

- CUDA toolkit installation: https://docs.nvidia.com/cuda/cuda-quick-start-guide/contents.html

- CUDA C++ Programming Guide: https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#

- CUDA python tutorial: https://www.vincent-lunot.com/post/an-introduction-to-cuda-in-python-part-1/