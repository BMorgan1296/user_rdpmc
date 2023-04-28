#insert the module
sudo modprobe msr
sudo insmod user_rdpmc.ko

#Enable rdpmc in kernel according to:
#https://github.com/HewlettPackard/quartz/blob/master/README.md
echo 2 | sudo tee /sys/devices/cpu/rdpmc 2> /dev/null
