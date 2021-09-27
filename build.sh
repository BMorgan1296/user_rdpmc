#!/bin/bash
#install dependencies
sudo apt-get update
sudo apt install msr-tools -y
sudo modprobe msr
#build the kernel module
make clean
make
