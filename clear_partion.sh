#!/bin/sh
sudo fdisk $1 <<EOF
d
1
d
2
d
3
d
4
w
p
q
EOF

sync
