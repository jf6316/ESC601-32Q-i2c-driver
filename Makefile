BASENAME := common
ARCH := x86_64
#include /home/user/OpenNetworkLinux/make/kmodule.mk

PWD	:= $(shell pwd) 
KVERSION	:= $(shell uname -r)
KERNEL_DIR	=  /home/user/1101-onl-gpio/packages/base/amd64/kernels/kernel-4.9-lts-x86-64-all/builds/jessie/linux-4.9.75

obj-m	+= x86-64-cameo-esc601-32q.o

all:
	make -C $(KERNEL_DIR) M=$(PWD) clean
	make -C $(KERNEL_DIR) M=$(PWD) modules
clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean
