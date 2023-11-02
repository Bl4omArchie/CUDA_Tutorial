#!/bin/bash

#This script install automatically CUDA Toolkit on Linux. Your machine must detect first your Graphical Card so the installation can work.
#Your Graphical Card must be CUDA-capable: https://developer.nvidia.com/cuda-gpus

#NOTE: if you are using a Virtual Machine, verify first is your setting that your Graphical Card is detected

CUDA_VERSION="12.3.0"

sudo apt update
sudo apt upgrade -y

# Verify that the computer is CUDA-capable
if lspci | grep -i nvidia > /dev/null; then
  echo "Your computer is CUDA-capable"
else
  echo "Error: Your computer is not CUDA-capable or your driver isn't installed "
  exit 1
fi

# Download the CUDA toolkit installer with a local installation (longer but one time installation)
wget https://developer.download.nvidia.com/compute/cuda/${CUDA_VERSION}/local_installers/cuda_${CUDA_VERSION}_545.23.06_linux.run
chmod +x cuda_${CUDA_VERSION}_545.23.06_linux.run
sudo sh cuda_${CUDA_VERSION}_545.23.06_linux.run


sudo apt-get update

# Verify that the CUDA toolkit was installed correctly
if [ -d "/usr/local/cuda-$CUDA_VERSION" ]; then
  echo "CUDA toolkit installed successfully"
else
  echo "Error: CUDA toolkit installation failed"
  exit 1
fi


# Set the environment variables required by the CUDA toolkit
echo 'export PATH=/usr/local/cuda-$CUDA_VERSION/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-$CUDA_VERSION/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc


# Clean up downloaded files
rm cuda-repo-ubuntu2004_${CUDA_VERSION}_amd64.deb


echo "CUDA $CUDA_VERSION has been successfully installed."