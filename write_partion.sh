#!/bin/sh
sudo fdisk $1 <<EOF
n
p
1

+8M

n
p
2


p
w
q
EOF


