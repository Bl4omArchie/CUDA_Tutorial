# Linux installation


## Check Prerequisites

Before installing CUDA on Linux, make sure your system meets the following minimum requirements:
```
- An NVIDIA GPU compatible with CUDA.
- A Linux distribution (such as Ubuntu, CentOS, or Fedora).
- A GCC compiler (usually pre-installed).
```

For futher information, check the official page: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/

## Automatic installation
For the installation you can do it by yourself or enjoy the script I've made so you can install everything automatically, the file is called linuxInstaller.sh. <br/>
First, give it the execution right with 
```
chmod +x linuxInstaller.sh
``` 
Then execute the script and CUDA toolkit will be installed: 
```
./LinuxInstaller
```

## Manual installation

### Download Required Tools

Download and install the latest NVIDIA driver compatible with your GPU. You can download it [here](https://www.nvidia.com/Download/index.aspx)

Ensure you have the build-essential package or equivalent for your distribution, which includes essential development tools like GCC and Make.

### Download CUDA Toolkit

 Go to the CUDA Toolkit download page: https://developer.nvidia.com/cuda-downloads.

Select your operating system (Linux), architecture (x86_64 for most modern systems), and distribution. Click "Search" to see the available download options.

Download the appropriate CUDA Toolkit runfile installer.

### Install CUDA Toolkit

 Open a terminal and navigate to the directory where you downloaded the CUDA Toolkit runfile installer.

 Make the installer executable by running the following command:
```bash
chmod +x file.run
```

Run the installer with superuser privileges:
```bash
sudo ./file.run
```

Follow the on-screen instructions. You can typically choose the default options, but make sure to install the NVIDIA driver included with the CUDA Toolkit.

When the installation is complete, you can add CUDA to your system's PATH by adding the following lines to your shell configuration file (e.g., ~/.bashrc for the Bash shell):
``` bash
export PATH=/usr/local/cuda-<version>/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-<version>/lib64:$LD_LIBRARY_PATH
```

Be sure to replace <version> with the version of CUDA you installed.

To apply the changes, run:
```bash
source ~/.bashrc
```


### Verify Installation

To verify that CUDA is correctly installed, open a terminal and type the following commands:
```bash
nvcc --version
```
This should display the version of nvcc, the CUDA compiler.

## Install cuDNN (Optional)

If you plan to develop deep learning applications, it's recommended to install cuDNN, an optimization library for neural networks. You can download cuDNN from the NVIDIA website (https://developer.nvidia.com/cudnn) and follow the installation instructions.

That's it! You have now successfully installed CUDA on a Linux system. You can start developing and running applications that leverage CUDA for parallel computing acceleration.