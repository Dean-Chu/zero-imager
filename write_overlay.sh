#!/bin/sh
sudo mount "$1"2 mnt &&\
cp -r overlay_rootfs-base/* mnt/  &&\
cp -r overlay_rootfs-$2/* mnt/  &&\
sudo umount "$1"2 &&\
sync &&\
echo "###write overlay rootfs ok!"
sudo umount mnt >/dev/null 2>&1
echo ""


