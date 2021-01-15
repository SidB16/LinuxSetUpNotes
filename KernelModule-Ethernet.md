# Fixing my slow ethernet connection initilization

## Middleware level
* Step0: Understand what kernel modules are: lsmod
* Step1: Identifying the kernel module responsible. sudo lshw -C network 
1. For every network interface you'll get a section starting with *-network. Every section hast a logical name: line that contains the interface name and a configuration: line that contain the driver and some other information.
2. Source: https://askubuntu.com/questions/216110/how-do-i-find-what-kernel-module-is-behind-a-network-interface
* unload and load modules (could not figure out how to reload modules without risk) 
* Source: https://www.tecmint.com/load-and-unload-kernel-modules-in-linux/

## OS level
* sudo iptables -F
* Source: https://askubuntu.com/questions/54710/how-do-i-reset-the-network-adapter-using-a-terminal-command

## Also...
Disable MS Teams auto-startup.
