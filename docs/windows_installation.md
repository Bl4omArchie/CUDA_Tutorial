# Windows Installation

## Check Prerequisites

Before installing CUDA on Windows, make sure your system meets the following minimum requirements:
```
- An NVIDIA GPU compatible with CUDA.
- A Windows 7 or higher operating system.
- A supported version of Linux with a gcc compiler and toolchain
- A development environment like Visual Studio
```

For further details, check the official page: https://docs.nvidia.com/cuda/cuda-installation-guide-microsoft-windows/


## Download Required Tools

- Download and install the latest NVIDIA driver compatible with your GPU from the official NVIDIA website (https://www.nvidia.com/Download/index.aspx).

- Then, you must install Visual Studio (and not visual studio code). <br/>
    - Go to this page: [Visual Studio](https://visualstudio.microsoft.com/fr/) and select the communauty version (free). <br/>
    - When the .exe will be download, click on it.
    - A page will appears and you must select **"Linux C/C++ developpement"**. It is necessary to make CUDA compilation work. <br/>

As CUDA toolkit need supported version of Linux with a gcc compiler, Visual Studio is necessary for developping CUDA code with Windows.


## Download CUDA Toolkit

Go to the CUDA Toolkit download page: https://developer.nvidia.com/cuda-downloads.

Select your operating system (Windows), architecture (x86_64 for most modern systems), and Visual Studio version (if installed). Click "Search" to see the available download options.

Download the appropriate CUDA Toolkit installation file.

## Install CUDA Toolkit

Run the downloaded CUDA Toolkit installation file.

Follow the on-screen instructions of the installation wizard. You can typically choose the default options unless you have specific requirements.

When the installation is complete, make sure to check the "Add CUDA to the system PATH environment variable" option so that CUDA is accessible from the command line. <br/>

## Verify Installation

To verify that CUDA is correctly installed, open a command prompt (cmd) and type the following command:
```
nvcc --version
```

This should display the version of nvcc, the CUDA compiler.

## Install cuDNN (Optional)

If you plan to develop deep learning applications, it's recommended to install cuDNN, an optimization library for neural networks. Download cuDNN from the NVIDIA website (https://developer.nvidia.com/cudnn) and follow the installation instructions.

That's it! You have now successfully installed CUDA on Windows. You can start developing and running applications that leverage CUDA for parallel computing acceleration.