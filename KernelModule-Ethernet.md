# Fixing my slow ethernet connection initilization

## Middleware level
* Step0: Understand what kernel modules are: lsmod
* Step1: Identifying the kernel module responsible. sudo lshw -C network  (for me it in configurations feild--> e1000e)
1. For every network interface you'll get a section starting with *-network. Every section hast a logical name: line that contains the interface name and a configuration: line that contain the driver and some other information.
2. Source: https://askubuntu.com/questions/216110/how-do-i-find-what-kernel-module-is-behind-a-network-interface
* unload and load modules (could not figure out how to reload modules without risk) ==>
1. rmmod e10001 (unload)
2. Check that OS identifies a driver that can be used as a module
3. modprobe e1000e (load the initially unloaded kernel module)
* Source: https://www.tecmint.com/load-and-unload-kernel-modules-in-linux/ and https://opensource.com/article/18/5/how-load-or-unload-linux-kernel-module



## OS level
* sudo iptables -F
* Source: https://askubuntu.com/questions/491729/how-to-completely-reset-ubuntu-networking-settings
* new dhcp lease (that's the technical name for obtain a new IP from the router), you just need to use: sudo dhclient -v eth1 (used lshw -C to identify logical name)
* Source: https://askubuntu.com/questions/54710/how-do-i-reset-the-network-adapter-using-a-terminal-command

## Also...
Disable MS Teams auto-startup.# rmmod uvcvideo
# modprobe uvcvideo
