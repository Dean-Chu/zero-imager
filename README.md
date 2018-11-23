# zero-imager: Scripts to flash v3s bootable SD/TF

Usage:

sudo ./write_all.sh /dev/sdx brpy/minX/xxx

brpy/minX/xxx is the name of rootfs, put them in ../rootfs_build

And name them like "rootfs-xxx-tar.gz"

Scripts can be used sepratedly like:

sudo ./write_p2.sh /dev/sdx brpy

sudo ./clear_partion.sh /dev/sdx
