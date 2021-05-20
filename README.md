The user_rdpmc Linux Kernel Module - Modified by Brad Morgan
==================================

A simple Linux kernel module which, when loaded, allows ring 3 (userspace)
programs to use the `RDPMC` assembler instruction by flipping the `PMC` flag in
the `CR4` register.

This module only makes sense on an x86 machine.

Building
--------

Run `./build.sh`. This will install dependencies and build the kernel module and a test program.

Using
-----

You can either use `install.sh` or the `sudo insmod user_rdpmc.ko && sudo modprobe msr` command to insert the kernel module into your current OS session.

However, when you restart, it will be removed, this is not a permanent switch for security reasons. If you want that, you will need to do that yourself.
