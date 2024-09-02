#!/bin/bash

#This script install automatically CUDA Toolkit on Linux or on WSL. Your machine must detect first your Graphical Card so the installation can work.
#Your Graphical Card must be CUDA-capable: https://developer.nvidia.com/cuda-gpus

#NOTE: if you are using a Virtual Machine, verify first is your setting that your Graphical Card is detected


# TODO: package manager option + CUDA version automatic update + verify the installation on WSL + already downloaded feature


CUDA_VERSION="12.6.1"
TAG="560.35.03"


is_cuda_capable() {
  if lspci | grep -i nvidia > /dev/null; then
    echo "Your computer is CUDA-capable"
  else
    echo "Error: Your computer is not CUDA-capable or your driver isn't installed. See the following link for your driver installation: https://www.nvidia.com/fr-fr/drivers/ "
    exit 1
  fi
}

install_cuda() {
  # Download the CUDA toolkit installer with a local installation (longer but more complete)
  wget https://developer.download.nvidia.com/compute/cuda/${CUDA_VERSION}/local_installers/cuda_${CUDA_VERSION}_${TAG}_linux.run
  chmod +x cuda_${CUDA_VERSION}_${TAG}_linux.run
  sudo sh cuda_${CUDA_VERSION}_${TAG}_linux.run

  sudo apt-get update

  # Verify that the CUDA toolkit was installed correctly
  if [ -d "/usr/local/cuda-$CUDA_VERSION" ]; then
    echo "CUDA toolkit installed successfully"
  else
    echo "Error: CUDA toolkit installation failed"
    exit 1
  fi

  # Set the environment variables required by the CUDA toolkit
  echo 'export PATH=/usr/local/cuda-12.6/bin${PATH:+:${PATH}}' >> ~/.bashrc
  echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
  source ~/.bashrc

  # Clean up downloaded files
  rm cuda-repo-ubuntu2004_${CUDA_VERSION}_amd64.deb

  echo "CUDA $CUDA_VERSION has been successfully installed."
}

test_cuda_installation() {
  cuda-install-samples-12.6.sh ~/
  cd ~/NVIDIA_CUDA-12.6_Samples/1_Utilities/deviceQuery
  make
  ./deviceQuery
}


main() {
  sudo apt update
  sudo apt upgrade -y

  #is_cuda_capable
  install_cuda
  test_cuda_installation
}

main