# My study of Docker

- <small><i>Table of contents</i></small>
    + [Image](#image)
    + [Rootfs](#rootfs)
    + [Containers](#containers)

## Image
Docker images are the basis of containers. An Image is an ordered collection of root filesystem (ROOTFS) changes and the corresponding execution parameters for use within a container runtime. 
An image typically contains a union of layered filesystems stacked on top of each other. An image does not have state and it never changes.

## Rootfs
It's an initramfs. Basically, it's a prepopulated RAM drive. It's prepopulated with some content at boot time, usually from a cpio archive which has been compiled into the kernel.

Source: https://android.stackexchange.com/questions/130348/what-is-rootfs-can-i-make-persistent-changes-to-my-devices-root-filesystem

## Containers
A container is a runtime instance of a docker image.

A Docker container consists of:
* A Docker image
* An execution environment
* A standard set of instructions

The concept is borrowed from Shipping Containers, which define a standard to ship goods globally. Docker defines a standard to ship software.

## Resource:
* https://docs.docker.com/glossary/#image
