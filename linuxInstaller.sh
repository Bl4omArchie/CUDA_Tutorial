#!/bin/bash

#This script install automatically CUDA Toolkit on Linux. Your machine must detect first your Graphical Card so the installation can work.
#Your Graphical Card must be CUDA-capable: https://developer.nvidia.com/cuda-gpus

#NOTE: if you are using a Virtual Machine, verify first is your setting that your Graphical Card is detected


sudo apt update
sudo apt upgrade -y

# Download the CUDA toolkit installer with a local installation (longer but one time installation)
wget https://developer.download.nvidia.com/compute/cuda/12.1.1/local_installers/cuda_12.1.1_530.30.02_linux.run
chmod +x cuda_12.1.1_530.30.02_linux.run
sudo ./cuda_12.1.1_530.30.02_linux.run --silent --toolkit --override

sudo apt-get update

# Verify that the CUDA toolkit was installed correctly
if [ -d "/usr/local/cuda-11.4" ]; then
  echo "CUDA toolkit installed successfully"
else
  echo "Error: CUDA toolkit installation failed"
  exit 1
fi

# Verify that the computer is CUDA-capable
if lspci | grep -i nvidia > /dev/null; then
  echo "Your computer is CUDA-capable"
else
  echo "Error: Your computer is not CUDA-capable or your driver isn't installed "
  exit 1
fi


# Set the environment variables required by the CUDA toolkit
echo 'export PATH=/usr/local/cuda-11.4/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc

echo "CUDA installation and verification complete"