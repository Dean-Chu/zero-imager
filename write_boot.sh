#!/bin/sh
sudo dd if=/dev/zero of=$1 bs=1024 seek=8 count=512 &&\
sudo dd if=/home/dean/sunxi-v3s/uboot-v3s/u-boot-sunxi-with-spl.bin of=$1 bs=1024 seek=8 &&\
sync
