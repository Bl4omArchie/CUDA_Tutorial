#!/bin/bash

#Verify that your GPU is CUDA-capable
data=lspci | grep -i nvidia

if [$data == ""]; then
    update-pciids
fi


#Verify your linux operating system
if [uname -m != "x86_64"]; then
    echo "Your operating system isn't supported"
fi


