#!/bin/sh
sudo mount "$1"1 mnt &&\
sudo cp /home/dean/sunxi-v3s/linux-v3s/out/boot/zImage mnt/ &&\
sudo cp /home/dean/sunxi-v3s/linux-v3s/out/boot/retro-v3s*.dtb mnt/ &&\
#sudo cp boot.scr mnt/ &&\
sync &&\
sudo umount "$1"1 &&\
echo "###write partion 1 ok!"
sudo umount mnt >/dev/null 2>&1
echo ""
