#!/bin/sh
sudo mount "$1"2 mnt &&\
#sudo cp -R game/* mnt/usr/games/
#sudo chmod 777 -R mnt/usr/games
sudo rm -rf mnt/* &&\
sudo tar xzvf ../rootfs_build/rootfs-$2\.tar.gz -C mnt/ &&\
sudo cp -r /home/dean/sunxi-v3s/linux-v3s-4.14/out/rootfs/lib mnt/ &&\
sudo umount "$1"2 &&\
./write_overlay.sh $1 $2 &&\
./write_swap.sh $1 &&\
sync &&\
echo "###write partion 2 ok!"
sudo umount mnt >/dev/null 2>&1

