#!/bin/bash
#install dependencies
sudo apt-get update
sudo apt install msr-tools
sudo modprobe msr
#build the kernel module
make
#insert the module
sudo insmod user_rdpmc.ko
