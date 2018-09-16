#!/bin/sh
sudo mkfs.vfat "$1"1 &&\
sudo mkfs.ext2 "$1"2 

